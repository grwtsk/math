# scaled_kernel_eq_three_fixed_kernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6404a133-d160-c656-140d-13dd77056790",
  "kind": "theorem",
  "lexical_name": "scaled_kernel_eq_three_fixed_kernels",
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
  "slug": "scaled-kernel-eq-three-fixed-kernels--272562911cdaa814ac1ca386",
  "source": {
    "blob": "44a0060013dbf7344a8c4a0198a44acbeae31d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:272562911cdaa814ac1ca386a5afb14b7d7cd5d098bf08b3765ed5aaa4a4e722",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6404a133-d160-c656-140d-13dd77056790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_kernel_eq_three_fixed_kernels (A s : ℝ) (hA : 1 ≤ A) :
    scaledKernel A s =
      (fixedKernel 0 s / 16 + fixedKernel 1 s / (2 * A ^ 2) +
        fixedKernel 2 s / A ^ 4) / sourceNormalization A := by
  unfold scaledKernel
  simp_rw [rescaled_density_eq_three_moments A _ hA, mul_div, mul_add]
  simp_rw [mul_div]
  have h0 := fixed_kernel_integrable 0 (by norm_num) s
  have h1 := fixed_kernel_integrable 1 (by norm_num) s
  have h2 := fixed_kernel_integrable 2 (by norm_num) s
  rw [integral_div,
    integral_add (f := fun u ↦ Real.cos (u * s) * bumpMomentDensity 0 u / 16 +
      Real.cos (u * s) * bumpMomentDensity 1 u / (2 * A ^ 2))
      ((h0.div_const 16).add (h1.div_const (2 * A ^ 2))) (h2.div_const (A ^ 4)),
    integral_add (h0.div_const 16) (h1.div_const (2 * A ^ 2)),
    integral_div, integral_div, integral_div]
  rfl

/-- The scaled kernel's constant observation is exactly one, not an annihilated budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a0060013dbf7344a8c4a0198a44acbeae31d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
