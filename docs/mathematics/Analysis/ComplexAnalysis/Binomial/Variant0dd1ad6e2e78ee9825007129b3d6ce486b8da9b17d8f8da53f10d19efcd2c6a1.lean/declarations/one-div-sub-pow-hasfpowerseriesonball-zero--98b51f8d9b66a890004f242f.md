# one_div_sub_pow_hasFPowerSeriesOnBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf8caa97-ae2c-496a-2356-03f0e6183a1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe33ea1f-f36f-1eec-5d6d-1342f3a29563",
  "kind": "theorem",
  "lexical_name": "one_div_sub_pow_hasFPowerSeriesOnBall_zero",
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
  "slug": "one-div-sub-pow-hasfpowerseriesonball-zero--98b51f8d9b66a890004f242f",
  "source": {
    "blob": "fde95f8f3d29f910c8a6fa05fe09da5b568e44a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 173,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b51f8d9b66a890004f242f2303cc3051f10af7b776ede3bfda33e0ac5f1366",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe33ea1f-f36f-1eec-5d6d-1342f3a29563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_sub_pow_hasFPowerSeriesOnBall_zero (a : ℕ) {z : ℂ} (hz : z ≠ 0) :
    HasFPowerSeriesOnBall (fun x ↦ 1 / (z - x) ^ (a + 1))
      (.ofScalars ℂ (𝕜 := ℂ) fun n ↦ (z ^ (n + a + 1))⁻¹ * ↑(Nat.choose (a + n) a)) 0 ‖z‖ₑ := by
  have := one_div_one_sub_pow_hasFPowerSeriesOnBall_zero a
  rw [← map_zero (z⁻¹ • 1 : ℂ →L[ℂ] ℂ)] at this
  have := this.compContinuousLinearMap
  have H : 1 / ‖(z⁻¹ • 1 : ℂ →L[ℂ] ℂ)‖ₑ = ‖z‖ₑ := by simp [enorm_smul, enorm_inv, hz]
  simp only [one_div, FunLike.coe_smul, H, Function.comp_def] at this
  convert (this.const_smul (c := (z ^ (a + 1))⁻¹)).congr ?_
  · ext n
    simp only [FormalMultilinearSeries.smul_apply, smul_apply,
      FormalMultilinearSeries.compContinuousLinearMap_apply]
    simp [add_assoc, pow_add _ _ (a + 1), mul_assoc]
  · intro w hw
    simp [← mul_inv_rev, ← mul_pow, sub_mul, mul_right_comm _ w, hz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Binomial/Variant0dd1ad6e2e78ee9825007129b3d6ce486b8da9b17d8f8da53f10d19efcd2c6a1.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde95f8f3d29f910c8a6fa05fe09da5b568e44a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
