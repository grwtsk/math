# integratedKernel_dilate_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad127bb45210fddc5496ffc7eb595d1ef1110749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f4c52c0f4e3e4d1564ca6dd95d90611c62c1442de4113a9aa6f60f78629e5e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd674ae-03cf-108f-fb97-d1e809c5bd91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a25983b-eae0-23c7-3ec3-ba0023334cd6",
  "kind": "theorem",
  "lexical_name": "integratedKernel_dilate_zero",
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
  "slug": "integratedkernel-dilate-zero--cb528a5728e2eb28780feaad",
  "source": {
    "blob": "ad127bb45210fddc5496ffc7eb595d1ef1110749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f4c52c0f4e3e4d1564ca6dd95d90611c62c1442de4113a9aa6f60f78629e5e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb528a5728e2eb28780feaad393264942aecda8f84633997e0e4c718bd4eabc5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f4c52c0f4e3e4d1564ca6dd95d90611c62c1442de4113a9aa6f60f78629e5e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a25983b-eae0-23c7-3ec3-ba0023334cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integratedKernel_dilate_zero (T : ℝ) (m d a : ℕ)
    (hm : 1 ≤ m) (hd : 1 ≤ d) (ha : 2 ≤ a)
    (hlog : 2 * T - 1 / 2 ≤ Real.log ((m * d : ℕ) : ℝ)) :
    integratedKernel T m (a * d) = 0 := by
  apply Finset.sum_eq_zero
  intro k hk
  have hcut : sourceKernelCutoff T < m * (a * d) * k := by
    have hh := (cutoff_lt_mul_of_strip T m d a hm hd ha hlog).trans_le
      (Nat.le_mul_of_pos_right (m * d * a) (Finset.mem_Icc.mp hk).1)
    simpa only [Nat.mul_assoc, Nat.mul_left_comm, Nat.mul_comm] using hh
  rw [omegaWeight_zero_of_cutoff_lt T m (a * d) k hcut, zero_div]

/-- No cancellation occurs among the divisor dilations here, for any positive P. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f4c52c0f4e3e4d1564ca6dd95d90611c62c1442de4113a9aa6f60f78629e5e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0f4c52c0f4e3e4d1564ca6dd95d90611c62c1442de4113a9aa6f60f78629e5e4.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad127bb45210fddc5496ffc7eb595d1ef1110749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
