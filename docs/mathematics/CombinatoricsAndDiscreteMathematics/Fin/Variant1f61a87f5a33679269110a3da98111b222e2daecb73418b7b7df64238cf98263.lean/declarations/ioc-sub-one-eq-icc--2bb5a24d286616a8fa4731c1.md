# Ioc_sub_one_eq_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e0e5d705b0a65d9b25e9dd1b3de1a6f26ab3590",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 926,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f61a87f5a33679269110a3da98111b222e2daecb73418b7b7df64238cf98263.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20a18e3b-a78a-f86d-95d2-343f97538b59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae845c38-2ec1-7296-9f53-7da37f98406d",
  "kind": "lemma",
  "lexical_name": "Ioc_sub_one_eq_Icc",
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
  "slug": "ioc-sub-one-eq-icc--2bb5a24d286616a8fa4731c1",
  "source": {
    "blob": "9e0e5d705b0a65d9b25e9dd1b3de1a6f26ab3590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 930,
    "line": 926,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant1f61a87f5a33679269110a3da98111b222e2daecb73418b7b7df64238cf98263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bb5a24d286616a8fa4731c1d6f605af61e80c00e76f60ebf527a7282845c982",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variant1f61a87f5a33679269110a3da98111b222e2daecb73418b7b7df64238cf98263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae845c38-2ec1-7296-9f53-7da37f98406d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ioc_sub_one_eq_Icc {n : ℕ} {a b : Fin n} :
    haveI := a.neZero
    (ha : 0 < a) → Ioc (a - 1) b = Icc a b := by
  grind [= Fin.lt_def, = Fin.le_def, = Fin.val_sub_one_of_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variant1f61a87f5a33679269110a3da98111b222e2daecb73418b7b7df64238cf98263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variant1f61a87f5a33679269110a3da98111b222e2daecb73418b7b7df64238cf98263.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e0e5d705b0a65d9b25e9dd1b3de1a6f26ab3590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
