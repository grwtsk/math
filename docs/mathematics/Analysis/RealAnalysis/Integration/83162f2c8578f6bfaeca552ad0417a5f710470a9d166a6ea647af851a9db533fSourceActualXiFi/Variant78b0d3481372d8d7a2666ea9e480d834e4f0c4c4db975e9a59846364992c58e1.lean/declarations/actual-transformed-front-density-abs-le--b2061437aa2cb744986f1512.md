# actual_transformed_front_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30f0fc2e-79a5-1f2f-1a92-f70858f93b2a",
  "kind": "theorem",
  "lexical_name": "actual_transformed_front_density_abs_le",
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
  "slug": "actual-transformed-front-density-abs-le--b2061437aa2cb744986f1512",
  "source": {
    "blob": "dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2061437aa2cb744986f1512b493ac9afa401f2faef1eb37542bc5f1371dfcf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30f0fc2e-79a5-1f2f-1a92-f70858f93b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_front_density_abs_le (A y : ℝ) (hA : 40 ≤ A)
    (hy : 2 ≤ y) (hyu : y ≤ 13 / 2) :
    |actualTransformedXiBlockDensity A y| ≤ fixedFrontHeight := by
  have hyp : 0 < y := by linarith
  have hp : 1 ≤ y ^ (3 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith : 1 ≤ y) (by norm_num)
  have hk := actual_transformed_kernel_abs_le_one A y hA
  have hx := shiftedActualChebyshev_abs_le_frontHeight y hy hyu
  unfold actualTransformedXiBlockDensity
  rw [abs_div, abs_mul, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hyp _)).mpr
  calc
    _ ≤ fixedFrontHeight * 1 := mul_le_mul hx hk (abs_nonneg _) fixedFrontHeight_nonneg
    _ ≤ fixedFrontHeight * y ^ (3 / 2 : ℝ) :=
      mul_le_mul_of_nonneg_left hp fixedFrontHeight_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/83162f2c8578f6bfaeca552ad0417a5f710470a9d166a6ea647af851a9db533fSourceActualXiFi/Variant78b0d3481372d8d7a2666ea9e480d834e4f0c4c4db975e9a59846364992c58e1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde9ba6a9263e1a83a9ee9c8dab4e5db1d47a987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
