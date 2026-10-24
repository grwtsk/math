# sheafEquivOfCoverPreservingCoverLifting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e5e64ae3fd0d98e4c5a29f6f6d46c1100d74e97e05fb722581613128433b633",
  "kind": "def",
  "lexical_name": "sheafEquivOfCoverPreservingCoverLifting",
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
  "slug": "sheafequivofcoverpreservingcoverlifting--ce20c0e53560825c0222bf01",
  "source": {
    "blob": "2c57abdb7f0afcf62a5be016bc7845b4366895f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 520,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce20c0e53560825c0222bf01969e6489fe9eda29eb55d19be52f6a88eb7b0474",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e5e64ae3fd0d98e4c5a29f6f6d46c1100d74e97e05fb722581613128433b633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sheafEquivOfCoverPreservingCoverLifting : Sheaf J A ≌ Sheaf K A := by
  symm
  let α := Sites.pullbackCopullbackAdjunction.{w, v, u} A Hp Hl Hd.compatiblePreserving
  have : ∀ X : Sheaf J A, IsIso (α.counit.app X) := by
    intro ℱ
    -- porting note: I don't know how to do `apply_with foo { instances := ff }`
    -- so I just create the instance first
    haveI : IsIso ((sheafToPresheaf J A).map (α.counit.app ℱ)) :=
      IsIso.of_iso ((@asIso _ _ _ _ _ (Ran.reflective A G.op)).app ℱ.val)
    apply ReflectsIsomorphisms.reflects (sheafToPresheaf J A)
  -- porting note: a bunch of instances are not synthesized in lean 4 for some reason
  haveI : IsIso α.counit := NatIso.isIso_of_isIso_app _
  haveI : Full (Sites.pullback A Hd.compatiblePreserving Hp) :=
    CoverDense.Sites.Pullback.full J Hd Hp
  haveI : Faithful (Sites.pullback A Hd.compatiblePreserving Hp) :=
    CoverDense.Sites.Pullback.faithful J Hd Hp
  haveI : IsIso α.unit := CategoryTheory.unit_isIso_of_L_fully_faithful α
  exact
    { functor := Sites.pullback A Hd.compatiblePreserving Hp
      inverse := Sites.copullback A Hl
      unitIso := asIso α.unit
      counitIso := asIso α.counit
      functor_unitIso_comp := fun ℱ => by convert α.left_triangle_components }
set_option linter.uppercaseLean3 false in
#align category_theory.cover_dense.Sheaf_equiv_of_cover_preserving_cover_lifting CategoryTheory.CoverDense.sheafEquivOfCoverPreservingCoverLifting

variable
  [ConcreteCategory.{max v u} A]
  [Limits.PreservesLimits (forget A)]
  [ReflectsIsomorphisms (forget A)]
  [∀ (X : C), Limits.PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget A)]
  [∀ (X : C), Limits.HasColimitsOfShape (J.Cover X)ᵒᵖ A]
  [∀ (X : D), Limits.PreservesColimitsOfShape (K.Cover X)ᵒᵖ (forget A)]
  [∀ (X : D), Limits.HasColimitsOfShape (K.Cover X)ᵒᵖ A]

/-- The natural isomorphism exhibiting the compatibility of
`sheafEquivOfCoverPreservingCoverLifting` with sheafification. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseSubsite/Variant0e8f4ea64c7e14d26337c869e1f6b3f233766ce1028477d4f59b31eb17baa831.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c57abdb7f0afcf62a5be016bc7845b4366895f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
