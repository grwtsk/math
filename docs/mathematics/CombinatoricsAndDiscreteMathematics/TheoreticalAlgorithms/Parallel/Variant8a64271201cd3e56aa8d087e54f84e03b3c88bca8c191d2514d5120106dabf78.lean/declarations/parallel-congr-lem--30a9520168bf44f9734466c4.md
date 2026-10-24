# parallel_congr_lem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a003e07ea207b7df7e9e87ffb1c7c488d89ec382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54c4a507-859b-3157-80df-5e1b8d2fa43f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f50a1df6-d47e-f62c-9e90-a29f5fc079c1",
  "kind": "theorem",
  "lexical_name": "parallel_congr_lem",
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
  "slug": "parallel-congr-lem--30a9520168bf44f9734466c4",
  "source": {
    "blob": "a003e07ea207b7df7e9e87ffb1c7c488d89ec382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 370,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30a9520168bf44f9734466c41a88eea7968c0404760fd29e8421836be1e69d7f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f50a1df6-d47e-f62c-9e90-a29f5fc079c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallel_congr_lem {S T : WSeq (Computation α)} {a} (H : S.LiftRel Equiv T) :
    (∀ s ∈ S, s ~> a) ↔ ∀ t ∈ T, t ~> a :=
  ⟨fun h1 _ tT =>
    let ⟨_, sS, se⟩ := WSeq.exists_of_liftRel_right H tT
    (promises_congr se _).1 (h1 _ sS),
    fun h2 _ sS =>
    let ⟨_, tT, se⟩ := WSeq.exists_of_liftRel_left H sS
    (promises_congr se _).2 (h2 _ tT)⟩
#align computation.parallel_congr_lem Computation.parallel_congr_lem

-- The parallel operation is only deterministic when all computation paths lead to the same value
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8a64271201cd3e56aa8d087e54f84e03b3c88bca8c191d2514d5120106dabf78.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a003e07ea207b7df7e9e87ffb1c7c488d89ec382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
