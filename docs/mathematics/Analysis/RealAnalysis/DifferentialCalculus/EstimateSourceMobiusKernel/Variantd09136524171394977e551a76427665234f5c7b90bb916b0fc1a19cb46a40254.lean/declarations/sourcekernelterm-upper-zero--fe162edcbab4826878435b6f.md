# sourceKernelTerm_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d2a83e950c22a6bd39589c2a2466e6a63dab50b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7e1089e-888a-0683-0063-6d91b89ef6d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a335bccf-3b8a-1698-4aff-3fe5f1e37198",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_upper_zero",
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
  "slug": "sourcekernelterm-upper-zero--fe162edcbab4826878435b6f",
  "source": {
    "blob": "0d2a83e950c22a6bd39589c2a2466e6a63dab50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe162edcbab4826878435b6f1eacc2fba229f51e8414bf0088faeb5d3c18c471",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a335bccf-3b8a-1698-4aff-3fe5f1e37198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_upper_zero
    (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 1 ≤ k) :
    sourceKernelTerm A k (sourceUpper A) = 0 := by
  have hApos : 0 < A := by linarith
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkone : (1 : ℝ) ≤ k := by
    exact_mod_cast hk
  have hlogk : 0 ≤ Real.log (k : ℝ) :=
    Real.log_nonneg hkone
  have hlog :
      Real.log (sourceUpper A * (k : ℝ)) =
        2 * A + Real.log (k : ℝ) := by
    unfold sourceUpper
    rw [Real.log_mul (Real.exp_pos _).ne' (ne_of_gt hkpos),
      Real.log_exp]
  have hnonneg :
      0 ≤ 2 * A + Real.log (k : ℝ) := by
    linarith
  have hsupport :
      2 * A ≤
        |Real.log (sourceUpper A * (k : ℝ))| := by
    rw [hlog, abs_of_nonneg hnonneg]
    linarith
  have hzero :=
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
      A (Real.log (sourceUpper A * (k : ℝ)))
      hApos hsupport
  simp [sourceKernelTerm, exponentialTest, hzero]

/-- Upper-boundary clause of the actual source-kernel contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2a83e950c22a6bd39589c2a2466e6a63dab50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
