# dist_integralSum_integral_le_of_memBaseSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe8e35a6-6969-3acf-6bfd-b48c9d3a7791",
  "kind": "theorem",
  "lexical_name": "dist_integralSum_integral_le_of_memBaseSet",
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
  "slug": "dist-integralsum-integral-le-of-membaseset--3a41c41b716dec3e9957793b",
  "source": {
    "blob": "7e6b725797250d205876f963301327eb6bbc04ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 416,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a41c41b716dec3e9957793b5ca111fe102ba77abf382fb01340512f47ee12f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe8e35a6-6969-3acf-6bfd-b48c9d3a7791`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_integralSum_integral_le_of_memBaseSet (h : Integrable I l f vol) (h₀ : 0 < ε)
    (hπ : l.MemBaseSet I c (h.convergenceR ε c) π) (hπp : π.IsPartition) :
    dist (integralSum f vol π) (integral I l f vol) ≤ ε := by
  rw [convergenceR, dif_pos h₀] at hπ
  exact (hasIntegral_iff.1 h.hasIntegral ε h₀).choose_spec.2 c _ hπ hπp

/-- **Henstock-Sacks inequality**. Let `r₁ r₂ : ℝⁿ → (0, ∞)` be a function such that for any tagged
*partition* of `I` subordinate to `rₖ`, `k=1,2`, the integral sum of `f` over this partition differs
from the integral of `f` by at most `εₖ`. Then for any two tagged *prepartition* `π₁ π₂` subordinate
to `r₁` and `r₂` respectively and covering the same part of `I`, the integral sums of `f` over these
prepartitions differ from each other by at most `ε₁ + ε₂`.

The actual statement

- uses `BoxIntegral.Integrable.convergenceR` instead of a predicate assumption on `r`;
- uses `BoxIntegral.IntegrationParams.MemBaseSet` instead of “subordinate to `r`” to
  account for additional requirements like being a Henstock partition or having a bounded
  distortion.

See also `BoxIntegral.Integrable.dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq` and
`BoxIntegral.Integrable.dist_integralSum_sum_integral_le_of_memBaseSet`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6b725797250d205876f963301327eb6bbc04ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
