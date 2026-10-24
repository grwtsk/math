# sourceKernelTerm_deriv_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba54a3e881c696db504964864423573d4be91183",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16359203-3ac4-eaff-b1d9-6c52812561f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7eee7a17-edaa-4faf-6340-4509b1b1d1b8",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_deriv_upper_zero",
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
  "slug": "sourcekernelterm-deriv-upper-zero--128cb35329e4e56ef10d2ac6",
  "source": {
    "blob": "ba54a3e881c696db504964864423573d4be91183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:128cb35329e4e56ef10d2ac6b6b8058b5413b8f670f18316c16014845996cd6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eee7a17-edaa-4faf-6340-4509b1b1d1b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_deriv_upper_zero
    (A : ℝ) (hA : 1 ≤ A) (k : ℕ) (hk : 1 ≤ k) :
    deriv (sourceKernelTerm A k) (sourceUpper A) = 0 := by
  have hApos : 0 < A := by linarith
  have hkpos : 0 < (k : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)
  have hkone : (1 : ℝ) ≤ k := by exact_mod_cast hk
  have hu : 0 < sourceUpper A := Real.exp_pos _
  have ht : 2 * A ≤ Real.log (sourceUpper A * (k : ℝ)) := by
    unfold sourceUpper
    rw [Real.log_mul (Real.exp_pos _).ne' hkpos.ne', Real.log_exp]
    linarith [Real.log_nonneg hkone]
  rw [sourceKernelTerm_deriv A (sourceUpper A) k hApos hu hk,
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hApos ht,
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hApos
      (ht.trans (le_abs_self _))]
  simp

/-- The finite source kernel has no derivative boundary contribution at
`exp (2 * A)`, including the support seam itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba54a3e881c696db504964864423573d4be91183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
