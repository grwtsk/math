# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7141fca4c3d33a25e536f1adac29f4cf4f2d47122aaecdaefe94d07e87ad00c",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--fe6cfe4aa2e3fd8dc00a4e92",
  "source": {
    "blob": "3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe6cfe4aa2e3fd8dc00a4e929265ed2ca44c4a28876fdadb257fcb43c0d0bf75",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7141fca4c3d33a25e536f1adac29f4cf4f2d47122aaecdaefe94d07e87ad00c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoMk (iso : ∀ a, (F.functor a ≅ G.functor a))
    (comm : ∀ (n a a' : A) (ha' : n + a = a'), (F.shiftIso n a a' ha').hom ≫ (iso a).hom =
      whiskerRight (iso a').hom (shiftFunctor D n) ≫ (G.shiftIso n a a' ha').hom) :
    F ≅ G where
  hom :=
    { hom := fun a => (iso a).hom
      comm := comm }
  inv :=
    { hom := fun a => (iso a).inv
      comm := fun n a a' ha' => by
        rw [← cancel_mono (iso a).hom, assoc, assoc, Iso.inv_hom_id, comp_id, comm,
          ← whiskerRight_comp_assoc, Iso.inv_hom_id, whiskerRight_id', id_comp] }

variable (C D)

/-- The evaluation `SingleFunctors C D A ⥤ C ⥤ D` for some `a : A`. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleFunctors/Variant1f6b418b680d080757a2bb337bd9a2d0ac9f317e6cd3e133f436fb25c1fc38d2.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac3d3b193884ca0b8f64fdb76503c3b2d1bb2d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
