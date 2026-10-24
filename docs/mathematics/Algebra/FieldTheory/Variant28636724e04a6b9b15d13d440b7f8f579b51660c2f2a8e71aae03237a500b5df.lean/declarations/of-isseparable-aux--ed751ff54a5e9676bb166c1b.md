# of_isSeparable_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9938e31a-f2fb-831a-821d-d34ae8c38608",
  "kind": "theorem",
  "lexical_name": "of_isSeparable_aux",
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
  "slug": "of-isseparable-aux--ed751ff54a5e9676bb166c1b",
  "source": {
    "blob": "d9a9653907ee03dec489f24bf8ebe8cc92893dd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 57,
    "path": "GRWTSK/Algebra/Field/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed751ff54a5e9676bb166c1bbd3ddc9e4d98b40f7bf02093a398aeaf2d94deb2",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9938e31a-f2fb-831a-821d-d34ae8c38608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_isSeparable_aux [Algebra.IsSeparable K L] [EssFiniteType K L] :
    FormallyEtale K L := by
  -- We already know that for field extensions
  -- IsSeparable + EssFiniteType => FormallyUnramified + Finite
  have := FormallyUnramified.of_isSeparable K L
  have := FormallyUnramified.finite_of_free (R := K) (S := L)
  constructor
  -- We shall show that any `f : L → B/I` can be lifted to `L → B` if `I^2 = ⊥`
  intros B _ _ I h
  refine ⟨FormallyUnramified.iff_comp_injective.mp (FormallyUnramified.of_isSeparable K L) I h, ?_⟩
  intro f
  -- By separability and finiteness, we may assume `L = K(α)` with `p` the minpoly of `α`.
  let pb := Field.powerBasisOfFiniteOfSeparable K L
  -- Let `x : B` such that `f(α) = x` in `B / I`.
  obtain ⟨x, hx⟩ := Ideal.Quotient.mk_surjective (f pb.gen)
  have helper : ∀ x, IsScalarTower.toAlgHom K B (B ⧸ I) x = Ideal.Quotient.mk I x := fun _ ↦ rfl
  -- Then `p(x) = 0 mod I`, and the goal is to find some `ε ∈ I` such that
  -- `p(x + ε) = p(x) + ε p'(x) = 0`, and we will get our lift into `B`.
  have hx' : Ideal.Quotient.mk I (aeval x (minpoly K pb.gen)) = 0 := by
    rw [← helper, ← aeval_algHom_apply, helper, hx, aeval_algHom_apply, minpoly.aeval, map_zero]
  -- Since `p` is separable, `-p'(x)` is invertible in `B ⧸ I`,
  obtain ⟨u, hu⟩ : ∃ u, (aeval x) (derivative (minpoly K pb.gen)) * u + 1 ∈ I := by
    have := (isUnit_iff_ne_zero.mpr ((Algebra.IsSeparable.isSeparable K
      pb.gen).aeval_derivative_ne_zero (minpoly.aeval K _))).map f
    rw [← aeval_algHom_apply, ← hx, ← helper, aeval_algHom_apply, helper] at this
    obtain ⟨u, hu⟩ := Ideal.Quotient.mk_surjective (-this.unit⁻¹ : B ⧸ I)
    use u
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_add, map_mul, map_one, hu, mul_neg,
      IsUnit.mul_val_inv, neg_add_cancel]
  -- And `ε = p(x)/(-p'(x))` works.
  use pb.liftEquiv.symm ⟨x + u * aeval x (minpoly K pb.gen), ?_⟩
  · apply pb.algHom_ext
    simp [hx, hx']
  · rw [← eval_map_algebraMap, Polynomial.eval_add_of_sq_eq_zero, derivative_map,
      ← one_mul (eval x _), eval_map_algebraMap, eval_map_algebraMap, ← mul_assoc, ← add_mul,
      ← Ideal.mem_bot, ← h, pow_two, add_comm]
    · exact Ideal.mul_mem_mul hu (Ideal.Quotient.eq_zero_iff_mem.mp hx')
    rw [← Ideal.mem_bot, ← h]
    apply Ideal.pow_mem_pow
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, hx', mul_zero]

open scoped IntermediateField in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant28636724e04a6b9b15d13d440b7f8f579b51660c2f2a8e71aae03237a500b5df.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9a9653907ee03dec489f24bf8ebe8cc92893dd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
