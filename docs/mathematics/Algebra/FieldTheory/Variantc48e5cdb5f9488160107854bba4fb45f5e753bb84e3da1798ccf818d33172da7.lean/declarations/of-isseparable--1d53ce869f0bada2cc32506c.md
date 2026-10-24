# of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d754fd45e182949d6f251af481cd4f5d49a8ee27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8046773e-ab44-24e6-cd98-ec5a2bae37db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dec90a90-955b-8e04-9c35-41f6f0362e4b",
  "kind": "lemma",
  "lexical_name": "of_isSeparable",
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
  "slug": "of-isseparable--1d53ce869f0bada2cc32506c",
  "source": {
    "blob": "d754fd45e182949d6f251af481cd4f5d49a8ee27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 91,
    "path": "GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d53ce869f0bada2cc32506c69af71443ff8b49018c56e77207b0de1445abae8",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dec90a90-955b-8e04-9c35-41f6f0362e4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_isSeparable [Algebra.IsSeparable K L] : FormallyEtale K L := by
  constructor
  intros B _ _ I h
  -- We shall show that any `f : L → B/I` can be lifted to `L → B` if `I^2 = ⊥`.
  -- But we already know that there exists a unique lift for every finite subfield of `L`
  -- by `of_isSeparable_aux`, so we can glue them all together.
  refine ⟨FormallyUnramified.iff_comp_injective.mp (FormallyUnramified.of_isSeparable K L) I h, ?_⟩
  intro f
  have : ∀ k : L, ∃! g : K⟮k⟯ →ₐ[K] B,
      (Ideal.Quotient.mkₐ K I).comp g = f.comp (IsScalarTower.toAlgHom K _ L) := by
    intro k
    have := IsSeparable.of_algHom _ _ (IsScalarTower.toAlgHom K (K⟮k⟯) L)
    have := IntermediateField.adjoin.finiteDimensional
      (Algebra.IsSeparable.isSeparable K k).isIntegral
    have := FormallyEtale.of_isSeparable_aux K (K⟮k⟯)
    have := FormallyEtale.comp_bijective (R := K) (A := K⟮k⟯) I h
    exact this.existsUnique _
  choose g hg₁ hg₂ using this
  have hg₃ : ∀ x y (h : x ∈ K⟮y⟯), g y ⟨x, h⟩ = g x (IntermediateField.AdjoinSimple.gen K x) := by
    intro x y h
    have e : K⟮x⟯ ≤ K⟮y⟯ := by
      rw [IntermediateField.adjoin_le_iff]
      rintro _ rfl
      exact h
    rw [← hg₂ _ ((g _).comp (IntermediateField.inclusion e))]
    · rfl
    apply AlgHom.ext
    intro ⟨a, _⟩
    rw [← AlgHom.comp_assoc, hg₁, AlgHom.comp_assoc]
    simp
  have H : ∀ x y : L, ∃ α : L, x ∈ K⟮α⟯ ∧ y ∈ K⟮α⟯ := by
    intro x y
    have : FiniteDimensional K K⟮x, y⟯ := by
      apply IntermediateField.finiteDimensional_adjoin
      intro x _; exact (Algebra.IsSeparable.isSeparable K x).isIntegral
    have := IsSeparable.of_algHom _ _ (IsScalarTower.toAlgHom K (K⟮x, y⟯) L)
    obtain ⟨⟨α, hα⟩, e⟩ := Field.exists_primitive_element K K⟮x,y⟯
    apply_fun (IntermediateField.map (IntermediateField.val _)) at e
    rw [IntermediateField.adjoin_map, ← AlgHom.fieldRange_eq_map] at e
    simp only [IntermediateField.coe_val, Set.image_singleton,
      IntermediateField.fieldRange_val] at e
    have hx : x ∈ K⟮α⟯ := e ▸ IntermediateField.subset_adjoin K {x, y} (by simp)
    have hy : y ∈ K⟮α⟯ := e ▸ IntermediateField.subset_adjoin K {x, y} (by simp)
    exact ⟨α, hx, hy⟩
  refine ⟨⟨⟨⟨⟨fun x ↦ g x (IntermediateField.AdjoinSimple.gen K x), ?_⟩, ?_⟩, ?_, ?_⟩, ?_⟩, ?_⟩
  · show g 1 1 = 1; rw [map_one]
  · intros x y
    obtain ⟨α, hx, hy⟩ := H x y
    simp only [← hg₃ _ _ hx, ← hg₃ _ _ hy, ← map_mul, ← hg₃ _ _ (mul_mem hx hy)]
    rfl
  · show g 0 0 = 0; rw [map_zero]
  · intros x y
    obtain ⟨α, hx, hy⟩ := H x y
    simp only [← hg₃ _ _ hx, ← hg₃ _ _ hy, ← map_add, ← hg₃ _ _ (add_mem hx hy)]
    rfl
  · intro r
    show g _ (algebraMap K _ r) = _
    rw [AlgHom.commutes]
  · ext x
    simpa using AlgHom.congr_fun (hg₁ x) (IntermediateField.AdjoinSimple.gen K x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variantc48e5cdb5f9488160107854bba4fb45f5e753bb84e3da1798ccf818d33172da7.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d754fd45e182949d6f251af481cd4f5d49a8ee27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
