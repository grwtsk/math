# finTwoEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bee3cd6d71e6b385f76fe68695be877ba011c5935a230de485d3f3c43cb30a63",
  "kind": "def",
  "lexical_name": "finTwoEquiv",
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
  "slug": "fintwoequiv--691c6306fcb6a70bcaaf0efb",
  "source": {
    "blob": "d565cfc00aa9772be8242f76a32eff891fdb6899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 930,
    "line": 919,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:691c6306fcb6a70bcaaf0efb56383c760e5d2691978355e30b40c58c7eb22a9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bee3cd6d71e6b385f76fe68695be877ba011c5935a230de485d3f3c43cb30a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finTwoEquiv : Fin 2 ≃ Bool where
  toFun i := i == 1
  invFun b := bif b then 1 else 0
  left_inv i := by grind
  right_inv b := by grind

namespace Equiv

variable {α β : Type*}

/-- The left summand of `α ⊕ β` is equivalent to `α`. -/
@[simps (attr := grind =)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3c0323ecc32bf5a6fd530913b2e9c183ba771e94a337ed6bd3b865526bd5c89a.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d565cfc00aa9772be8242f76a32eff891fdb6899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
