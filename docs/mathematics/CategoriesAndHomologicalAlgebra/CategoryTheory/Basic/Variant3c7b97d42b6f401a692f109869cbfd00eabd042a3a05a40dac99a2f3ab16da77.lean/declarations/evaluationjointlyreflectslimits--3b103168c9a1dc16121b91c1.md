# evaluationJointlyReflectsLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2106bfe83d305cfc0895eb8549be156844a6579eeeec3751ccf9f9abe02b29f5",
  "kind": "def",
  "lexical_name": "evaluationJointlyReflectsLimits",
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
  "slug": "evaluationjointlyreflectslimits--3b103168c9a1dc16121b91c1",
  "source": {
    "blob": "b61371effdaf1f461f54523c8b1d3ab9421168a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3c7b97d42b6f401a692f109869cbfd00eabd042a3a05a40dac99a2f3ab16da77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b103168c9a1dc16121b91c116a48a41dafd8a6f70746cc070099b01d72d4032",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3c7b97d42b6f401a692f109869cbfd00eabd042a3a05a40dac99a2f3ab16da77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2106bfe83d305cfc0895eb8549be156844a6579eeeec3751ccf9f9abe02b29f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evaluationJointlyReflectsLimits {F : J ⥤ K ⥤ C} (c : Cone F)
    (t : ∀ k : K, IsLimit (((evaluation K C).obj k).mapCone c)) : IsLimit c where
  lift s :=
    { app := fun k => (t k).lift ⟨s.pt.obj k, whiskerRight s.π ((evaluation K C).obj k)⟩
      naturality := fun X Y f =>
        (t Y).hom_ext fun j => by
          rw [assoc, (t Y).fac _ j]
          simpa using
            ((t X).fac_assoc ⟨s.pt.obj X, whiskerRight s.π ((evaluation K C).obj X)⟩ j _).symm }
  fac s j := by ext k; exact (t k).fac _ j
  uniq s m w := by
    ext x
    exact (t x).hom_ext fun j =>
      (congr_app (w j) x).trans
        ((t x).fac ⟨s.pt.obj _, whiskerRight s.π ((evaluation K C).obj _)⟩ j).symm

/-- Given a functor `F` and a collection of limit cones for each diagram `X ↦ F X k`, we can stitch
them together to give a cone for the diagram `F`.
`combinedIsLimit` shows that the new cone is limiting, and `evalCombined` shows it is
(essentially) made up of the original cones.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3c7b97d42b6f401a692f109869cbfd00eabd042a3a05a40dac99a2f3ab16da77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3c7b97d42b6f401a692f109869cbfd00eabd042a3a05a40dac99a2f3ab16da77.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b61371effdaf1f461f54523c8b1d3ab9421168a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
