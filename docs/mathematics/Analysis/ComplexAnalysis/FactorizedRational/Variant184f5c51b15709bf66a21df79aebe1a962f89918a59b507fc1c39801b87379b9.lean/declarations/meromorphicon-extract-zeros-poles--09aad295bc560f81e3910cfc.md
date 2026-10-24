# MeromorphicOn.extract_zeros_poles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9415b600-7c41-eae9-55d2-5733658106cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cec66833-647d-aed2-e25a-37a7bae977d3",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.extract_zeros_poles",
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
  "slug": "meromorphicon-extract-zeros-poles--09aad295bc560f81e3910cfc",
  "source": {
    "blob": "5ba19bdc72427599d24cb7af06dc3bd014ff4aa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 203,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09aad295bc560f81e3910cfc8b02bb7bfb2d1e33f002ca34caa2c5c201d43404",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cec66833-647d-aed2-e25a-37a7bae977d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.extract_zeros_poles {f : 𝕜 → E} (h₁f : MeromorphicOn f U)
    (h₂f : ∀ u : U, meromorphicOrderAt f u ≠ ⊤) (h₃f : (divisor f U).support.Finite) :
    ∃ g : 𝕜 → E, AnalyticOnNhd 𝕜 g U ∧ (∀ u : U, g u ≠ 0) ∧
      f =ᶠ[codiscreteWithin U] (∏ᶠ u, (· - u) ^ divisor f U u) • g := by
  -- Take `g` as the inverse of the Laurent polynomial defined below, converted to a meromorphic
  -- function in normal form. Then check all the properties.
  let φ := ∏ᶠ u, (· - u) ^ (divisor f U u)
  have hφ : MeromorphicOn φ U := (meromorphicNFOn (divisor f U) U).meromorphicOn
  let g := toMeromorphicNFOn (φ⁻¹ • f) U
  have hg : MeromorphicNFOn g U := by apply meromorphicNFOn_toMeromorphicNFOn
  refine ⟨g, ?_, ?_, ?_⟩
  · -- AnalyticOnNhd 𝕜 g U
    rw [← hg.divisor_nonneg_iff_analyticOnNhd, divisor_of_toMeromorphicNFOn (hφ.inv.smul h₁f),
      divisor_smul hφ.inv h₁f _ (fun z hz ↦ h₂f ⟨z, hz⟩), divisor_inv,
      Function.FactorizedRational.divisor h₃f, neg_add_cancel]
    intro z hz
    simpa [meromorphicOrderAt_inv] using meromorphicOrderAt_ne_top (divisor f U)
  · -- ∀ (u : ↑U), g ↑u ≠ 0
    intro ⟨u, hu⟩
    rw [← (hg hu).meromorphicOrderAt_eq_zero_iff, ← meromorphicOrderAt_congr
        (toMeromorphicNFOn_eq_self_on_nhdsNE (hφ.inv.smul h₁f) hu).symm,
      meromorphicOrderAt_smul (hφ u hu).inv (h₁f u hu), meromorphicOrderAt_inv,
      meromorphicOrderAt_eq _ h₃f]
    simp only [Pi.neg_apply, h₁f, hu, divisor_apply, WithTop.LinearOrderedAddCommGroup.coe_neg]
    lift meromorphicOrderAt f u to ℤ using (h₂f ⟨u, hu⟩) with n hn
    rw [WithTop.untop₀_coe, ← WithTop.LinearOrderedAddCommGroup.coe_neg, ← WithTop.coe_add]
    simp
  · -- f =ᶠ[codiscreteWithin U] (∏ᶠ (u : 𝕜), fun z ↦ (z - u) ^ (divisor f U) u) * g
    filter_upwards [(divisor f U).eq_zero_codiscreteWithin,
      (hφ.inv.smul h₁f).meromorphicNFAt_mem_codiscreteWithin,
      self_mem_codiscreteWithin U] with a h₂a h₃a h₄a
    unfold g
    simp only [Pi.smul_apply', toMeromorphicNFOn_eq_toMeromorphicNFAt (hφ.inv.smul h₁f) h₄a,
      toMeromorphicNFAt_eq_self.2 h₃a, Pi.inv_apply]
    rw [← smul_assoc, smul_eq_mul, mul_inv_cancel₀ _, one_smul]
    rwa [← ((meromorphicNFOn_univ (divisor f U)) trivial).meromorphicOrderAt_eq_zero_iff,
      meromorphicOrderAt_eq, h₂a, Pi.zero_apply, WithTop.coe_zero]

/--
In the setting of `MeromorphicOn.extract_zeros_poles`, the function `log ‖f‖` is equivalent, modulo
equality on codiscrete subsets, to `∑ᶠ u, (divisor f U u * log ‖· - u‖) + log ‖g ·‖`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FactorizedRational/Variant184f5c51b15709bf66a21df79aebe1a962f89918a59b507fc1c39801b87379b9.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba19bdc72427599d24cb7af06dc3bd014ff4aa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
