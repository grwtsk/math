# isPointwiseRightKanExtensionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bd533e81b22db1de707f3704a82360e8f17716f35c7103977219d4b89cacc8b",
  "kind": "def",
  "lexical_name": "isPointwiseRightKanExtensionAt",
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
  "slug": "ispointwiserightkanextensionat--650b3b7c14b3b00fa7828b6e",
  "source": {
    "blob": "f250e992a8f4bdab94da53a9e7001c8b55943b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf74d9a608d34e73562941a86898bf16200ada6b0c44ec9e65499455870e89f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:650b3b7c14b3b00fa7828b6e1c1960f1f2244bf78bfbb5dea3af639c01863e58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf74d9a608d34e73562941a86898bf16200ada6b0c44ec9e65499455870e89f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bd533e81b22db1de707f3704a82360e8f17716f35c7103977219d4b89cacc8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPointwiseRightKanExtensionAt (n : ℕ) :
    (rightExtensionInclusion X 2).IsPointwiseRightKanExtensionAt ⟨⦋n⦌⟩ where
  lift s := ↾fun x ↦ lift sx s x
  fac s j := by
    ext x
    obtain ⟨⟨i, hi⟩, ⟨f : _ ⟶ _⟩, rfl⟩ := j.mk_surjective
    obtain ⟨i, rfl⟩ : ∃ j, ⦋j⦌ = i := ⟨_, i.mk_len⟩
    dsimp at hi ⊢
    apply sx.spineInjective
    ext k
    · dsimp only [spineEquiv, Equiv.coe_fn_mk]
      rw [dsimp% show op f = f.op from rfl]
      rw [spine_map_vertex, spine_spineToSimplex_apply, spine_vertex]
      let α : strArrowMk₂ f hi ⟶ strArrowMk₂ (⦋0⦌.const ⦋n⦌ (f.toOrderHom k)) :=
        StructuredArrow.homMk ((Hom.tr (⦋0⦌.const _ (by exact k))).op) (by simp; rfl)
      exact ConcreteCategory.congr_hom (s.w α).symm x
    · dsimp only [spineEquiv, Equiv.coe_fn_mk, spine_arrow]
      rw [← Functor.map_comp_apply]
      let α : strArrowMk₂ f ⟶ strArrowMk₂ (mkOfSucc k ≫ f) :=
        StructuredArrow.homMk (Hom.tr (mkOfSucc k)).op (by simp)
      exact (isPointwiseRightKanExtensionAt.fac_aux₃ _ _ _ _).trans
        (ConcreteCategory.congr_hom (s.w α).symm x)
  uniq s m hm := by
    ext x
    apply sx.spineInjective (X := X)
    -- simp? [spineEquiv] says:
    simp only [spineEquiv, RightExtension.coneAt_pt, rightExtensionInclusion_left,
      TypeCat.Fun.toFun_apply, Equiv.coe_fn_mk, lift, Nat.reduceAdd, ObjectProperty.ι_obj,
      const_obj_obj, comp_obj, proj_obj, mk_right, op_obj, TypeCat.hom_ofHom, TypeCat.Fun.coe_mk,
      spine_spineToSimplex_apply]
    ext i
    · exact ConcreteCategory.congr_hom (hm (StructuredArrow.mk
        (Y := op ⦋0⦌₂) (⦋0⦌.const ⦋n⦌ i).op)) x
    · exact ConcreteCategory.congr_hom (hm (.mk (Y := op ⦋1⦌₂)
        (.op (mkOfLe _ _ (Fin.castSucc_le_succ i))))) x

/-- Since `StrictSegal.isPointwiseRightKanExtensionAt` proves that the appropriate
cones are limit cones, `rightExtensionInclusion X 2` is a pointwise right Kan extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf74d9a608d34e73562941a86898bf16200ada6b0c44ec9e65499455870e89f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf74d9a608d34e73562941a86898bf16200ada6b0c44ec9e65499455870e89f2a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f250e992a8f4bdab94da53a9e7001c8b55943b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
