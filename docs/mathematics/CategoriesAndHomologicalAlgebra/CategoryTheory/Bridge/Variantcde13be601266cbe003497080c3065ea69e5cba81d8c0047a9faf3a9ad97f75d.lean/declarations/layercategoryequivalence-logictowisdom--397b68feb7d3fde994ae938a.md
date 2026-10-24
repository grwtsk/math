# LayerCategoryEquivalence.logicToWisdom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9be6e58db4070aed03fdc0ed9f93c1f4d4899c62f1edeba2b2bbe8a9ee4ce3c4",
  "kind": "def",
  "lexical_name": "LayerCategoryEquivalence.logicToWisdom",
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
  "slug": "layercategoryequivalence-logictowisdom--397b68feb7d3fde994ae938a",
  "source": {
    "blob": "96b4cccff534b3b1b2d808c4f7c9c8e94a1bb9aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:397b68feb7d3fde994ae938a71b289551b225475819b1c28ef46241969042a7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9be6e58db4070aed03fdc0ed9f93c1f4d4899c62f1edeba2b2bbe8a9ee4ce3c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LayerCategoryEquivalence.logicToWisdom
    (E : LayerCategoryEquivalence) :
    Functor E.layers.Log E.layers.Wis where
  obj A :=
    E.layers.knowledgeToWisdom.obj
      (E.layers.epistemologyToKnowledge.obj
        (E.layers.informationToEpistemology.obj
          (E.layers.logicToInformation.obj A)))
  map {A B} f :=
    E.layers.knowledgeToWisdom.map
      (E.layers.epistemologyToKnowledge.map
        (E.layers.informationToEpistemology.map
          (E.layers.logicToInformation.map f)))
  map_id A := by
    rw [E.layers.logicToInformation.map_id]
    rw [E.layers.informationToEpistemology.map_id]
    rw [E.layers.epistemologyToKnowledge.map_id]
    rw [E.layers.knowledgeToWisdom.map_id]
  map_comp f g := by
    rw [E.layers.logicToInformation.map_comp]
    rw [E.layers.informationToEpistemology.map_comp]
    rw [E.layers.epistemologyToKnowledge.map_comp]
    rw [E.layers.knowledgeToWisdom.map_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantcde13be601266cbe003497080c3065ea69e5cba81d8c0047a9faf3a9ad97f75d.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b4cccff534b3b1b2d808c4f7c9c8e94a1bb9aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
