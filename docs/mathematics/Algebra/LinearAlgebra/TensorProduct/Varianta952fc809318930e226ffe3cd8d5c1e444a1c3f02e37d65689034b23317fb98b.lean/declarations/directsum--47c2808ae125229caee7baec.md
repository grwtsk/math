# directSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6810a2fb03430fc45c9272a21c10574e63cde04785860d02a9b0887f2ecb6156",
  "kind": "def",
  "lexical_name": "directSum",
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
  "slug": "directsum--47c2808ae125229caee7baec",
  "source": {
    "blob": "690484c2b1f9159b84897de6fd7694db5b4b3a6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47c2808ae125229caee7baec2c9a0e35cb98fc483f16c6df6e6077d7340627c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6810a2fb03430fc45c9272a21c10574e63cde04785860d02a9b0887f2ecb6156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def directSum :
    ((⨁ i₁, M₁ i₁) ⊗[R] ⨁ i₂, M₂ i₂) ≃ₗ[R] ⨁ i : ι₁ × ι₂, M₁ i.1 ⊗[R] M₂ i.2 := by
  -- porting note: entirely rewritten to allow unification to happen one step at a time
  refine LinearEquiv.ofLinear (R := R) (R₂ := R) ?toFun ?invFun ?left ?right
  · refine lift ?_
    refine DirectSum.toModule R _ _ fun i₁ => ?_
    refine @LinearMap.flip R _ R _ R _ R _ _ _ _ _ _ _ _ _ _ _ _ _ _ ?_
    refine DirectSum.toModule R _ _ fun i₂ => LinearMap.flip <| ?_
    refine curry ?_
    exact DirectSum.lof R (ι₁ × ι₂) (fun i => M₁ i.1 ⊗[R] M₂ i.2) (i₁, i₂)
  · refine DirectSum.toModule R _ _ fun i => ?_
    exact map (DirectSum.lof R _ M₁ i.1) (DirectSum.lof R _ M₂ i.2)
  · refine DirectSum.linearMap_ext R fun ⟨i₁, i₂⟩ => ?_
    refine TensorProduct.ext ?_
    refine LinearMap.ext₂ fun m₁ m₂ => ?_
    -- porting note: seems much nicer than the `repeat` lean 3 proof.
    simp only [compr₂_apply, comp_apply, id_apply, mk_apply, DirectSum.toModule_lof, map_tmul,
        lift.tmul, flip_apply, curry_apply]
  · -- `(_)` prevents typeclass search timing out on problems that can be solved immediately by
    -- unification
    refine TensorProduct.ext ?_
    refine @DirectSum.linearMap_ext R _ _ _ _ _ _ _ _ (_) _ _ fun i₁ => ?_
    refine @LinearMap.ext _ _ _ _ _ _ _ _ (_) (_) _ _ _ fun x₁ => ?_
    refine @DirectSum.linearMap_ext R _ _ _ _ _ _ _ _ (_) _ _ fun i₂ => ?_
    refine LinearMap.ext fun x₂ => ?_
    -- porting note: seems much nicer than the `repeat` lean 3 proof.
    simp only [compr₂_apply, comp_apply, id_apply, mk_apply, DirectSum.toModule_lof, map_tmul,
        lift.tmul, flip_apply, curry_apply]
  /- was:

    refine'
      LinearEquiv.ofLinear
        (lift <|
          DirectSum.toModule R _ _ fun i₁ => LinearMap.flip <| DirectSum.toModule R _ _ fun i₂ =>
                LinearMap.flip <| curry <|
                  DirectSum.lof R (ι₁ × ι₂) (fun i => M₁ i.1 ⊗[R] M₂ i.2) (i₁, i₂))
        (DirectSum.toModule R _ _ fun i => map (DirectSum.lof R _ _ _) (DirectSum.lof R _ _ _)) _
        _ <;>
    [ext ⟨i₁, i₂⟩ x₁ x₂ : 4, ext i₁ i₂ x₁ x₂ : 5]
  repeat'
    first
      |rw [compr₂_apply]|rw [comp_apply]|rw [id_apply]|rw [mk_apply]|rw [DirectSum.toModule_lof]
      |rw [map_tmul]|rw [lift.tmul]|rw [flip_apply]|rw [curry_apply]
  -/

/- alternative with explicit types:
  refine'
      LinearEquiv.ofLinear
        (lift <|
          DirectSum.toModule
            (R := R) (M := M₁) (N := (⨁ i₂, M₂ i₂) →ₗ[R] ⨁ i : ι₁ × ι₂, M₁ i.1 ⊗[R] M₂ i.2)
            (φ := fun i₁ => LinearMap.flip <|
              DirectSum.toModule (R := R) (M := M₂) (N := ⨁ i : ι₁ × ι₂, M₁ i.1 ⊗[R] M₂ i.2)
              (φ := fun i₂ => LinearMap.flip <| curry <|
                  DirectSum.lof R (ι₁ × ι₂) (fun i => M₁ i.1 ⊗[R] M₂ i.2) (i₁, i₂))))
        (DirectSum.toModule
          (R := R)
          (M := fun i : ι₁ × ι₂ => M₁ i.1 ⊗[R] M₂ i.2)
          (N := (⨁ i₁, M₁ i₁) ⊗[R] ⨁ i₂, M₂ i₂)
          (φ := fun i : ι₁ × ι₂ => map (DirectSum.lof R _ M₁ i.1) (DirectSum.lof R _ M₂ i.2))) _
        _ <;>
    [ext ⟨i₁, i₂⟩ x₁ x₂ : 4, ext i₁ i₂ x₁ x₂ : 5]
  repeat'
    first
      |rw [compr₂_apply]|rw [comp_apply]|rw [id_apply]|rw [mk_apply]|rw [DirectSum.toModule_lof]
      |rw [map_tmul]|rw [lift.tmul]|rw [flip_apply]|rw [curry_apply]
-/
#align tensor_product.direct_sum TensorProduct.directSum

/-- Tensor products distribute over a direct sum on the left . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta952fc809318930e226ffe3cd8d5c1e444a1c3f02e37d65689034b23317fb98b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690484c2b1f9159b84897de6fd7694db5b4b3a6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
