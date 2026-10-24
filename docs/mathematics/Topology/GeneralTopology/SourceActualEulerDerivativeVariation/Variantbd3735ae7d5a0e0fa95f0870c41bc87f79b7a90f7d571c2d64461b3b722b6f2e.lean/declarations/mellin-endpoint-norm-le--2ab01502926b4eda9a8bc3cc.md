# mellin_endpoint_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0580f04e-160b-e282-36f5-1d4af30de138",
  "kind": "theorem",
  "lexical_name": "mellin_endpoint_norm_le",
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
  "slug": "mellin-endpoint-norm-le--2ab01502926b4eda9a8bc3cc",
  "source": {
    "blob": "9cb55403a37165b5ba18a70656990996b91ba95c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variantbd3735ae7d5a0e0fa95f0870c41bc87f79b7a90f7d571c2d64461b3b722b6f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab01502926b4eda9a8bc3ccaff4f292f1538e8c127d799b6e69e6c6b21cba97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variantbd3735ae7d5a0e0fa95f0870c41bc87f79b7a90f7d571c2d64461b3b722b6f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0580f04e-160b-e282-36f5-1d4af30de138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mellin_endpoint_norm_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualInitialPrimeMellin A ((c : ℂ) + (actualBumpMovingHeight A c : ℂ) * I)‖ ≤
      endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c (actualBumpMovingHeight A c) hA hc
    (actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6 =
      Real.exp (-((2 * c - 1) * A / 5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [abs_of_pos (Real.exp_pos _)] at hb
  calc
    _ ≤ (204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * (actualBumpMovingHeight A c) ^ 6) := hb
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        (Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6) / A ^ 9 := by ring
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by rw [hex]
    _ ≤ endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      unfold endpointConstant
      gcongr

/-- The actual derivative variation grows at the squared-transform scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variantbd3735ae7d5a0e0fa95f0870c41bc87f79b7a90f7d571c2d64461b3b722b6f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variantbd3735ae7d5a0e0fa95f0870c41bc87f79b7a90f7d571c2d64461b3b722b6f2e.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb55403a37165b5ba18a70656990996b91ba95c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
