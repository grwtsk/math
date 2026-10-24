# _root_.OrderHomClass.of_map_cstarMatrix_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3206e9605d0e9648d320cb4aec41f38480b47a33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d6ae174-a6b4-03c8-a8f4-86afe1003338",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec562f50-cf98-740b-0aed-455f8f90a28c",
  "kind": "lemma",
  "lexical_name": "_root_.OrderHomClass.of_map_cstarMatrix_nonneg",
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
  "slug": "root-orderhomclass-of-map-cstarmatrix-nonneg--1c304349817cd7cfea98b5a2",
  "source": {
    "blob": "3206e9605d0e9648d320cb4aec41f38480b47a33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c304349817cd7cfea98b5a27b3350f7d06c117c1cd3f449028dffdeb67e81dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec562f50-cf98-740b-0aed-455f8f90a28c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.OrderHomClass.of_map_cstarMatrix_nonneg
    (h : ∀ (φ : F) (k : ℕ) (M : CStarMatrix (Fin k) (Fin k) A₁), 0 ≤ M → 0 ≤ M.map φ) :
    OrderHomClass F A₁ A₂ := .of_addMonoidHom <| by
  intro φ a ha
  simpa using! map_nonneg (toOneByOne (Fin 1) ℂ A₂).symm <|
    h φ 1 _ <| map_nonneg (toOneByOne (Fin 1) ℂ A₁) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CompletelyPositiveMap/Variant94772185b4cb7456a0ecf3f1dd67f1fee2b766beea1763838854652ed403a8d3.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3206e9605d0e9648d320cb4aec41f38480b47a33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
