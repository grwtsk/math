# fixed_kernel_mass_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b69b2799-74f1-bf31-58c5-a37526b2ff14",
  "kind": "theorem",
  "lexical_name": "fixed_kernel_mass_values",
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
  "slug": "fixed-kernel-mass-values--a5f321067cad93cf55fba058",
  "source": {
    "blob": "44a0060013dbf7344a8c4a0198a44acbeae31d29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f321067cad93cf55fba058dda147da05602980d0928c07de48cd50891c934c",
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

Occurrence: `result:b69b2799-74f1-bf31-58c5-a37526b2ff14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_kernel_mass_values :
    fixedKernel 0 0 = (65536 / 109395 : ℝ) ∧
      fixedKernel 1 0 = (131072 / 45045 : ℝ) ∧
      fixedKernel 2 0 = (196608 / 5005 : ℝ) := by
  have h1 := scaled_kernel_eq_three_fixed_kernels 1 0 (by norm_num)
  have h2 := scaled_kernel_eq_three_fixed_kernels 2 0 (by norm_num)
  have h3 := scaled_kernel_eq_three_fixed_kernels 3 0 (by norm_num)
  rw [scaled_kernel_at_zero 1 (by norm_num)] at h1
  rw [scaled_kernel_at_zero 2 (by norm_num)] at h2
  rw [scaled_kernel_at_zero 3 (by norm_num)] at h3
  norm_num [sourceNormalization] at h1 h2 h3
  constructor
  · linarith
  constructor <;> linarith

/-- The fixed density masses are the same three exact normalization coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JointPhaseScaling/Variantf3f49692f7790ad7e70541dbf599fddf5e0916c251fc644c30cb82f6c5757a12.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a0060013dbf7344a8c4a0198a44acbeae31d29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
