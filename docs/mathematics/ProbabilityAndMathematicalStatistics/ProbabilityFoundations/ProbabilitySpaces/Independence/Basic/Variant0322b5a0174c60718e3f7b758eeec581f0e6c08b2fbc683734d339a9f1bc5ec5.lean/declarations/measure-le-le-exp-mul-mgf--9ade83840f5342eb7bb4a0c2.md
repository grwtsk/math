# measure_le_le_exp_mul_mgf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98d77221-57fc-afdb-b2a3-418f6bf59e11",
  "kind": "theorem",
  "lexical_name": "measure_le_le_exp_mul_mgf",
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
  "slug": "measure-le-le-exp-mul-mgf--9ade83840f5342eb7bb4a0c2",
  "source": {
    "blob": "9a701e09e3611df6e6c139606cc62b2397d2c20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 459,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ade83840f5342eb7bb4a0c25c7b92c27534ee57abafb76449cfa209832c9af4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d77221-57fc-afdb-b2a3-418f6bf59e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_le_exp_mul_mgf [IsFiniteMeasure μ] (ε : ℝ) (ht : t ≤ 0)
    (h_int : Integrable (fun ω => exp (t * X ω)) μ) :
    μ.real {ω | X ω ≤ ε} ≤ exp (-t * ε) * mgf X μ t := by
  rw [← neg_neg t, ← mgf_neg, neg_neg, ← neg_mul_neg (-t)]
  refine Eq.trans_le ?_ (measure_ge_le_exp_mul_mgf (-ε) (neg_nonneg.mpr ht) ?_)
  · simp only [Pi.neg_apply, neg_le_neg_iff]
  · simp_rw [Pi.neg_apply, neg_mul_neg]
    exact h_int

/-- **Chernoff bound** on the upper tail of a real random variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a701e09e3611df6e6c139606cc62b2397d2c20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
