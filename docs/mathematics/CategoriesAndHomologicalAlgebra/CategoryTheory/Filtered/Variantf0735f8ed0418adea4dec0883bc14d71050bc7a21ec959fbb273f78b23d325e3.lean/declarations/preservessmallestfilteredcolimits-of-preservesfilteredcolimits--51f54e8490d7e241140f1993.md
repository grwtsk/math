# preservesSmallestFilteredColimits_of_preservesFilteredColimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a577c78b31a6928f858cb3aa30dbd7726c7d9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec42e312-818d-9242-1fcb-8c616f75a9f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:616e0c64-bb76-807a-7faa-df36a7994b3c",
  "kind": "lemma",
  "lexical_name": "preservesSmallestFilteredColimits_of_preservesFilteredColimits",
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
  "slug": "preservessmallestfilteredcolimits-of-preservesfilteredcolimits--51f54e8490d7e241140f1993",
  "source": {
    "blob": "32a577c78b31a6928f858cb3aa30dbd7726c7d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f54e8490d7e241140f1993b1d4e4e507b4c7f6db3496d17ff8c34ec6b860fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616e0c64-bb76-807a-7faa-df36a7994b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesSmallestFilteredColimits_of_preservesFilteredColimits (F : C ⥤ D)
    [PreservesFilteredColimitsOfSize.{w', w} F] : PreservesFilteredColimitsOfSize.{0, 0} F :=
  preservesFilteredColimitsOfSize_shrink F

end Preserves

section Reflects

-- This should be used with explicit universe variables.
/-- `ReflectsFilteredColimitsOfSize.{w', w} F` means that whenever the image of a filtered cocone
under `F` is a colimit cocone, the original cocone was already a colimit. -/
@[nolint checkUnivs, pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantf0735f8ed0418adea4dec0883bc14d71050bc7a21ec959fbb273f78b23d325e3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a577c78b31a6928f858cb3aa30dbd7726c7d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
