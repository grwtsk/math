# isPointwiseRightKanExtensionAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cebb03448d998b793bac1d9c296c5710939549f7e1a330bfd98165dfa41df83b",
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
  "slug": "ispointwiserightkanextensionat--bd977278a091d2a8638b34db",
  "source": {
    "blob": "80280570a1e8cf7f530f6e6ebe4dbab16e4503a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd977278a091d2a8638b34db83bf16cb2f1dee48bd675e40a943f16be46fe97f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cebb03448d998b793bac1d9c296c5710939549f7e1a330bfd98165dfa41df83b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isPointwiseRightKanExtensionAt (n : ℕ) :
    (rightExtensionInclusion X 2).IsPointwiseRightKanExtensionAt ⟨⦋n⦌⟩ where
  lift s x := lift sx s x
  fac s j := by
    ext x
    obtain ⟨⟨i, hi⟩, ⟨f :  _ ⟶ _⟩, rfl⟩ := j.mk_surjective
    obtain ⟨i, rfl⟩ : ∃ j, SimplexCategory.mk j = i := ⟨_, i.mk_len⟩
    dsimp at hi ⊢
    apply sx.spineInjective
    dsimp
    ext k
    · dsimp only [spineEquiv, Equiv.coe_fn_mk]
      rw [show op f = f.op from rfl]
      rw [spine_map_vertex, spine_spineToSimplex_apply, spine_vertex]
      let α : strArrowMk₂ f hi ⟶ strArrowMk₂ (⦋0⦌.const ⦋n⦌ (f.toOrderHom k)) :=
        StructuredArrow.homMk ((⦋0⦌.const _ (by exact k)).op) (by simp; rfl)
      exact congr_fun (s.w α).symm x
    · dsimp only [spineEquiv, Equiv.coe_fn_mk, spine_arrow]
      rw [← FunctorToTypes.map_comp_apply]
      let α : strArrowMk₂ f ⟶ strArrowMk₂ (mkOfSucc k ≫ f) :=
        StructuredArrow.homMk (mkOfSucc k).op (by simp; rfl)
      exact (isPointwiseRightKanExtensionAt.fac_aux₃ _ _ _ _).trans (congr_fun (s.w α).symm x)
  uniq s m hm := by
    ext x
    apply sx.spineInjective (X := X)
    dsimp [spineEquiv]
    rw [sx.spine_spineToSimplex_apply]
    ext i
    · exact congr_fun (hm (StructuredArrow.mk (Y := op ⦋0⦌₂) (⦋0⦌.const ⦋n⦌ i).op)) x
    · exact congr_fun (hm (.mk (Y := op ⦋1⦌₂) (.op (mkOfLe _ _ (Fin.castSucc_le_succ i))))) x

/-- Since `StrictSegal.isPointwiseRightKanExtensionAt` proves that the appropriate
cones are limit cones, `rightExtensionInclusion X 2` is a pointwise right Kan extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variant1c00bb081802c30ff16ac0867778475558d116ab34a52ce163122f3d4743488e.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80280570a1e8cf7f530f6e6ebe4dbab16e4503a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
