# card_complex_roots_eq_card_real_add_card_not_gal_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:947cfa30-2f9f-5e96-12d8-c1b3ec28bc1c",
  "kind": "theorem",
  "lexical_name": "card_complex_roots_eq_card_real_add_card_not_gal_inv",
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
  "slug": "card-complex-roots-eq-card-real-add-card-not-gal-inv--8ca41dcf3440dcee10f3b9ea",
  "source": {
    "blob": "1688d4383f6337c54520d0b343870d96a7f7172e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 446,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ca41dcf3440dcee10f3b9eaeede39d1fea3369e19085053655c89b61f986391",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:947cfa30-2f9f-5e96-12d8-c1b3ec28bc1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_complex_roots_eq_card_real_add_card_not_gal_inv (p : ℚ[X]) :
    (p.rootSet ℂ).toFinset.card =
      (p.rootSet ℝ).toFinset.card +
        (galActionHom p ℂ (restrict p ℂ
        (AlgEquiv.restrictScalars ℚ Complex.conjAe))).support.card := by
  by_cases hp : p = 0
  · haveI : IsEmpty (p.rootSet ℂ) := by rw [hp, rootSet_zero]; infer_instance
    simp_rw [(galActionHom p ℂ _).support.eq_empty_of_isEmpty, hp, rootSet_zero,
      Set.toFinset_empty, Finset.card_empty]
  have inj : Function.Injective (IsScalarTower.toAlgHom ℚ ℝ ℂ) := (algebraMap ℝ ℂ).injective
  rw [← Finset.card_image_of_injective _ Subtype.coe_injective, ←
    Finset.card_image_of_injective _ inj]
  let a : Finset ℂ := ?_
  let b : Finset ℂ := ?_
  let c : Finset ℂ := ?_
  -- Porting note: was
  --   change a.card = b.card + c.card
  suffices a.card = b.card + c.card by exact this
  have ha : ∀ z : ℂ, z ∈ a ↔ aeval z p = 0 := by
    intro z; rw [Set.mem_toFinset, mem_rootSet_of_ne hp]
  have hb : ∀ z : ℂ, z ∈ b ↔ aeval z p = 0 ∧ z.im = 0 := by
    intro z
    simp_rw [Finset.mem_image, Set.mem_toFinset, mem_rootSet_of_ne hp]
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact ⟨by rw [aeval_algHom_apply, hw, AlgHom.map_zero], rfl⟩
    · rintro ⟨hz1, hz2⟩
      have key : IsScalarTower.toAlgHom ℚ ℝ ℂ z.re = z := by ext; rfl; rw [hz2]; rfl
      exact ⟨z.re, inj (by rwa [← aeval_algHom_apply, key, AlgHom.map_zero]), key⟩
  have hc0 :
    ∀ w : p.rootSet ℂ, galActionHom p ℂ (restrict p ℂ (Complex.conjAe.restrictScalars ℚ)) w = w ↔
        w.val.im = 0 := by
    intro w
    rw [Subtype.ext_iff, galActionHom_restrict]
    exact Complex.conj_eq_iff_im
  have hc : ∀ z : ℂ, z ∈ c ↔ aeval z p = 0 ∧ z.im ≠ 0 := by
    intro z
    simp_rw [Finset.mem_image]
    constructor
    · rintro ⟨w, hw, rfl⟩
      exact ⟨(mem_rootSet.mp w.2).2, mt (hc0 w).mpr (Equiv.Perm.mem_support.mp hw)⟩
    · rintro ⟨hz1, hz2⟩
      exact ⟨⟨z, mem_rootSet.mpr ⟨hp, hz1⟩⟩, Equiv.Perm.mem_support.mpr (mt (hc0 _).mp hz2), rfl⟩
  rw [← Finset.card_disjoint_union]
  · apply congr_arg Finset.card
    simp_rw [Finset.ext_iff, Finset.mem_union, ha, hb, hc]
    tauto
  · rw [Finset.disjoint_left]
    intro z
    rw [hb, hc]
    tauto
#align polynomial.gal.card_complex_roots_eq_card_real_add_card_not_gal_inv Polynomial.Gal.card_complex_roots_eq_card_real_add_card_not_gal_inv

/-- An irreducible polynomial of prime degree with two non-real roots has full Galois group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialGaloisGroup/Variantdbe52c7d32380373acdbb4508741c9cf031de8cf0f9f0c3c5d36a0d345dfff5d.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1688d4383f6337c54520d0b343870d96a7f7172e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
