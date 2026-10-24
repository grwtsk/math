# actual_whole_head_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0511be3e-f97b-2a85-ac56-dcd3a4f03d5c",
  "kind": "theorem",
  "lexical_name": "actual_whole_head_density_abs_le",
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
  "slug": "actual-whole-head-density-abs-le--4a526b4fa1ccef3f7aa6b969",
  "source": {
    "blob": "fe2f15f106b9b4e975f74141ee196009464e93ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variant9563f9242ddf2f84a2b53647556f4cb5d28fb06a06cac84492f0feae0d06ba2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a526b4fa1ccef3f7aa6b969842a885d38088d3d420d6b48412276b95832f126",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variant9563f9242ddf2f84a2b53647556f4cb5d28fb06a06cac84492f0feae0d06ba2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0511be3e-f97b-2a85-ac56-dcd3a4f03d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_whole_head_density_abs_le (A y : ℝ) (hA : 40 ≤ A)
    (hy : 2 ≤ y) (hyu : y ≤ 7) :
    |actualTransformedXiBlockDensity A y| ≤ wholeHeadHeight := by
  have hyp : 0 < y := by linarith
  have hp : 1 ≤ y ^ (3 / 2 : ℝ) :=
    Real.one_le_rpow (by linarith : 1 ≤ y) (by norm_num)
  have hk := actual_transformed_kernel_abs_le_one A y hA
  have hx := shiftedActualChebyshev_abs_le_wholeHeadHeight y hy hyu
  unfold actualTransformedXiBlockDensity
  rw [abs_div, abs_mul, abs_of_pos (Real.rpow_pos_of_pos hyp _)]
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hyp _)).mpr
  calc
    _ ≤ wholeHeadHeight * 1 := mul_le_mul hx hk (abs_nonneg _) wholeHeadHeight_nonneg
    _ ≤ wholeHeadHeight * y ^ (3 / 2 : ℝ) :=
      mul_le_mul_of_nonneg_left hp wholeHeadHeight_nonneg

/-- The actual entire-support integrability restricts to the literal finite head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variant9563f9242ddf2f84a2b53647556f4cb5d28fb06a06cac84492f0feae0d06ba2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt01/Variant9563f9242ddf2f84a2b53647556f4cb5d28fb06a06cac84492f0feae0d06ba2f.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2f15f106b9b4e975f74141ee196009464e93ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
