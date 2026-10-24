# pushoutCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4453f515dc36868ca124c2ce069ad50e7e4e602835ecb80104baccf020860d1d",
  "kind": "def",
  "lexical_name": "pushoutCoconeIsColimit",
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
  "slug": "pushoutcoconeiscolimit--0c997219948a5d65154efbe2",
  "source": {
    "blob": "d3c674c7d72679ce6480457bf9ae24f8566d40ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 92,
    "path": "GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c997219948a5d65154efbe25b5420592669f4cbb93e33363af83e4b868666b7",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4453f515dc36868ca124c2ce069ad50e7e4e602835ecb80104baccf020860d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushoutCoconeIsColimit : Limits.IsColimit (pushoutCocone f g) :=
  Limits.PushoutCocone.isColimitAux' _ fun s => by
    letI := RingHom.toAlgebra f
    letI := RingHom.toAlgebra g
    letI := RingHom.toAlgebra (f ≫ s.inl)
    let f' : A →ₐ[R] s.pt :=
      { s.inl with
        commutes' := fun r => rfl }
    let g' : B →ₐ[R] s.pt :=
      { s.inr with
        commutes' := fun r => by
          change (g ≫ s.inr) r = (f ≫ s.inl) r
          congr 1
          exact
            (s.ι.naturality Limits.WalkingSpan.Hom.snd).trans
              (s.ι.naturality Limits.WalkingSpan.Hom.fst).symm }
    -- Porting note : Lean has forget why `A ⊗[R] B` makes sense
    letI : Algebra R A := f.toAlgebra
    letI : Algebra R B := g.toAlgebra
    letI : Algebra R (pushoutCocone f g).pt := show Algebra R (A ⊗[R] B) by infer_instance
    -- The factor map is a ⊗ b ↦ f(a) * g(b).
    use AlgHom.toRingHom (Algebra.TensorProduct.productMap f' g')
    simp only [pushoutCocone_inl, pushoutCocone_inr]
    constructor
    · ext x
      -- Porting note : Lean can't see through `forget` functor
      letI : Semiring ((forget CommRingCat).obj A) := A.str.toSemiring
      letI : Algebra R ((forget CommRingCat).obj A) := show Algebra R A by infer_instance
      exact Algebra.TensorProduct.productMap_left_apply _ _ x
    constructor
    · ext x
      -- Porting note : Lean can't see through `forget` functor
      letI : Semiring ((forget CommRingCat).obj B) := B.str.toSemiring
      letI : Algebra R ((forget CommRingCat).obj B) := show Algebra R B by infer_instance
      exact Algebra.TensorProduct.productMap_right_apply _ _ x
    intro h eq1 eq2
    let h' : A ⊗[R] B →ₐ[R] s.pt :=
      { h with
        commutes' := fun r => by
          change h (f r ⊗ₜ[R] 1) = s.inl (f r)
          rw [← eq1]
          simp only [pushoutCocone_pt, coe_of, AlgHom.toRingHom_eq_coe]
          rfl }
    suffices h' = Algebra.TensorProduct.productMap f' g' by
      ext x
      change h' x = Algebra.TensorProduct.productMap f' g' x
      rw [this]
    apply Algebra.TensorProduct.ext'
    intro a b
    simp only [PushoutCocone.ι_app_left, pushoutCocone_pt, coe_of, RingHom.toMonoidHom_eq_coe,
      AlgHom.coe_mk, RingHom.coe_mk, MonoidHom.coe_coe, ← eq1, AlgHom.toRingHom_eq_coe,
      PushoutCocone.ι_app_right, ← eq2, Algebra.TensorProduct.productMap_apply_tmul]
    change _ = h (a ⊗ₜ 1) * h (1 ⊗ₜ b)
    rw [←h.map_mul, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rfl
set_option linter.uppercaseLean3 false in
#align CommRing.pushout_cocone_is_colimit CommRingCat.pushoutCoconeIsColimit

end Pushout

section Terminal

/-- The trivial ring is the (strict) terminal object of `CommRingCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variant111f44ee08a2e7897fd2a492d9a743338b706dbea6e3457f5bdb5a4b046bdbf2.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3c674c7d72679ce6480457bf9ae24f8566d40ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
