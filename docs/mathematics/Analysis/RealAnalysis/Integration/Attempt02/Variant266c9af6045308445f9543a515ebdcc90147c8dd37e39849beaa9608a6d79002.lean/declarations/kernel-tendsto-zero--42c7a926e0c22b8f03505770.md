# kernel_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc75d60d-57ab-cc60-fd4e-57b5325fe84b",
  "kind": "theorem",
  "lexical_name": "kernel_tendsto_zero",
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
  "slug": "kernel-tendsto-zero--42c7a926e0c22b8f03505770",
  "source": {
    "blob": "8ab8d7c28baac45b2ae8994abfa84bcf7b055032",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c7a926e0c22b8f0350577000530a23d1242ded8d562fbb956f91479bd9bfcf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc75d60d-57ab-cc60-fd4e-57b5325fe84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_tendsto_zero (r : ℝ) :
    Tendsto (fun T => actualF7NormalizedKernel T r) atTop (𝓝 0) := by
  have hb : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 0) := by
    convert (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 0 (1 / 2) (by norm_num)) using 1
    funext T
    simp only [Real.rpow_zero, one_mul]
    congr 1
    ring
  have hp := hb.const_mul
    (actualXiInverseSquareTimeDensity r * Real.exp (r / 2))
  simp only [mul_zero] at hp
  apply hp.congr'
  filter_upwards [eventually_ge_atTop r] with T hT
  unfold actualF7NormalizedKernel
  rw [Set.indicator_of_mem hT]
  rw [show (r - T) / 2 = r / 2 + -T / 2 by ring, Real.exp_add]
  ring

/-- Actual PNT gives an ordinary zero limit for the full original normalized upper F7 trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant266c9af6045308445f9543a515ebdcc90147c8dd37e39849beaa9608a6d79002.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ab8d7c28baac45b2ae8994abfa84bcf7b055032` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
