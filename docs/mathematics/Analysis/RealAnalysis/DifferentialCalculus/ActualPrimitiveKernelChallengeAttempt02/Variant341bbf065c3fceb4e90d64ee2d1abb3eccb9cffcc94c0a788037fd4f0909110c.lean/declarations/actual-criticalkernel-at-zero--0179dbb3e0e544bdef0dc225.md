# actual_criticalKernel_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29aac1de-30df-9ec3-75a9-45725f79974f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76a838a0-a0e2-ca12-a9a1-e333790680c5",
  "kind": "theorem",
  "lexical_name": "actual_criticalKernel_at_zero",
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
  "slug": "actual-criticalkernel-at-zero--0179dbb3e0e544bdef0dc225",
  "source": {
    "blob": "ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0179dbb3e0e544bdef0dc225eb3072f7c2850a4b3102c8d274295c52d0c12210",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a838a0-a0e2-ca12-a9a1-e333790680c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalKernel_at_zero (A : ℝ) (hA : 1 ≤ A) :
    criticalKernel A 0 = 1 / 2 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hh := hc.unique hn
    linarith
  simp only [criticalKernel, hd, actual_correlation_at_zero A hA, zero_add]

/-- The exact test falls from one to zero, so its actual kernel becomes negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
