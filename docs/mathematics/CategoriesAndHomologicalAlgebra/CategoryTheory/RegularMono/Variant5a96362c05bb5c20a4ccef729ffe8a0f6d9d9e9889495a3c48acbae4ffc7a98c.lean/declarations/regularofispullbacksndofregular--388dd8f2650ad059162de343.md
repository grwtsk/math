# regularOfIsPullbackSndOfRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1b5ffc98d5ca6c509e366c4cb6d58bd54ddc6f4dfd69f7359c043eaa4fb2859",
  "kind": "def",
  "lexical_name": "regularOfIsPullbackSndOfRegular",
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
  "slug": "regularofispullbacksndofregular--388dd8f2650ad059162de343",
  "source": {
    "blob": "b9b2f2adffe0b032141ce6c09aeeaaee17971415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:388dd8f2650ad059162de343c0af0dfd9edc34c9f73aa87309fbe95824fedb51",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1b5ffc98d5ca6c509e366c4cb6d58bd54ddc6f4dfd69f7359c043eaa4fb2859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def regularOfIsPullbackSndOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [hr : RegularMono h] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk _ _ comm)) :
    RegularMono g where
  Z := hr.Z
  left := k ≫ hr.left
  right := k ≫ hr.right
  w := by
    repeat (rw [← Category.assoc, ← eq_whisker comm])
    simp only [Category.assoc, hr.w]
  isLimit := by
    apply Fork.IsLimit.mk' _ _
    intro s
    have l₁ : (Fork.ι s ≫ k) ≫ RegularMono.left = (Fork.ι s ≫ k) ≫ hr.right
    rw [Category.assoc, s.condition, Category.assoc]
    obtain ⟨l, hl⟩ := Fork.IsLimit.lift' hr.isLimit _ l₁
    obtain ⟨p, _, hp₂⟩ := PullbackCone.IsLimit.lift' t _ _ hl
    refine' ⟨p, hp₂, _⟩
    intro m w
    have z : m ≫ g = p ≫ g := w.trans hp₂.symm
    apply t.hom_ext
    apply (PullbackCone.mk f g comm).equalizer_ext
    · erw [← cancel_mono h, Category.assoc, Category.assoc, comm]
      simp only [← Category.assoc, eq_whisker z]
    · exact z
#align category_theory.regular_of_is_pullback_snd_of_regular CategoryTheory.regularOfIsPullbackSndOfRegular

/-- The first leg of a pullback cone is a regular monomorphism if the left component is too.

See also `Pullback.fstOfMono` for the basic monomorphism version, and
`regularOfIsPullbackSndOfRegular` for the flipped version.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9b2f2adffe0b032141ce6c09aeeaaee17971415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
