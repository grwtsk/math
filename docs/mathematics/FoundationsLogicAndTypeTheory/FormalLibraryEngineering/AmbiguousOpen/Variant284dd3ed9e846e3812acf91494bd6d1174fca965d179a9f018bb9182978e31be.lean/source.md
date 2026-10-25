# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AmbiguousOpen.Variant284dd3ed9e846e3812acf91494bd6d1174fca965d179a9f018bb9182978e31be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be4468a5e62c43146fbd5b78a1cf45d11acf8bc0` · SHA-256 `f302ce2bd61cb911fee811a3e57172f5aa325f8d521977e519c8b9b151c4092d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopeCandidates.Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ScopeCandidates.Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/AmbiguousOpen.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Lean.ResolveName
public import Lean.Linter.Init


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScopeCandidates.Variant362147a73a8f050eefc937513981b699120b206f04a366d2b660e83c476a428e

public section

namespace Lean.Linter

register_builtin_option linter.ambiguousOpen : Bool := {
  defValue := true
  descr := "if true, warn when the namespace of an `open` declaration could also refer to a \
    namespace that is silently not opened, e.g. `open B` inside `namespace A` only opens `A.B` \
    even if the namespace `B` exists as well"
}

/--
Collects all namespaces `p ++ id` where `p` is a prefix of `ns` (innermost first, ending with the
root namespace). Unlike `ResolveName.resolveNamespaceUsingScope?`, this collects every match
instead of only the innermost one, so that namespaces shadowed by the scope search are found.
-/
private def scopeCandidates (env : Environment) (id : Name) : Name → List Name
  | ns@(.str p _) =>
    let rest := scopeCandidates env id p
    if env.isNamespace (ns ++ id) then (ns ++ id) :: rest else rest
  | _ =>
    let id := id.replacePrefix rootNamespace .anonymous
    if env.isNamespace id then [id] else []

/--
Warns if the namespace identifier `nsStx` of an `open` declaration can also be interpreted as an
existing namespace that the `open` declaration silently does not open. `resolved` must be the
interpretations the `open` declaration actually uses, as returned by `resolveNamespace`.
Shadowed interpretations whose declarations are accessible anyway — because the namespace is
already opened without exceptions or encloses the current scope — are not reported.
-/
def checkAmbiguousOpen [Monad m] [MonadEnv m] [MonadOptions m] [MonadLog m]
    [AddMessageContext m] [MonadResolveName m] (nsStx : Ident) (resolved : List Name) : m Unit := do
  unless getLinterValue linter.ambiguousOpen (← getLinterOptions) do return
  let .ident info _ id preresolved := nsStx.raw | return
  -- Macro-generated `open` declarations cannot be fixed at the use site, so only lint
  -- identifiers written in the original source.
  let .original .. := info | return
  -- Identifiers with preresolved namespaces are not resolved against the environment.
  if preresolved.any fun | .namespace _ => true | _ => false then return
  -- `resolveNamespace` can return duplicates, e.g. when several `open` declarations make the
  -- same namespace visible.
  let resolved := resolved.eraseDups
  let env ← getEnv
  let currNamespace ← getCurrNamespace
  let openDecls ← getOpenDecls
  -- Interpretations via `open` declarations are always contained in `resolved`, so only the
  -- scope search can produce shadowed interpretations.
  let candidates := scopeCandidates env id currNamespace
  -- A namespace opened with `hiding` exceptions is not fully accessible, so it does not count.
  let isAccessible (n : Name) : Bool :=
    n.isPrefixOf currNamespace || openDecls.any fun
      | .simple ns [] => ns == n
      | _ => false
  let shadowed := candidates.filter fun n => !resolved.contains n && !isAccessible n
  if shadowed.isEmpty then return
  let display (n : Name) : MessageData := m!"`{rootNamespace ++ n}`"
  let displayAll (ns : List Name) : MessageData := MessageData.joinSep (ns.map display) ", "
  -- A shadowed interpretation is a non-innermost scope match, so `currNamespace` is nonempty.
  let shadowedNote :=
    if shadowed.length == 1 then m!"{displayAll shadowed} is silently not opened"
    else m!"{displayAll shadowed} are silently not opened"
  let hint :=
    m!" Specify the namespace unambiguously, e.g. `{rootNamespace ++ resolved.head!}`. The \
      warning can sometimes also be addressed by moving the `open` outside of the surrounding \
      `namespace`."
  let msg :=
    match resolved with
    | [r] =>
      m!"Ambiguous namespace `{id}`: it is interpreted as {display r} because this `open` occurs \
        inside `namespace {currNamespace}`, while {shadowedNote}." ++ hint
    | _ =>
      m!"Ambiguous namespace `{id}`: this `open` refers to all of {displayAll resolved}, while \
        {shadowedNote} because the `open` occurs inside `namespace {currNamespace}`." ++ hint
  logLint linter.ambiguousOpen nsStx.raw msg

end Lean.Linter
```
