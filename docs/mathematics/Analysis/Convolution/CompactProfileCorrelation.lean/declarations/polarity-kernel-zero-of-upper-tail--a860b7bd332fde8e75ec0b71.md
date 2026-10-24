# polarity_kernel_zero_of_upper_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6792db15-38c1-69e7-78e9-9f1173c9ea0d",
  "kind": "theorem",
  "lexical_name": "polarity_kernel_zero_of_upper_tail",
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
  "slug": "polarity-kernel-zero-of-upper-tail--a860b7bd332fde8e75ec0b71",
  "source": {
    "blob": "b22a87177a8f6ef0ca63a159330480af9f1d8e1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 208,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a860b7bd332fde8e75ec0b71af16636db2d37741dd7c0f7ec234b1d88f2ca0ff",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6792db15-38c1-69e7-78e9-9f1173c9ea0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polarity_kernel_zero_of_upper_tail {A t : ℝ} (hA : 0 < A)
    (ht : 2 * A - Real.log 2 < t) : polarityKernel A t = 0 := by
  unfold polarityKernel
  apply Finset.sum_eq_zero
  intro k hk
  have hk2 := (Finset.mem_Icc.mp hk).1
  have castBound : (2 : ℝ) ≤ k := by exact_mod_cast hk2
  have logBound : Real.log (2 : ℝ) ≤ Real.log (k : ℝ) :=
    Real.log_le_log (by norm_num) castBound
  have after : 2 * A < t + Real.log (k : ℝ) := by linarith
  rw [(correlation_derivatives_zero_of_two_mul_lt hA after).1,
    (correlation_derivatives_zero_of_two_mul_lt hA after).2]
  ring


/-- Compact convolution support supplies global integrability of both actual derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22a87177a8f6ef0ca63a159330480af9f1d8e1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
