# elabGrindParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a625072ba87f33e761c34048e9341b37da6ae8f351448f532fdc14fd900a577f",
  "kind": "def",
  "lexical_name": "elabGrindParams",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "elabgrindparams--8e89ec270498aa842dbde36f",
  "source": {
    "blob": "4618670a37414c3eb7ee989af27ea86acd16030d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e89ec270498aa842dbde36f56a9e00bbee13e6ed1f771643b323f5ed1a96540",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a625072ba87f33e761c34048e9341b37da6ae8f351448f532fdc14fd900a577f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def elabGrindParams (params : Grind.Params) (ps : TSyntaxArray ``Parser.Tactic.grindParam)
    (only : Bool) (lax : Bool := false) (incremental := false) : TermElabM Grind.Params := do
  let mut params := params
  for p in ps do
    try
      match p with
      | `(Parser.Tactic.grindParam| - $id:ident) =>
        if incremental then
          throwErrorAt p "invalid `-` occurrence, it can only used at the `grind` tactic entry point"
        let declName ← realizeGlobalConstNoOverloadWithInfo id
        Term.checkDeprecatedCore declName
        if let some declName ← Grind.isCasesAttrCandidate? declName false then
          Grind.ensureNotBuiltinCases declName
          params ← params.eraseCasesTypes declName
        else if params.isInjectiveTheorem declName then
          params := params.eraseInj declName
        else
          params ← params.eraseEMatch declName
      | `(Parser.Tactic.grindParam| $[$mod?:grindMod]? $id:ident) =>
        -- Check if this is dot notation on a local variable (e.g., `n.triv` for `Nat.triv n`).
        -- If so, process as term to let elaboration resolve the dot notation properly.
        if let some (_, _ :: _) := (← resolveLocalName id.getId) then
          params ← processTermParam params p mod? id (minIndexable := false)
        else
          params ← processParam params p mod? id (minIndexable := false) (only := only) (incremental := incremental)
      | `(Parser.Tactic.grindParam| ! $[$mod?:grindMod]? $id:ident) =>
        if let some (_, _ :: _) := (← resolveLocalName id.getId) then
          params ← processTermParam params p mod? id (minIndexable := true)
        else
          params ← processParam params p mod? id (minIndexable := true) (only := only) (incremental := incremental)
      | `(Parser.Tactic.grindParam| $[$mod?:grindMod]? $e:term) =>
        params ← processTermParam params p mod? e (minIndexable := false)
      | `(Parser.Tactic.grindParam| ! $[$mod?:grindMod]? $e:term) =>
        params ← processTermParam params p mod? e (minIndexable := true)
      | `(Parser.Tactic.grindParam| #$anchor:hexnum) =>
        unless only do
          throwErrorAt anchor "invalid anchor, `only` modifier expected"
        params ← processAnchor params anchor
      | _ => throwError "unexpected `grind` parameter{indentD p}"
    catch ex =>
      if !lax then throw ex
  return params

namespace Grind
open Meta Grind

/--
Returns `true` if we should keep the theorem when `only` is used.
We keep
1- Local theorems. We use anchors to restrict their instantiation.
2- `match`-equations. They are always active.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4618670a37414c3eb7ee989af27ea86acd16030d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
