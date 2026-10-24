# braidingNatIso_hom_app_naturality_μ_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aceb3d30763231cd7773fc7656ba257be0a0e0c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0b8c3e4-a0db-45a0-64ea-6360273a2990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e6755ee-5f59-e215-e778-787211742795",
  "kind": "lemma",
  "lexical_name": "braidingNatIso_hom_app_naturality_μ_right",
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
  "slug": "braidingnatiso-hom-app-naturality-right--1097cc6ff131a565436a7fd1",
  "source": {
    "blob": "aceb3d30763231cd7773fc7656ba257be0a0e0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1097cc6ff131a565436a7fd1e2f0f882afaabe5d1bb9ed63c9b8a1a3b0f4b598",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e6755ee-5f59-e215-e778-787211742795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma braidingNatIso_hom_app_naturality_μ_right (X Y Z : C) :
    ((braidingNatIso L W ε).hom.app ((L').obj X ⊗ (L').obj Y)).app ((L').obj Z) ≫
      (L').obj Z ◁ (Functor.LaxMonoidal.μ (L') X Y) =
        (Functor.LaxMonoidal.μ (L') X Y) ▷ (L').obj Z ≫
          ((braidingNatIso L W ε).hom.app ((L').obj (X ⊗ Y))).app ((L').obj Z) :=
  (NatTrans.congr_app ((braidingNatIso L W ε).hom.naturality
    ((Functor.LaxMonoidal.μ (L') X Y))) ((L').obj Z)).symm

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aceb3d30763231cd7773fc7656ba257be0a0e0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
