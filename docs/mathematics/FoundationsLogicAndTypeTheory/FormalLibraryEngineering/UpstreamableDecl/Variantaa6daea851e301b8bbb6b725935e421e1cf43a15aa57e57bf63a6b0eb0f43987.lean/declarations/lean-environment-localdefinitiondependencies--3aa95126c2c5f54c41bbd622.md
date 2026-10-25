# Lean.Environment.localDefinitionDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd5f40c9a724cd7005290e17e5268c8a3faf2fe0122762723427a0f44a966c70",
  "kind": "def",
  "lexical_name": "Lean.Environment.localDefinitionDependencies",
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
  "slug": "lean-environment-localdefinitiondependencies--3aa95126c2c5f54c41bbd622",
  "source": {
    "blob": "c4586e3c4d744b22beea9f27ab7caff433b0ce9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aa95126c2c5f54c41bbd622ac173650cf41f6e02950cde6d2cea7aceb8d5249",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd5f40c9a724cd7005290e17e5268c8a3faf2fe0122762723427a0f44a966c70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.Environment.localDefinitionDependencies (env : Environment) (stx id : Syntax) :
    CommandElabM Bool := do
  let declName ← getDeclName stx
  let immediateDeps ← getAllDependencies stx id

  -- Drop all the unresolvable constants, otherwise `transitivelyUsedConstants` fails.
  let immediateDeps : NameSet := immediateDeps.fold (init := ∅) fun s n =>
    if (env.find? n).isSome then s.insert n else s

  let deps ← liftCoreM <| immediateDeps.transitivelyUsedConstants
  let constInfos := deps.toList.filterMap env.find?
  -- We allow depending on theorems and constructors.
  -- We explicitly allow constructors since `inductive` declarations are reported to depend on their
  -- own constructors, and we want inductives to behave the same as definitions, so place one
  -- warning on the inductive itself but nothing on its downstream uses.
  -- (There does not seem to be an easy way to determine, given `Syntax` and `ConstInfo`,
  -- whether the `ConstInfo` is a constructor declared in this piece of `Syntax`.)
  let defs := constInfos.filter (fun constInfo => !(constInfo matches .thmInfo _ | .ctorInfo _))

  return defs.any fun constInfo => declName != constInfo.name && constInfo.name.isLocal env

namespace Mathlib.Linter

/--
The `upstreamableDecl` linter detects declarations that could be moved to a file higher up in the
import hierarchy. If this is the case, it emits a warning.

By default, this linter will not fire on definitions, nor private declarations:
see options `linter.upstreamableDecl.defs` and `linter.upstreamableDecl.private`.

This is intended to assist with splitting files.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantaa6daea851e301b8bbb6b725935e421e1cf43a15aa57e57bf63a6b0eb0f43987.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4586e3c4d744b22beea9f27ab7caff433b0ce9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
