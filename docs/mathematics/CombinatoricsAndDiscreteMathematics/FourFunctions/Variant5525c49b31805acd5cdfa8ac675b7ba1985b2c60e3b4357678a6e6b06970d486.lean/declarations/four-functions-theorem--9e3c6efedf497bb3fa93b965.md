# four_functions_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a88ce85d-1b07-9375-99de-01fbda7b9d76",
  "kind": "lemma",
  "lexical_name": "four_functions_theorem",
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
  "slug": "four-functions-theorem--9e3c6efedf497bb3fa93b965",
  "source": {
    "blob": "adc34eaf2b1dbafd34da9d2464810e6fb854e024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 285,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e3c6efedf497bb3fa93b965f6316095bf54dc523dca48a54f48e2b09fa33bb5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a88ce85d-1b07-9375-99de-01fbda7b9d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma four_functions_theorem [DecidableEq α] (h₁ : 0 ≤ f₁) (h₂ : 0 ≤ f₂) (h₃ : 0 ≤ f₃) (h₄ : 0 ≤ f₄)
    (h : ∀ a b, f₁ a * f₂ b ≤ f₃ (a ⊓ b) * f₄ (a ⊔ b)) (s t : Finset α) :
    (∑ a ∈ s, f₁ a) * ∑ a ∈ t, f₂ a ≤ (∑ a ∈ s ⊼ t, f₃ a) * ∑ a ∈ s ⊻ t, f₄ a := by
  classical
  set L : Sublattice α := ⟨latticeClosure (s ∪ t), isSublattice_latticeClosure.1,
    isSublattice_latticeClosure.2⟩
  have : Finite L := (s.finite_toSet.union t.finite_toSet).latticeClosure.to_subtype
  set s' : Finset L := s.preimage (↑) Subtype.coe_injective.injOn
  set t' : Finset L := t.preimage (↑) Subtype.coe_injective.injOn
  have hs' : s'.map ⟨L.subtype, Subtype.coe_injective⟩ = s := by
    simp [s', map_eq_image, image_preimage, filter_eq_self]
    exact fun a ha ↦ subset_latticeClosure <| Set.subset_union_left ha
  have ht' : t'.map ⟨L.subtype, Subtype.coe_injective⟩ = t := by
    simp [t', map_eq_image, image_preimage, filter_eq_self]
    exact fun a ha ↦ subset_latticeClosure <| Set.subset_union_right ha
  clear_value s' t'
  obtain ⟨β, _, _, g, hg⟩ := exists_birkhoff_representation L
  have := four_functions_theorem_aux (extend g (f₁ ∘ (↑)) 0) (extend g (f₂ ∘ (↑)) 0)
    (extend g (f₃ ∘ (↑)) 0) (extend g (f₄ ∘ (↑)) 0) (extend_nonneg (fun _ ↦ h₁ _) le_rfl)
    (extend_nonneg (fun _ ↦ h₂ _) le_rfl) (extend_nonneg (fun _ ↦ h₃ _) le_rfl)
    (extend_nonneg (fun _ ↦ h₄ _) le_rfl) ?_ (s'.map ⟨g, hg⟩) (t'.map ⟨g, hg⟩)
  · simpa only [← hs', ← ht', ← map_sups, ← map_infs, sum_map, Embedding.coeFn_mk, hg.extend_apply]
      using this
  rintro s t
  classical
  obtain ⟨a, rfl⟩ | hs := em (∃ a, g a = s)
  · obtain ⟨b, rfl⟩ | ht := em (∃ b, g b = t)
    · simp_rw [← sup_eq_union, ← inf_eq_inter, ← map_sup, ← map_inf, hg.extend_apply]
      exact h _ _
    · simpa [extend_apply' _ _ _ ht] using mul_nonneg
        (extend_nonneg (fun a : L ↦ h₃ a) le_rfl _) (extend_nonneg (fun a : L ↦ h₄ a) le_rfl _)
  · simpa [extend_apply' _ _ _ hs] using mul_nonneg
      (extend_nonneg (fun a : L ↦ h₃ a) le_rfl _) (extend_nonneg (fun a : L ↦ h₄ a) le_rfl _)

/-- An inequality of Daykin. Interestingly, any lattice in which this inequality holds is
distributive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant5525c49b31805acd5cdfa8ac675b7ba1985b2c60e3b4357678a6e6b06970d486.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adc34eaf2b1dbafd34da9d2464810e6fb854e024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
