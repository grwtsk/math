# posPart_negPart_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b14d560-1e28-1e63-631f-b12719838f7e",
  "kind": "lemma",
  "lexical_name": "posPart_negPart_unique",
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
  "slug": "pospart-negpart-unique--a450e28d38516ee20659d3be",
  "source": {
    "blob": "a1d22aa56e9317143d3dc58f51a2e9acaad0a196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 227,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a450e28d38516ee20659d3be4f993f9492d36e2e80cd2a46bea9f9fa1edce7fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b14d560-1e28-1e63-631f-b12719838f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma posPart_negPart_unique {a b c : A} (habc : a = b - c) (hbc : b * c = 0)
    (hb : 0 ≤ b := by cfc_tac) (hc : 0 ≤ c := by cfc_tac) :
    a⁺ = b ∧ a⁻ = c := by
  /- The key idea is to show that `cfcₙ f a = cfcₙ f b + cfcₙ f (-c)` for all real-valued `f`
  continuous on the union of the spectra of `a`, `b`, and `-c`. Then apply this to `f = (·⁺)`.
  The equality holds because both sides constitute star homomorphisms which agree on `f = id` since
  `a = b - c`. -/
  /- `a`, `b`, `-c` are selfadjoint. -/
  have hb' : IsSelfAdjoint b := .of_nonneg hb
  have hc' : IsSelfAdjoint (-c) := .neg <| .of_nonneg hc
  have ha : IsSelfAdjoint a := habc ▸ hb'.sub <| .of_nonneg hc
  /- It suffices to show `b = a⁺` since `a⁺ - a⁻ = a = b - c` -/
  rw [and_iff_left_of_imp ?of_b_eq]
  case of_b_eq =>
    rintro rfl
    exact negPart_eq_of_eq_PosPart_sub habc hc
  /- `s := σₙ ℝ a ∪ σₙ ℝ b ∪ σₙ ℝ (-c)` is compact and each of these sets are subsets of `s`.
  Moreover, `0 ∈ s`. -/
  let s := σₙ ℝ a ∪ σₙ ℝ b ∪ σₙ ℝ (-c)
  have hs : CompactSpace s := by
    refine isCompact_iff_compactSpace.mp <| (IsCompact.union ?_ ?_).union ?_
    all_goals exact isCompact_quasispectrum _
  obtain ⟨has, hbs, hcs⟩ : σₙ ℝ a ⊆ s ∧ σₙ ℝ b ⊆ s ∧ σₙ ℝ (-c) ⊆ s := by
    refine ⟨?_, ?_, ?_⟩; all_goals intro; aesop
  let zero : Zero s := ⟨0, by aesop⟩
  have s0 : (0 : s) = (0 : ℝ) := rfl
  /- The continuous functional calculi for functions `f g : C(s, ℝ)₀` applied to `b` and `(-c)`
  are orthogonal (i.e., the product is always zero). -/
  have mul₁ (f g : C(s, ℝ)₀) :
      (cfcₙHomSuperset hb' hbs f) * (cfcₙHomSuperset hc' hcs g) = 0 := by
    refine f.nonUnitalStarAlgHom_apply_mul_eq_zero s0 _ _ ?id ?star_id
      (cfcₙHomSuperset_continuous hb' hbs)
    case' star_id => rw [star_trivial]
    all_goals
      refine g.mul_nonUnitalStarAlgHom_apply_eq_zero s0 _ _ ?_ ?_
        (cfcₙHomSuperset_continuous hc' hcs)
      all_goals simp only [zero, star_trivial, cfcₙHomSuperset_id' hb' hbs,
        cfcₙHomSuperset_id' hc' hcs, mul_neg, hbc, neg_zero]
  have mul₂ (f g : C(s, ℝ)₀) : (cfcₙHomSuperset hc' hcs f) * (cfcₙHomSuperset hb' hbs g) = 0 := by
    simpa only [star_mul, star_zero, ← map_star, star_trivial] using congr(star $(mul₁ g f))
  /- `fun f ↦ cfcₙ f b + cfcₙ f (-c)` defines a star homomorphism `ψ : C(s, ℝ)₀ →⋆ₙₐ[ℝ] A` which
  agrees with the star homomorphism `cfcₙ · a : C(s, ℝ)₀ →⋆ₙₐ[ℝ] A` since
  `cfcₙ id a = a = b - c = cfcₙ id b + cfcₙ id (-c)`. -/
  let ψ : C(s, ℝ)₀ →⋆ₙₐ[ℝ] A :=
    { (cfcₙHomSuperset hb' hbs : C(s, ℝ)₀ →ₗ[ℝ] A) + (cfcₙHomSuperset hc' hcs : C(s, ℝ)₀ →ₗ[ℝ] A)
        with
      toFun := cfcₙHomSuperset hb' hbs + cfcₙHomSuperset hc' hcs
      map_zero' := by simp [-cfcₙHomSuperset_apply]
      map_mul' := fun f g ↦ by
        simp only [zero, Pi.add_apply, map_mul, mul_add, add_mul, mul₂, add_zero, mul₁,
          zero_add]
      map_star' := fun f ↦ by simp [← map_star] }
  have key : (cfcₙHomSuperset ha has) = ψ :=
    have : ContinuousMapZero.UniqueHom ℝ A := inferInstance
    ContinuousMapZero.UniqueHom.eq_of_continuous_of_map_id s rfl
    (cfcₙHomSuperset ha has) ψ (cfcₙHomSuperset_continuous ha has)
    ((cfcₙHomSuperset_continuous hb' hbs).add (cfcₙHomSuperset_continuous hc' hcs))
    (by simpa [zero, ψ, -cfcₙHomSuperset_apply, cfcₙHomSuperset_id, sub_eq_add_neg] using habc)
  /- Applying the equality of star homomorphisms to the function `(·⁺ : ℝ → ℝ)` we find that
  `b = cfcₙ id b + cfcₙ 0 (-c) = cfcₙ (·⁺) b - cfcₙ (·⁺) (-c) = cfcₙ (·⁺) a = a⁺`, where the
  second equality follows because these functions are equal on the spectra of `b` and `-c`,
  respectively, since `0 ≤ b` and `-c ≤ 0`. -/
  let f : C(s, ℝ)₀ := ⟨⟨(·⁺), by fun_prop⟩, by simp [s0]⟩
  replace key := congr($key f)
  simp only [cfcₙHomSuperset_apply, NonUnitalStarAlgHom.coe_mk', NonUnitalAlgHom.coe_mk, ψ,
    Pi.add_apply, cfcₙHom_eq_cfcₙ_extend (·⁺)] at key
  symm
  calc
    b = cfcₙ (id : ℝ → ℝ) b + cfcₙ (0 : ℝ → ℝ) (-c) := by simp [cfcₙ_id ℝ b]
    _ = _ := by
      congr! 1
      all_goals
        refine cfcₙ_congr fun x hx ↦ Eq.symm ?_
        lift x to σₙ ℝ _ using hx
        simp only [zero, Subtype.val_injective.extend_apply, comp_apply, coe_mk,
          ContinuousMap.coe_mk, Subtype.map_coe, id_eq, _root_.posPart_eq_self, f, Pi.zero_apply,
          posPart_eq_zero]
      · exact quasispectrum_nonneg_of_nonneg b hb x.val x.property
      · obtain ⟨x, hx⟩ := x
        simp only [← neg_nonneg]
        rw [Unitization.quasispectrum_eq_spectrum_inr ℝ (-c), Unitization.inr_neg,
          ← spectrum.neg_eq, Set.mem_neg, ← Unitization.quasispectrum_eq_spectrum_inr ℝ c]
          at hx
        exact quasispectrum_nonneg_of_nonneg c hc _ hx
    _ = _ := key.symm
    _ = a⁺ := by
      refine cfcₙ_congr fun x hx ↦ ?_
      lift x to σₙ ℝ a using hx
      simp [zero, Subtype.val_injective.extend_apply, f]

end CFC

end NonUnital

section Unital

namespace CFC

variable {A : Type*} [Ring A] [Algebra ℝ A] [StarRing A] [TopologicalSpace A]
variable [ContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
variable [T2Space A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1d22aa56e9317143d3dc58f51a2e9acaad0a196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
