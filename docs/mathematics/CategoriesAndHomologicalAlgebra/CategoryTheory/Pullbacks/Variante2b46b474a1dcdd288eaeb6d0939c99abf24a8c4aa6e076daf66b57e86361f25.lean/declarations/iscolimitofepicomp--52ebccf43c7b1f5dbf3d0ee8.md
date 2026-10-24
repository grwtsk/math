# isColimitOfEpiComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f5c590938cede4a7c5b37abac08d8e3e4b4796c1e5faf52f234567972153855",
  "kind": "def",
  "lexical_name": "isColimitOfEpiComp",
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
  "slug": "iscolimitofepicomp--52ebccf43c7b1f5dbf3d0ee8",
  "source": {
    "blob": "f0e213a7cac9ef82a6b92e3d57f0854ef406a36c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1031,
    "line": 1006,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52ebccf43c7b1f5dbf3d0ee8a6dbc12e477d8bc9022725250b2610a327e7420b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f5c590938cede4a7c5b37abac08d8e3e4b4796c1e5faf52f234567972153855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1031.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfEpiComp (f : X ⟶ Y) (g : X ⟶ Z) (h : W ⟶ X) [Epi h] (s : PushoutCocone f g)
    (H : IsColimit s) :
    IsColimit
      (PushoutCocone.mk _ _
        (show (h ≫ f) ≫ s.inl = (h ≫ g) ≫ s.inr by
          rw [Category.assoc, Category.assoc, s.condition])) := by
  apply PushoutCocone.isColimitAux'
  intro s
  rcases PushoutCocone.IsColimit.desc' H s.inl s.inr
      ((cancel_epi h).mp (by simpa using s.condition)) with
    ⟨l, h₁, h₂⟩
  refine' ⟨l, h₁, h₂, _⟩
  intro m hm₁ hm₂
  exact (PushoutCocone.IsColimit.hom_ext H (hm₁.trans h₁.symm) (hm₂.trans h₂.symm) : _)
#align category_theory.limits.pushout_cocone.is_colimit_of_epi_comp CategoryTheory.Limits.PushoutCocone.isColimitOfEpiComp

end PushoutCocone

/-- This is a helper construction that can be useful when verifying that a category has all
    pullbacks. Given `F : WalkingCospan ⥤ C`, which is really the same as
    `cospan (F.map inl) (F.map inr)`, and a pullback cone on `F.map inl` and `F.map inr`, we
    get a cone on `F`.

    If you're thinking about using this, have a look at `hasPullbacks_of_hasLimit_cospan`,
    which you may find to be an easier way of achieving your goal. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variante2b46b474a1dcdd288eaeb6d0939c99abf24a8c4aa6e076daf66b57e86361f25.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e213a7cac9ef82a6b92e3d57f0854ef406a36c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
