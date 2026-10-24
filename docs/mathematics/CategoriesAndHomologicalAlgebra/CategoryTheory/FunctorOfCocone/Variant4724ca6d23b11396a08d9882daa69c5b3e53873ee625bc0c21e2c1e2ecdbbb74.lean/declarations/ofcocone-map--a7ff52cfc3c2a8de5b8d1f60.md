# ofCocone_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a472da9cbf939437306651eaf5d0df118619195",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a2bba1e-7011-0efd-8281-29f587f54fb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0697a22-4738-0937-2b19-3fd9a9a6b196",
  "kind": "lemma",
  "lexical_name": "ofCocone_map",
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
  "slug": "ofcocone-map--a7ff52cfc3c2a8de5b8d1f60",
  "source": {
    "blob": "5a472da9cbf939437306651eaf5d0df118619195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7ff52cfc3c2a8de5b8d1f60af9ebd8e7a9b460bf5e9731c62df614b09de6773",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0697a22-4738-0937-2b19-3fd9a9a6b196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofCocone_map (i₁ i₂ : J) (hi : i₁ ≤ i₂) (hi₂ : i₂ < j) :
    (ofCocone c).map (homOfLE hi : ⟨i₁, hi.trans hi₂.le⟩ ⟶ ⟨i₂, hi₂.le⟩) =
      (ofCoconeObjIso c i₁ (lt_of_le_of_lt hi hi₂)).hom ≫ F.map (homOfLE hi) ≫
        (ofCoconeObjIso c i₂ hi₂).inv := by
  dsimp [ofCocone, ofCoconeObjIso, ofCocone.map]
  rw [dite_eq_left hi₂]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a472da9cbf939437306651eaf5d0df118619195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
