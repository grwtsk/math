# ringQuot_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc43eae6-ca93-a889-5c69-49f228d36353",
  "kind": "theorem",
  "lexical_name": "ringQuot_ext'",
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
  "slug": "ringquot-ext--b37976b3b5592c649329d7dc",
  "source": {
    "blob": "56fdf476b4b90f00ae150f20a1e526a7eb20cf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 650,
    "path": "GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37976b3b5592c649329d7dc455f12725c477df31ab835a5fb50d415f9f30568",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc43eae6-ca93-a889-5c69-49f228d36353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringQuot_ext' {s : A → A → Prop} (f g : RingQuot s →ₐ[S] B)
    (w : f.comp (mkAlgHom S s) = g.comp (mkAlgHom S s)) : f = g := by
  ext x
  rcases mkAlgHom_surjective S s x with ⟨x, rfl⟩
  exact AlgHom.congr_fun w x
#align ring_quot.ring_quot_ext' RingQuot.ringQuot_ext'

irreducible_def preLiftAlgHom {s : A → A → Prop} { f : A →ₐ[S] B }
  (h : ∀ ⦃x y⦄, s x y → f x = f y) : RingQuot s →ₐ[S] B :=
{ toFun := fun x ↦ Quot.lift f
            (by
              rintro _ _ r
              induction r with
              | of r => exact h r
              | add_left _ r' => simp only [map_add, r']
              | mul_left _ r' => simp only [map_mul, r']
              | mul_right _ r' => simp only [map_mul, r'])
            x.toQuot
  map_zero' := by simp only [← zero_quot, f.map_zero]
  map_add' := by
    rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
    simp only [add_quot, f.map_add x y]
  map_one' := by simp only [← one_quot, f.map_one]
  map_mul' := by
    rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
    simp only [mul_quot, f.map_mul x y]
  commutes' := by
    rintro x
    simp [← one_quot, smul_quot, Algebra.algebraMap_eq_smul_one] }

/-- Any `S`-algebra homomorphism `f : A →ₐ[S] B` which respects a relation `s : A → A → Prop`
factors uniquely through a morphism `RingQuot s →ₐ[S] B`.
-/
irreducible_def liftAlgHom {s : A → A → Prop} :
  { f : A →ₐ[S] B // ∀ ⦃x y⦄, s x y → f x = f y } ≃ (RingQuot s →ₐ[S] B) :=
  { toFun := fun f' ↦ preLiftAlgHom _ f'.prop
    invFun := fun F ↦ ⟨F.comp (mkAlgHom S s), fun _ _ h ↦ congr_arg F (mkAlgHom_rel S h)⟩
    left_inv := fun f ↦ by
      ext
      simp only [preLiftAlgHom_def, mkAlgHom_def, mkRingHom_def, RingHom.toMonoidHom_eq_coe,
                 RingHom.coe_monoidHom_mk, AlgHom.coe_comp, AlgHom.coe_mk, RingHom.coe_mk,
                 MonoidHom.coe_mk, OneHom.coe_mk, Function.comp_apply]
    right_inv := fun F ↦ by
      ext
      simp only [preLiftAlgHom_def, mkAlgHom_def, mkRingHom_def, RingHom.toMonoidHom_eq_coe,
                 RingHom.coe_monoidHom_mk, AlgHom.coe_comp, AlgHom.coe_mk, RingHom.coe_mk,
                 MonoidHom.coe_mk, OneHom.coe_mk, Function.comp_apply] }
#align ring_quot.lift_alg_hom RingQuot.liftAlgHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fdf476b4b90f00ae150f20a1e526a7eb20cf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
