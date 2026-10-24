# HomEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c62020ddbd46f76e44a508c1638dbb871b2c2585f52c19284b35be3dac442f2c",
  "kind": "structure",
  "lexical_name": "HomEquivalence",
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
  "slug": "homequivalence--905364b6a4ce5c154e4ae68e",
  "source": {
    "blob": "71791e64dd0aa9728f5fc8459dd265651cafdbf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:905364b6a4ce5c154e4ae68ec974d8f5afcac6eb5a804fe36d72fc5dfdaf79c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c62020ddbd46f76e44a508c1638dbb871b2c2585f52c19284b35be3dac442f2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HomEquivalence {C D : Category} (F : Functor C D) where
  reverse : {A B : C.Obj} → D.Hom (F.obj A) (F.obj B) → C.Hom A B
  forwardReverse :
    ∀ {A B : C.Obj} (g : D.Hom (F.obj A) (F.obj B)),
      F.map (reverse g) = g
  reverseForward :
    ∀ {A B : C.Obj} (f : C.Hom A B),
      reverse (F.map f) = f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71791e64dd0aa9728f5fc8459dd265651cafdbf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
