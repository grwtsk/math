# hom_ext₅

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c26ad360015de270edede2cfd2eef795a656462e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 955,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8cda6a6-5a1d-ea8a-cc5c-465df9f3eb36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f70ae7b1-37eb-0f38-bbc9-c1da106be480",
  "kind": "lemma",
  "lexical_name": "hom_ext₅",
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
  "slug": "hom-ext--7a0b337002e22ceff9a36a7d",
  "source": {
    "blob": "c26ad360015de270edede2cfd2eef795a656462e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 962,
    "line": 955,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0b337002e22ceff9a36a7d2c235f10d54cc8b77920b4dc97526b29a7f1c48a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f70ae7b1-37eb-0f38-bbc9-c1da106be480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–962.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_ext₅ {f g : ComposableArrows C 5} {φ φ' : f ⟶ g}
    (h₀ : app' φ 0 = app' φ' 0) (h₁ : app' φ 1 = app' φ' 1) (h₂ : app' φ 2 = app' φ' 2)
    (h₃ : app' φ 3 = app' φ' 3) (h₄ : app' φ 4 = app' φ' 4) (h₅ : app' φ 5 = app' φ' 5) :
    φ = φ' :=
  hom_ext_succ h₀ (hom_ext₄ h₁ h₂ h₃ h₄ h₅)

/-- Constructor for isomorphisms in `ComposableArrows C 5`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26ad360015de270edede2cfd2eef795a656462e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
