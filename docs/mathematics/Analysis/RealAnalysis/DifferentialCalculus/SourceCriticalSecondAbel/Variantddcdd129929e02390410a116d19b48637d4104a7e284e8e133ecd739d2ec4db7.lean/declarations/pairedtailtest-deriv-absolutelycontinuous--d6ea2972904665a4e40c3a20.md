# pairedTailTest_deriv_absolutelyContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f00cd47c674edff28ada342ada78beec6f03253",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f5092c8-45de-0e70-59a5-7755c6450702",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3e92750-a160-a5fd-b2af-7ca0e01bf2ae",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_deriv_absolutelyContinuous",
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
  "slug": "pairedtailtest-deriv-absolutelycontinuous--d6ea2972904665a4e40c3a20",
  "source": {
    "blob": "7f00cd47c674edff28ada342ada78beec6f03253",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6ea2972904665a4e40c3a20efbde7d2cdf8b0311eab560a4cef09cc5282a82a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e92750-a160-a5fd-b2af-7ca0e01bf2ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_deriv_absolutelyContinuous {A : ℝ} (hA : 1 ≤ A) :
    AbsolutelyContinuousOnInterval (deriv (pairedTailTest A)) 0 (2 * A) := by
  obtain ⟨K, hk⟩ := criticalPrimeTest_deriv_lipschitz (show 0 < A by linarith)
  have hp : AbsolutelyContinuousOnInterval (positiveSlope A) 0 (2 * A) :=
    (hk.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have hn : AbsolutelyContinuousOnInterval (negativeSlope A) 0 (2 * A) :=
    (hk.neg.max_const 0).lipschitzOnWith.absolutelyContinuousOnInterval
  have he : deriv (pairedTailTest A) = fun u =>
      -positiveSlope A u + (positiveMass A / negativeMass A) * negativeSlope A u := by
    funext u
    exact pairedTailTest_deriv hA u
  rw [he]
  exact hp.neg.add
    (AbsolutelyContinuousOnInterval.const_mul (positiveMass A / negativeMass A) hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalSecondAbel/Variantddcdd129929e02390410a116d19b48637d4104a7e284e8e133ecd739d2ec4db7.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f00cd47c674edff28ada342ada78beec6f03253` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
