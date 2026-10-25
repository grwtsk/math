# EtaStructMode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54a2cfa7b5ed3c49dd7a01e6197e87d8b440f54a1c3d426a4e9518d792142fe8",
  "kind": "inductive",
  "lexical_name": "EtaStructMode",
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
  "slug": "etastructmode--863e41358ae678fca553f84b",
  "source": {
    "blob": "ee6e90f302d63518c81c9ce10a29ee698533c31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:863e41358ae678fca553f84bd5e0e67f1e6a620eb10ae6e68121774ca4a46b4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54a2cfa7b5ed3c49dd7a01e6197e87d8b440f54a1c3d426a4e9518d792142fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EtaStructMode where
  /-- Enable eta for structure and classes. -/
  | all
  /-- Enable eta only for structures that are not classes. -/
  | notClasses
  /-- Disable eta for structures and classes. -/
  | none
  deriving Inhabited, BEq

namespace DSimp

/--
The configuration for `dsimp`.
Passed to `dsimp` using, for example, the `dsimp (config := {zeta := false})` syntax.

Implementation note: this structure is only used for processing the `(config := ...)` syntax, and it is not used internally.
It is immediately converted to `Lean.Meta.Simp.Config` by `Lean.Elab.Tactic.elabSimpConfig`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variantdd3ed73e0afff35252aafca5c3129a7eb999a5fda74ed4dd7c5239a66f3f6620.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6e90f302d63518c81c9ce10a29ee698533c31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
