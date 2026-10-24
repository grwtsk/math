# mem_essImage_of_counit_isSplitEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "943ca0766d6fec0e93eafcc030c240dafc36ea6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a11ced413859b40203fff5ae4594987208883e118f47ce5e59542e3884c792b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b0f9fed-cd8d-1504-bbff-64cbf6b3a368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cf39e80-ba02-195f-1782-0373cacd0be5",
  "kind": "lemma",
  "lexical_name": "mem_essImage_of_counit_isSplitEpi",
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
  "slug": "mem-essimage-of-counit-issplitepi--201b8f47c16e4e7db26c4ca2",
  "source": {
    "blob": "943ca0766d6fec0e93eafcc030c240dafc36ea6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 220,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant3a11ced413859b40203fff5ae4594987208883e118f47ce5e59542e3884c792b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:201b8f47c16e4e7db26c4ca2ea89567b55402d9aea472f249d8057ff5687d2f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant3a11ced413859b40203fff5ae4594987208883e118f47ce5e59542e3884c792b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf39e80-ba02-195f-1782-0373cacd0be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_essImage_of_counit_isSplitEpi [Coreflective j] {A : D}
    [IsSplitEpi ((coreflectorAdjunction j).counit.app A)] : j.essImage A := by
  let ε : coreflector j ⋙ j ⟶ 𝟭 D := (coreflectorAdjunction j).counit
  have : IsIso (ε.app (j.obj ((coreflector j).obj A))) :=
    Functor.essImage.counit_isIso ((j.obj_mem_essImage _))
  have : Mono (ε.app A) := by
    refine @mono_of_mono _ _ _ _ _ (ε.app A) (section_ (ε.app A)) ?_
    rw [show ε.app A ≫ section_ _ = _ from (ε.naturality (section_ (ε.app A))).symm]
    apply mono_comp _ (ε.app (j.obj ((coreflector j).obj A)))
  have := isIso_of_mono_of_isSplitEpi (ε.app A)
  exact (coreflectorAdjunction j).mem_essImage_of_counit_isIso A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant3a11ced413859b40203fff5ae4594987208883e118f47ce5e59542e3884c792b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant3a11ced413859b40203fff5ae4594987208883e118f47ce5e59542e3884c792b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943ca0766d6fec0e93eafcc030c240dafc36ea6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
