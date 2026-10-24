# whiskerLeft_toKaroubi_N₂Γ₂_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82ef04695fa2d64e2ac1e8d15d65260ce0e6505c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:452ca8a5-f1c5-7511-f813-b72e9d0ed35c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e93e024-a0e5-8e6b-0635-b1f3ca6c627f",
  "kind": "lemma",
  "lexical_name": "whiskerLeft_toKaroubi_N₂Γ₂_hom",
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
  "slug": "whiskerleft-tokaroubi-n-hom--6fd723957c49927acb6cf252",
  "source": {
    "blob": "82ef04695fa2d64e2ac1e8d15d65260ce0e6505c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fd723957c49927acb6cf2526424dbf0c0fbb88e8d3bb077a2346b29cb1b7b28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e93e024-a0e5-8e6b-0635-b1f3ca6c627f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerLeft_toKaroubi_N₂Γ₂_hom :
    whiskerLeft (toKaroubi (ChainComplex C ℕ)) N₂Γ₂.hom = N₂Γ₂ToKaroubiIso.hom ≫ N₁Γ₀.hom := by
  let e : _ ≅ toKaroubi (ChainComplex C ℕ) ⋙ 𝟭 _ := N₂Γ₂ToKaroubiIso ≪≫ N₁Γ₀
  have h := ((whiskeringLeft _ _ (Karoubi (ChainComplex C ℕ))).obj
    (toKaroubi (ChainComplex C ℕ))).image_preimage e.hom
  dsimp only [whiskeringLeft, N₂Γ₂, Functor.preimageIso] at h ⊢
  exact h

-- Porting note: added to speed up elaboration
attribute [irreducible] N₂Γ₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantfe4a76d1e7f5e0b1de016f8f6f96769cf84cb2484887975cd6ebed5ed5381403.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ef04695fa2d64e2ac1e8d15d65260ce0e6505c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
