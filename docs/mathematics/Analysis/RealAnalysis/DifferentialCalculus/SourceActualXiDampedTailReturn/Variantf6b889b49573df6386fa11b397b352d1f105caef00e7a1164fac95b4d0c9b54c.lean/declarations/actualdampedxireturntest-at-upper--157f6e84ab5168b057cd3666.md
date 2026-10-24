# actualDampedXiReturnTest_at_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e49856e-76a9-56ea-23b2-2ee4a22ed4dd",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnTest_at_upper",
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
  "slug": "actualdampedxireturntest-at-upper--157f6e84ab5168b057cd3666",
  "source": {
    "blob": "1c5aa8172bdbe2ed0ba6ee3a4dbd4184be4a780c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:157f6e84ab5168b057cd3666ffdcce9edd43d2587f9152b9440aea9f305b1970",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e49856e-76a9-56ea-23b2-2ee4a22ed4dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnTest_at_upper {A : ℝ} (hA : 91 ≤ A) :
    actualDampedXiReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h1 := actual_correlation_first_edge_abs_le (z := 2 * A) hA le_rfl
  simp only [sub_self, zero_pow (by norm_num : (2 : ℕ) ≠ 0), mul_zero, zero_div] at h2
  simp only [sub_self, zero_pow (by norm_num : (3 : ℕ) ≠ 0), mul_zero, zero_div,
    iteratedDeriv_succ, iteratedDeriv_zero] at h1
  have hz2 := abs_nonpos_iff.mp h2
  have hz1 := abs_nonpos_iff.mp h1
  simp [actualDampedXiReturnTest, hz2, hz1]

/-- The full original tail returns through genuine AC Abel with both real traces evaluated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variantf6b889b49573df6386fa11b397b352d1f105caef00e7a1164fac95b4d0c9b54c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c5aa8172bdbe2ed0ba6ee3a4dbd4184be4a780c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
