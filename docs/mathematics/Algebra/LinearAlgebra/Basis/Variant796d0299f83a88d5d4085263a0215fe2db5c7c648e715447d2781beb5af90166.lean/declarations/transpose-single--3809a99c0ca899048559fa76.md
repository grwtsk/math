# transpose_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e59c9108859b3976717278bac23b1c27c1a4d888",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31fba675-2d1a-4f55-296a-03d4896c373b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c66c0d8a-67ed-e53f-2060-63bf15bee0c3",
  "kind": "lemma",
  "lexical_name": "transpose_single",
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
  "slug": "transpose-single--3809a99c0ca899048559fa76",
  "source": {
    "blob": "e59c9108859b3976717278bac23b1c27c1a4d888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3809a99c0ca899048559fa7613ad2f7a9ec07620a06b1544885fa7e3bc83a357",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c66c0d8a-67ed-e53f-2060-63bf15bee0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transpose_single (i : m) (j : n) (a : α) :
    (single i j a)ᵀ = single j i a := by
  aesop (add unsafe unfold single)

@[deprecated (since := "2025-05-05")] alias transpose_stdBasisMatrix := transpose_single

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59c9108859b3976717278bac23b1c27c1a4d888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
