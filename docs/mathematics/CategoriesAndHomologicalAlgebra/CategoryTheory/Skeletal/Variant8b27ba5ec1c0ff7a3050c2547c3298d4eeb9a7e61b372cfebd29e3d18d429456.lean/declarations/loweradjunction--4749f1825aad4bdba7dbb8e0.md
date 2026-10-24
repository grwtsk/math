# lowerAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ece4f09e206cfe911e310316d3f33cf8e96028decf70683a538856cf20e9982",
  "kind": "def",
  "lexical_name": "lowerAdjunction",
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
  "slug": "loweradjunction--4749f1825aad4bdba7dbb8e0",
  "source": {
    "blob": "c193f2f2e4b0f22e8b2745c9e78a0e75b84335a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 343,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4749f1825aad4bdba7dbb8e04bc396a55af6467181c4cb372224fe1465016ccd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ece4f09e206cfe911e310316d3f33cf8e96028decf70683a538856cf20e9982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerAdjunction (R : D ⥤ C) (L : C ⥤ D) (h : L ⊣ R) : ThinSkeleton.map L ⊣ ThinSkeleton.map R :=
  Adjunction.mkOfUnitCounit
    { unit :=
        {
          app := fun X => by
            letI := isIsomorphicSetoid C
            refine' Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.unit.app x⟩ }
      -- TODO: make quotient.rec_on_subsingleton' so the letI isn't needed
      counit :=
        {
          app := fun X => by
            letI := isIsomorphicSetoid D
            refine' Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.counit.app x⟩ } }
#align category_theory.thin_skeleton.lower_adjunction CategoryTheory.ThinSkeleton.lowerAdjunction

end ThinSkeleton

open ThinSkeleton

section

variable {C} {α : Type*} [PartialOrder α]

/--
When `e : C ≌ α` is a categorical equivalence from a thin category `C` to some partial order `α`,
the `ThinSkeleton C` is order isomorphic to `α`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variant8b27ba5ec1c0ff7a3050c2547c3298d4eeb9a7e61b372cfebd29e3d18d429456.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c193f2f2e4b0f22e8b2745c9e78a0e75b84335a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
