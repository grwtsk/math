# thetaGaussianSum_le_superexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5213fecb-7eb2-23bd-185a-81047be13e65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4276d5e8-aad9-ac9b-0682-5018ad3e18a3",
  "kind": "theorem",
  "lexical_name": "thetaGaussianSum_le_superexp",
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
  "slug": "thetagaussiansum-le-superexp--f54006510a91d3e0196a28d1",
  "source": {
    "blob": "2d322c9779e5e2552b1183bad2c6a9f6340c90e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f54006510a91d3e0196a28d12d908da61111618022da88dc3586cfb9f92f37f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4276d5e8-aad9-ac9b-0682-5018ad3e18a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGaussianSum_le_superexp (k c : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaGaussianSum k c t ≤ HurwitzKernelBounds.F_nat k 1 (1 / 2) *
      Real.exp ((c : ℝ) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  have hE : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hmode (m : ℕ) : thetaGaussianTerm k c m t ≤
      (Real.exp ((c : ℝ) * t) * Real.exp (-(Real.pi / 2) * Real.exp (4 * t))) *
        HurwitzKernelBounds.f_nat k 1 (1 / 2) m := by
    have hn : (1 : ℝ) ≤ (m : ℝ) + 1 := by
      have : (0 : ℝ) ≤ m := Nat.cast_nonneg m
      linarith
    have hn2 : 1 ≤ ((m : ℝ) + 1) ^ 2 := one_le_pow₀ hn
    have hsplit : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
        Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)) := by
      rw [← Real.exp_add]
      apply Real.exp_le_exp.mpr
      have hprod := mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr hE)
      have hmid : Real.exp (4 * t) + ((m : ℝ) + 1) ^ 2 ≤
          2 * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t) := by nlinarith
      nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hmid)]
    unfold thetaGaussianTerm HurwitzKernelBounds.f_nat
    calc
      _ ≤ Real.exp ((c : ℝ) * t) * (((m : ℝ) + 1) ^ k *
          (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
          Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * (1 / 2)))) := by gcongr
      _ = _ := by ring
  have hs := (thetaGaussianTerm_summable k c t).tsum_le_tsum hmode
    ((HurwitzKernelBounds.summable_f_nat k 1 (by norm_num : (0 : ℝ) < 1 / 2)).mul_left _)
  apply hs.trans_eq
  rw [tsum_mul_left]
  unfold HurwitzKernelBounds.F_nat
  rw [sub_eq_add_neg, Real.exp_add, neg_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12SourceDerivative/Variant90801202237efde3f8dc1ebd34183d2782b83fbea43334e66d99eb4701f8bf12.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d322c9779e5e2552b1183bad2c6a9f6340c90e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
