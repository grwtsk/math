# isoHomology_hom_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4b324b7-a0d2-c02d-5fd1-6e210d9fa6a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4631370-c7c0-11cd-6908-456ce0a0ca22",
  "kind": "lemma",
  "lexical_name": "isoHomology_hom_comp_ι",
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
  "slug": "isohomology-hom-comp--3ef90d08c14670f6742a2aa7",
  "source": {
    "blob": "2ad239a8c57101a49d0b14c3da9d4a03a9b1825a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef90d08c14670f6742a2aa77b759761f5df1ca87b9e5ca5a0d3522ec1655f63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4631370-c7c0-11cd-6908-456ce0a0ca22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoHomology_hom_comp_ι :
    (isoHomology S hkf hcc fac).inv ≫ ι = S.homologyι ≫ (S.isoOpcyclesOfIsColimit hcc).inv := by
  simp [← cancel_epi S.homologyπ, ← cancel_epi (S.isoCyclesOfIsLimit hkf).hom,
    ← π_comp_isoHomology_hom_assoc S hkf hcc fac, ← fac]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant65d394617a857849005d341580c58f64401a9124152a0c05cd24d2f1d7bfb9f2.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad239a8c57101a49d0b14c3da9d4a03a9b1825a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
