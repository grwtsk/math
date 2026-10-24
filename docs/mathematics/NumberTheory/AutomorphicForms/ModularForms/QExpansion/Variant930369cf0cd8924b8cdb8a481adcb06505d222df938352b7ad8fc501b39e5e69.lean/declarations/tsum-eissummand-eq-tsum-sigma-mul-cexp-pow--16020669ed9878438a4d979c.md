# tsum_eisSummand_eq_tsum_sigma_mul_cexp_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80040667ea0c83c8d9107340fbcd872753405572",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae281d88-570c-54c5-24bf-85faadce75f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99ddbe5a-6c23-977b-8dda-f0209e70bc58",
  "kind": "lemma",
  "lexical_name": "tsum_eisSummand_eq_tsum_sigma_mul_cexp_pow",
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
  "slug": "tsum-eissummand-eq-tsum-sigma-mul-cexp-pow--16020669ed9878438a4d979c",
  "source": {
    "blob": "80040667ea0c83c8d9107340fbcd872753405572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 221,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16020669ed9878438a4d979c4d3986b3bca8e7468238ac3efb71e96ce9a8e8d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ddbe5a-6c23-977b-8dda-f0209e70bc58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_eisSummand_eq_tsum_sigma_mul_cexp_pow {k : ℕ} (hk : 3 ≤ k) (hk2 : Even k) (z : ℍ) :
    ∑' v, eisSummand k v z = 2 * riemannZeta k + 2 * ((-2 * π * I) ^ k / (k - 1)!) *
    ∑' (n : ℕ+), σ (k - 1) n * cexp (2 * π * I * z) ^ (n : ℕ) := by
  rw [← (finTwoArrowEquiv ℤ).symm.tsum_eq, finTwoArrowEquiv_symm_apply,
    Summable.tsum_prod (summable_prod_eisSummand hk z),
    tsum_int_eq_zero_add_two_mul_tsum_pnat (fun n ↦ ?h₁)
      (by simpa using (summable_prod_eisSummand hk z).prod)]
  case h₁ =>
    nth_rewrite 1 [← tsum_comp_neg]
    exact tsum_congr fun y ↦ by simp [eisSummand, ← neg_add _ (y : ℂ), -neg_add_rev, hk2.neg_pow]
  have H (b : ℕ+) := qExpansion_identity_pnat (k := k - 1) (by grind) ⟨b * z, by simpa using z.2⟩
  simp_rw [show k - 1 + 1 = k by grind, one_div] at H
  simp only [neg_mul] at H
  rw [nsmul_eq_mul, mul_assoc]
  congr
  · simp [eisSummand, two_mul_riemannZeta_eq_tsum_int_inv_pow_of_even (by grind) hk2]
  · suffices ∑' (m : ℕ+) (n : ℕ+), (n : ℕ) ^ (k - 1) * cexp (2 * π * I * (m * z)) ^ (n : ℕ) =
        ∑' (m : ℕ+) (n : ℕ+), (n : ℕ) ^ (k - 1) * cexp (2 * π * I * z) ^ (m * n : ℕ) by
      simp [eisSummand, H, tsum_mul_left,
        ← tsum_prod_pow_eq_tsum_sigma (k - 1) (norm_exp_two_pi_I_lt_one z), this]
    simp_rw [← Complex.exp_nat_mul]
    exact tsum_congr₂ (fun m n ↦ by push_cast; ring_nf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80040667ea0c83c8d9107340fbcd872753405572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
