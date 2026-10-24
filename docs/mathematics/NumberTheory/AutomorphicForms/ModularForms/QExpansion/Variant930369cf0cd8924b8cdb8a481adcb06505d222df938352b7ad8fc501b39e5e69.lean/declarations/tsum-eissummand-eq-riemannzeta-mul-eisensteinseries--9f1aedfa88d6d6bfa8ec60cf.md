# tsum_eisSummand_eq_riemannZeta_mul_eisensteinSeries

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
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d45df86e-8701-a34c-92ba-f80a66420386",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0eea76dd-3266-abae-eccc-74810b517c90",
  "kind": "lemma",
  "lexical_name": "tsum_eisSummand_eq_riemannZeta_mul_eisensteinSeries",
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
  "slug": "tsum-eissummand-eq-riemannzeta-mul-eisensteinseries--9f1aedfa88d6d6bfa8ec60cf",
  "source": {
    "blob": "80040667ea0c83c8d9107340fbcd872753405572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 250,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f1aedfa88d6d6bfa8ec60cfdffa16776a853db11f842c2b05e23aeb84c3a518",
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

Occurrence: `result:0eea76dd-3266-abae-eccc-74810b517c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_eisSummand_eq_riemannZeta_mul_eisensteinSeries {k : ℕ} (hk : 3 ≤ k) (z : ℍ) :
    ∑' v : Fin 2 → ℤ, eisSummand k v z = riemannZeta k * eisensteinSeries (N := 1) 0 k z := by
  have hk1 : 1 < k := by grind
  have hk2 : 3 ≤ (k : ℤ) := mod_cast hk
  simp_rw [← gammaSetDivGcdSigmaEquiv.symm.tsum_eq, gammaSetDivGcdSigmaEquiv_symm_eq]
  rw [eisensteinSeries, Summable.tsum_sigma ?hsumm, zeta_nat_eq_tsum_of_gt_one hk1,
    tsum_mul_tsum_of_summable_norm (by simp [hk1]) ((summable_norm_eisSummand hk2 z).subtype _)]
  case hsumm =>
    exact gammaSetDivGcdSigmaEquiv.symm.summable_iff.mpr (summable_norm_eisSummand hk2 z).of_norm
      |>.congr <| by simp
  simp_rw [one_div]
  rw [Summable.tsum_prod' ?h₁ fun b ↦ ?h₂]
  case h₁ =>
    exact summable_mul_of_summable_norm (f := fun (n : ℕ) ↦ ((n : ℂ) ^ k)⁻¹)
      (g := fun (v : gammaSet 1 1 0) ↦ eisSummand k v z) (by simp [hk1])
      ((summable_norm_eisSummand hk2 z).subtype _)
  case h₂ =>
    simpa using ((summable_norm_eisSummand hk2 z).subtype _).of_norm.mul_left (a := ((b : ℂ) ^ k)⁻¹)
  refine tsum_congr fun b ↦ ?_
  rcases eq_or_ne b 0 with rfl | hb
  · simp [show ((0 : ℂ) ^ k)⁻¹ = 0 by aesop, eisSummand_of_gammaSet_eq_divIntMap]
  · have : NeZero b := ⟨hb⟩
    simpa [eisSummand_of_gammaSet_eq_divIntMap k z, tsum_mul_left, hb]
      using (gammaSetDivGcdEquiv b).tsum_eq (eisSummand k · z)

/-- The q-Expansion of normalised Eisenstein series of level one with `riemannZeta` term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/QExpansion/Variant930369cf0cd8924b8cdb8a481adcb06505d222df938352b7ad8fc501b39e5e69.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80040667ea0c83c8d9107340fbcd872753405572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
