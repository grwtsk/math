# NatTrans.Equifibered.whiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:75dd0b58-96af-d968-5668-68e9d10cbdd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da422e42-2970-081c-f9c4-eca5747b7ffd",
  "kind": "theorem",
  "lexical_name": "NatTrans.Equifibered.whiskerRight",
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
  "slug": "nattrans-equifibered-whiskerright--115447a48f1da4f9dfd17e9f",
  "source": {
    "blob": "3a4991374a771c850642dcbc1fdc2e28712742f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 513,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:115447a48f1da4f9dfd17e9f3afe82aa1b010d26831a996d84bc26c71c355074",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da422e42-2970-081c-f9c4-eca5747b7ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NatTrans.Equifibered.whiskerRight {F G : J ⥤ C} {α : F ⟶ G} (hα : Equifibered α)
    (H : C ⥤ D) [PreservesLimitsOfShape WalkingCospan H] : Equifibered (whiskerRight α H) :=
  fun _ _ f => (hα f).map H
#align category_theory.nat_trans.equifibered.whisker_right CategoryTheory.NatTrans.Equifibered.whiskerRight

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant9481606e481ec2ad8331180c9ae53031b3f739ed7b3f3a066b7f9af1c401af46.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4991374a771c850642dcbc1fdc2e28712742f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
