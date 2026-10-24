# quasiIso_iff_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4fa141e33886fa8ff0b256b270fe86b4538b9e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc1a7b0c8f76abb4c019785cdbc50fc561ffd794359ba0de3b42b3b8080f7d47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4435183f-8c83-2662-f842-3032b57c46da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0460b6e2-d929-64e2-f4c3-d796c0cb5bc1",
  "kind": "lemma",
  "lexical_name": "quasiIso_iff_comp_right",
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
  "slug": "quasiiso-iff-comp-right--403d38b2a061ddc128873be5",
  "source": {
    "blob": "c4fa141e33886fa8ff0b256b270fe86b4538b9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantcc1a7b0c8f76abb4c019785cdbc50fc561ffd794359ba0de3b42b3b8080f7d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403d38b2a061ddc128873be547d4412ad28290dd24c6cc6045e30f330f6abed9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantcc1a7b0c8f76abb4c019785cdbc50fc561ffd794359ba0de3b42b3b8080f7d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0460b6e2-d929-64e2-f4c3-d796c0cb5bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_iff_comp_right (φ : K ⟶ L) (φ' : L ⟶ M) [∀ i, K.HasHomology i]
    [∀ i, L.HasHomology i] [∀ i, M.HasHomology i]
    [hφ' : QuasiIso φ'] :
    QuasiIso (φ ≫ φ') ↔ QuasiIso φ := by
  simp only [quasiIso_iff, quasiIsoAt_iff_comp_right φ φ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantcc1a7b0c8f76abb4c019785cdbc50fc561ffd794359ba0de3b42b3b8080f7d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variantcc1a7b0c8f76abb4c019785cdbc50fc561ffd794359ba0de3b42b3b8080f7d47.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fa141e33886fa8ff0b256b270fe86b4538b9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
