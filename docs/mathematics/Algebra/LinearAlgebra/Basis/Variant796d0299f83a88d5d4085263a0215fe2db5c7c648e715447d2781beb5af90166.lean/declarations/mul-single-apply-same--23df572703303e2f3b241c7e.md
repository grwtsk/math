# mul_single_apply_same

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
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de8c945e-d1e7-ef28-65c4-fcf56d362d3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:faeb0c0a-3ba7-cc0c-d057-7e7dd172f771",
  "kind": "theorem",
  "lexical_name": "mul_single_apply_same",
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
  "slug": "mul-single-apply-same--23df572703303e2f3b241c7e",
  "source": {
    "blob": "e59c9108859b3976717278bac23b1c27c1a4d888",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 256,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23df572703303e2f3b241c7e962ed8b95ac40b51825ec4014aa09f877078c852",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:faeb0c0a-3ba7-cc0c-d057-7e7dd172f771`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_single_apply_same (i : m) (j : n) (a : l) (M : Matrix l m α) :
    (M * single i j c) a j = M a i * c := by simp [mul_apply, single, mul_comm]

@[deprecated (since := "2025-05-05")]
alias StdBasisMatrix.mul_right_apply_same := mul_single_apply_same

omit [DecidableEq n] in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant796d0299f83a88d5d4085263a0215fe2db5c7c648e715447d2781beb5af90166.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59c9108859b3976717278bac23b1c27c1a4d888` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
