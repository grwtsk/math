# pushoutCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7006817ad146f74e0caafb1f53f54a9ef1ba825a726d7fda3bd2b21dbb040be6",
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
  "slug": "pushoutcoconeiscolimit--960e6a8d8a94d0e66c355416",
  "source": {
    "blob": "01ed6736dc8080d7b55e9be3802c4fa2311676ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 75,
    "path": "GRWTSK/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:960e6a8d8a94d0e66c355416a6df7ad6ba1f602f15adbf958c6dddd512792668",
  "verification": {
    "reference": "docs/verification/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7006817ad146f74e0caafb1f53f54a9ef1ba825a726d7fda3bd2b21dbb040be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushoutCoconeIsColimit : Limits.IsColimit (pushoutCocone R A B) :=
  Limits.PushoutCocone.isColimitAux' _ fun s => by
    letI := RingHom.toAlgebra (s.inl.hom.comp (algebraMap R A))
    let f' : A →ₐ[R] s.pt :=
      { s.inl.hom with
        commutes' := fun r => rfl }
    let g' : B →ₐ[R] s.pt :=
      { s.inr.hom with
        commutes' := DFunLike.congr_fun <| congrArg Hom.hom
          ((s.ι.naturality Limits.WalkingSpan.Hom.snd).trans
            (s.ι.naturality Limits.WalkingSpan.Hom.fst).symm) }
    letI : Algebra R (pushoutCocone R A B).pt := show Algebra R (A ⊗[R] B) by infer_instance
    -- The factor map is a ⊗ b ↦ f(a) * g(b).
    use ofHom (AlgHom.toRingHom (Algebra.TensorProduct.productMap f' g'))
    simp only [pushoutCocone_inl, pushoutCocone_inr]
    constructor
    · ext x
      exact Algebra.TensorProduct.productMap_left_apply (A := A) _ _ x
    constructor
    · ext x
      exact Algebra.TensorProduct.productMap_right_apply (B := B) _ _ x
    intro h eq1 eq2
    let h' : A ⊗[R] B →ₐ[R] s.pt :=
      { h.hom with
        commutes' := fun r => by
          change h (algebraMap R A r ⊗ₜ[R] 1) = s.inl (algebraMap R A r)
          rw [← eq1]
          simp only [pushoutCocone_pt, coe_of]
          rfl }
    suffices h' = Algebra.TensorProduct.productMap f' g' by
      ext x
      change h' x = Algebra.TensorProduct.productMap f' g' x
      rw [this]
    apply Algebra.TensorProduct.ext'
    intro a b
    simp only [f', g', ← eq1, pushoutCocone_pt, ← eq2, AlgHom.toRingHom_eq_coe,
      Algebra.TensorProduct.productMap_apply_tmul, AlgHom.coe_mk]
    change _ = h (a ⊗ₜ 1) * h (1 ⊗ₜ b)
    rw [← h.hom.map_mul, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01ed6736dc8080d7b55e9be3802c4fa2311676ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
