# finitePresentation_ofLocalizationSpanTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7871c6ef-2edb-fe7a-5287-a12e2c735e33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:892e742e-4f74-8ce7-eaa6-643ed7fa7c2a",
  "kind": "theorem",
  "lexical_name": "finitePresentation_ofLocalizationSpanTarget",
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
  "slug": "finitepresentation-oflocalizationspantarget--fce261beec2ccbdc465f82e0",
  "source": {
    "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 92,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce261beec2ccbdc465f82e0ae122a1bce079c85e42ca738aa037e2c779ae459",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:892e742e-4f74-8ce7-eaa6-643ed7fa7c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePresentation_ofLocalizationSpanTarget :
    OfLocalizationSpanTarget @FinitePresentation := by
  rw [ofLocalizationSpanTarget_iff_finite]
  introv R hs H
  classical
  letI := f.toAlgebra
  replace H : ∀ r : s, Algebra.FinitePresentation R (Localization.Away (r : S)) := by
    intro r; simp_rw [RingHom.FinitePresentation] at H
    convert H r; ext; simp_rw [Algebra.smul_def]; rfl
  /-
  We already know that `S` is of finite type over `R`, so we have a surjection
  `MvPolynomial (Fin n) R →ₐ[R] S`. To reason about the kernel, we want to check it on the stalks
  of preimages of `s`. But the preimages do not necessarily span `MvPolynomial (Fin n) R`, so
  we quotient out by an ideal and apply `finitePresentation_ofLocalizationSpanTarget_aux`.
  -/
  have hfintype : Algebra.FiniteType R S := by
    apply finiteType_ofLocalizationSpanTarget f s hs
    intro r
    convert_to Algebra.FiniteType R (Localization.Away r.val)
    · rw [RingHom.FiniteType]
      constructor <;> intro h <;> convert h <;> ext <;> simp_rw [Algebra.smul_def] <;> rfl
    · infer_instance
  rw [RingHom.FinitePresentation]
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp hfintype
  obtain ⟨l, hl⟩ := (Finsupp.mem_span_iff_linearCombination S (s : Set S) 1).mp
      (show (1 : S) ∈ Ideal.span (s : Set S) by rw [hs]; trivial)
  choose g' hg' using (fun g : s ↦ hf g)
  choose h' hh' using (fun g : s ↦ hf (l g))
  let I : Ideal (MvPolynomial (Fin n) R) := Ideal.span { ∑ g : s, g' g * h' g - 1 }
  let A := MvPolynomial (Fin n) R ⧸ I
  have hfI : ∀ a ∈ I, f a = 0 := by
    intro p hp
    simp only [Finset.univ_eq_attach, I, Ideal.mem_span_singleton] at hp
    obtain ⟨q, rfl⟩ := hp
    simp only [map_mul, map_sub, map_sum, map_one, hg', hh']
    rw [Finsupp.linearCombination_apply_of_mem_supported (α := (s : Set S)) S (s := s.attach)] at hl
    · rw [← hl]
      simp only [Finset.coe_sort_coe, smul_eq_mul, mul_comm, sub_self, mul_zero, zero_mul]
    · rintro a -
      simp
  let f' : A →ₐ[R] S := Ideal.Quotient.liftₐ I f hfI
  have hf' : Function.Surjective f' :=
    Ideal.Quotient.lift_surjective_of_surjective I hfI hf
  let t : Finset A := Finset.image (fun g ↦ g' g) Finset.univ
  have ht : Ideal.span (t : Set A) = ⊤ := by
    rw [Ideal.eq_top_iff_one]
    have : ∑ g : { x // x ∈ s }, g' g * h' g = (1 : A) := by
      apply eq_of_sub_eq_zero
      rw [← map_one (Ideal.Quotient.mk I), ← map_sub, Ideal.Quotient.eq_zero_iff_mem]
      apply Ideal.subset_span
      simp
    simp_rw [← this, Finset.univ_eq_attach, map_sum, map_mul]
    refine Ideal.sum_mem _ (fun g _ ↦ Ideal.mul_mem_right _ _ <| Ideal.subset_span ?_)
    simp [t]
  have : Algebra.FinitePresentation R A := by
    apply Algebra.FinitePresentation.quotient
    simp only [Finset.univ_eq_attach, I]
    exact ⟨{∑ g ∈ s.attach, g' g * h' g - 1}, by simp⟩
  have Ht (g : t) : Algebra.FinitePresentation R (Localization.Away (f' g)) := by
    have : ∃ (a : S) (hb : a ∈ s), (Ideal.Quotient.mk I) (g' ⟨a, hb⟩) = g.val := by
      obtain ⟨g, hg⟩ := g
      convert hg
      simp [A, f', t]
    obtain ⟨r, hr, hrr⟩ := this
    simp only [f']
    rw [← hrr, Ideal.Quotient.liftₐ_apply, Ideal.Quotient.lift_mk]
    simp_rw [coe_coe]
    rw [hg']
    apply H
  exact finitePresentation_ofLocalizationSpanTarget_aux f' hf' t ht Ht

/-- Being finitely-presented is a local property of rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c98dab35ce570eba1bd498d5d551a8cfd0dee71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
