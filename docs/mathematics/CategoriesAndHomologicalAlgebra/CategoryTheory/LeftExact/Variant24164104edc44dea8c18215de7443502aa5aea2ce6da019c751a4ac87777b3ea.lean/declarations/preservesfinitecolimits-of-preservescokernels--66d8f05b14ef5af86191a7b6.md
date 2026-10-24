# preservesFiniteColimits_of_preservesCokernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9385939-de36-9639-74c9-889d97e08d71",
  "kind": "lemma",
  "lexical_name": "preservesFiniteColimits_of_preservesCokernels",
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
  "slug": "preservesfinitecolimits-of-preservescokernels--66d8f05b14ef5af86191a7b6",
  "source": {
    "blob": "e4d2678ec3a1e2a4e57787b4e27942666ac36d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 210,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d8f05b14ef5af86191a7b66c2868f6a97af824f2de419a3ce6c83fedd639fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9385939-de36-9639-74c9-889d97e08d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteColimits_of_preservesCokernels [HasFiniteCoproducts C] [HasCoequalizers C]
    [HasZeroObject C] [HasZeroObject D]
    [∀ {X Y} (f : X ⟶ Y), PreservesColimit (parallelPair f 0) F] : PreservesFiniteColimits F := by
  let := preservesCoequalizers_of_preservesCokernels F
  let := preservesInitialObject_of_preservesZeroMorphisms F
  let := preservesColimitsOfShape_pempty_of_preservesInitial F
  let : PreservesFiniteCoproducts F :=
    ⟨fun _ ↦ PreservesFiniteCoproducts.of_preserves_binary_and_initial F _⟩
  exact preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts F

end FiniteColimits

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d2678ec3a1e2a4e57787b4e27942666ac36d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
