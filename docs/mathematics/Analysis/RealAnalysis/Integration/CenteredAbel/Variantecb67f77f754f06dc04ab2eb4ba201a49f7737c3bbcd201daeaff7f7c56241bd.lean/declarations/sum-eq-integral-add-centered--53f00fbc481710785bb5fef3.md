# sum_eq_integral_add_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e76fbf-ebc2-3076-e43f-1c442e8f914e",
  "kind": "theorem",
  "lexical_name": "sum_eq_integral_add_centered",
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
  "slug": "sum-eq-integral-add-centered--53f00fbc481710785bb5fef3",
  "source": {
    "blob": "3a54bb0cea427c5004c5a044593ff393f2572576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53f00fbc481710785bb5fef3337685913aaf953d13bf2a5dbaf77564eacc22ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e76fbf-ebc2-3076-e43f-1c442e8f914e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_integral_add_centered {g : ℝ → ℝ} (hg : ContDiff ℝ 1 g)
    {Y : ℝ} (hY : 1 ≤ Y) :
    (∑ n ∈ Finset.Icc 1 ⌊Y⌋₊, g n) =
      (∫ y in (1 : ℝ)..Y, g y) +
      (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) +
      (1 / 2 : ℝ) * g 1 + ((1 / 2 : ℝ) - fracPlus Y) * g Y := by
  have hd := (hg.continuous_deriv (by norm_num)).intervalIntegrable (μ := volume) 1 Y
  have hcent : (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) =
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) -
        (1 / 2 : ℝ) * (g Y - g 1) := by
    simp only [sub_mul]
    rw [intervalIntegral.integral_sub (fracPlus_deriv_intervalIntegrable hg hY)
      (hd.const_mul _), intervalIntegral.integral_const_mul]
    rw [intervalIntegral.integral_deriv_eq_sub
      (fun y _ => hg.differentiable (by norm_num) y) hd]
  rw [hcent, sum_eq_integral_add_frac hg hY]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a54bb0cea427c5004c5a044593ff393f2572576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
