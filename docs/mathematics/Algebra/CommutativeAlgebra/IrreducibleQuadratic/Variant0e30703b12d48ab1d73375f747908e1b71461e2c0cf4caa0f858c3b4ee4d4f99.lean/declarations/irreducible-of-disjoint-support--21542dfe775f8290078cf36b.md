# irreducible_of_disjoint_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70f836b3-1408-5770-f23d-0cd96ce99c58",
  "kind": "lemma",
  "lexical_name": "irreducible_of_disjoint_support",
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
  "slug": "irreducible-of-disjoint-support--21542dfe775f8290078cf36b",
  "source": {
    "blob": "b9a1f98a815fcdcc95022e750c7ba7be479d4b81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 98,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21542dfe775f8290078cf36b5fea7bd4b596eb017ccaa23af3c984223b29184b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f836b3-1408-5770-f23d-0cd96ce99c58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_of_disjoint_support [IsDomain R]
    {f : MvPolynomial n R}
    (nontrivial : f.support.Nontrivial)
    {d : n →₀ ℕ} (hd : d ∈ f.support) {i : n} (hdi : d i = 1)
    (disjoint : (f.support : Set (n →₀ ℕ)).PairwiseDisjoint Finsupp.support)
    (isPrimitive : ∀ r, (∀ d, r ∣ f.coeff d) → IsUnit r) :
    Irreducible f := by
  classical
  have hfd : f.coeff d ≠ 0 := by simpa using hd
  let d₀ := d.erase i
  let φ : MvPolynomial n R := monomial d₀ (f.coeff d)
  let ψ : MvPolynomial n R := f - φ * X i
  have hf : f = φ * X i + ψ := by grind only
  have hφ : φ * X i = monomial d (f.coeff d) := by
    nth_rw 1 [← Finsupp.erase_add_single i d]; simp [φ, monomial_add_single, hdi, d₀]
  have hdψ (k) : ψ.coeff k = if d = k then 0 else f.coeff k := by
    simp +contextual [ψ, hφ, sub_eq_iff_eq_add, ite_add_ite]
  rw [hf]
  apply irreducible_mul_X_add
  · grind only [monomial_eq_zero]
  · simp [φ, hfd, d₀, hdi]
  · suffices ∀ x, d ≠ x → x ∈ f.support → i ∉ x.support by
      simpa [mem_vars_iff_mem_support, hdψ] using this
    exact fun x hxd hx hix ↦
      Finset.disjoint_iff_ne.mp (disjoint hd hx hxd) i (by simp [hdi]) _ hix rfl
  · rintro p hpφ ⟨q, hq⟩
    obtain ⟨m, b, hm, hb, rfl⟩ := (dvd_monomial_iff_exists hfd).mp hpφ
    obtain ⟨d₂, hd₂, H⟩ := nontrivial.exists_ne d
    obtain rfl : m = 0 := by
      have aux : ψ.coeff d₂ ≠ 0 := by simpa [hdψ, H.symm] using hd₂
      simp only [hq, coeff_monomial_mul', ne_eq, ite_eq_right_iff, Classical.not_imp] at aux
      simpa using disjoint hd₂ hd H (Finsupp.support_mono aux.1)
        ((Finsupp.support_mono hm).trans (d.support.erase_subset i))
    have hb' : IsUnit b := isPrimitive _ fun k ↦
      if hk : k = d then hk ▸ hb else hf ▸ by simp [hq, hφ, Ne.symm hk]
    simpa

end

section
/-! ## The quadratic polynomial $$\sum_{i=1}^n X_i Y_i$$. -/

variable {n : Type*} {R : Type*} [CommRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant0e30703b12d48ab1d73375f747908e1b71461e2c0cf4caa0f858c3b4ee4d4f99.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a1f98a815fcdcc95022e750c7ba7be479d4b81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
