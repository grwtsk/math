# combineCones

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5966a2e128c8e330f2978c722ecf2b7f324e66c9a63a335de75c7934396738df",
  "kind": "def",
  "lexical_name": "combineCones",
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
  "slug": "combinecones--374431753aeaa79f663dc27e",
  "source": {
    "blob": "d134bdd508e056b7bc19348117ca28a37c2bf94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:374431753aeaa79f663dc27e542ca6831298f6aa368ec757f6a39334380142b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5966a2e128c8e330f2978c722ecf2b7f324e66c9a63a335de75c7934396738df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combineCones (F : J ⥤ K ⥤ C) (c : ∀ k : K, LimitCone (F.flip.obj k)) : Cone F where
  pt :=
    { obj := fun k => (c k).cone.pt
      map := fun {k₁} {k₂} f => (c k₂).isLimit.lift ⟨_, (c k₁).cone.π ≫ F.flip.map f⟩
      map_id := fun k =>
        (c k).isLimit.hom_ext fun j => by simp
      map_comp := fun {k₁} {k₂} {k₃} f₁ f₂ => (c k₃).isLimit.hom_ext fun j => by simp }
  π :=
    { app := fun j => { app := fun k => (c k).cone.π.app j }
      naturality := fun j₁ j₂ g => by ext k; exact (c k).cone.π.naturality g }

set_option backward.defeqAttrib.useBackward true in
/-- The stitched together cones each project down to the original given cones (up to iso). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6cc2bad6920c19d49d9c343abe695096647c79c106165354ea1c05e7cea966bb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d134bdd508e056b7bc19348117ca28a37c2bf94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
