# CarrierStateRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fa30f4e81f5ac13104a5ec82d0004a04eec505d0c35bf9d7611e139271af11",
  "kind": "structure",
  "lexical_name": "CarrierStateRecord",
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
  "slug": "carrierstaterecord--4d65c66ae96e0fc551ba477d",
  "source": {
    "blob": "73f11912faeadb494e9f7382316d545ac70b618d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d65c66ae96e0fc551ba477d13360984e2ff0cef04f4b9ca0de59a81f59a9f2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fa30f4e81f5ac13104a5ec82d0004a04eec505d0c35bf9d7611e139271af11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CarrierStateRecord (size carrierCount : Nat) where
  point : NormalizedPoint
  carriers : Fin carrierCount → GridCell size size
  weights : FiniteRasterState carrierCount
  eachCarrierIsExact : ∀ index, ExactCarrier size point (carriers index)
  everyExactCarrierPresent : ∀ cell, ExactCarrier size point cell →
    ∃ index, carriers index = cell
  carriersInjective : Function.Injective carriers
  complete : Bool
  completeChecked : complete = true

/-- Abstract a checked runtime state record to its semantic finite state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73f11912faeadb494e9f7382316d545ac70b618d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
