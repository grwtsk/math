# toCumulativePackingData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6f0345ee0b5f75ca149152ab433fed38679a0eebcc4b7eb0e2ad4c792e52f6b",
  "kind": "def",
  "lexical_name": "toCumulativePackingData",
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
  "slug": "tocumulativepackingdata--f0291cf40982e2ab5d7b98b9",
  "source": {
    "blob": "16ee2b2d0a27e8329ce3897aacb070e0a402549c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0291cf40982e2ab5d7b98b9f7aa6f0776cd9d803464acefe2c4ba7c65031835",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6f0345ee0b5f75ca149152ab433fed38679a0eebcc4b7eb0e2ad4c792e52f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCumulativePackingData
    {z : ZeroPoint} {ha : zeroDefect z.1 ≠ 0}
    (data : OffLineDyadicCommonLowerMassAtZero z ha) :
    OffLineDyadicCumulativePackingDataAtZero z ha where
  lowerWeight := data.lowerWeight
  lowerWeight_nonnegative := data.lowerWeight_nonnegative
  axial_lower := data.axial_lower
  transverse_lower := data.transverse_lower
  lowerWeightPartial_tendsto_atTop :=
    data.lowerWeightPartial_tendsto_atTop
  totalBudget := safeQuarticDyadicTotalBudget z
  totalBudget_nonnegative := safeQuarticDyadicTotalBudget_nonnegative z
  occupiedPartial_le := safeQuarticDyadicPartial_le_totalBudget z

/-- Explicit bounded-partial-sum consequence for every common lower sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ee2b2d0a27e8329ce3897aacb070e0a402549c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
