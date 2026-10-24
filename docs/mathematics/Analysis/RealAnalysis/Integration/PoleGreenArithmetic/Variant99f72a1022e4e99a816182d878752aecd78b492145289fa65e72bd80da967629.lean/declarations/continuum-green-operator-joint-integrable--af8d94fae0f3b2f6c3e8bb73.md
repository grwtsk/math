# continuum_green_operator_joint_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d6ff704-7b30-df46-2a3c-1a9aa59f37a1",
  "kind": "theorem",
  "lexical_name": "continuum_green_operator_joint_integrable",
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
  "slug": "continuum-green-operator-joint-integrable--af8d94fae0f3b2f6c3e8bb73",
  "source": {
    "blob": "4542eb0b4186a5eaebfb61486e77f54a792ee7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8d94fae0f3b2f6c3e8bb735fdb7ba48499c3a9c1c961ae3013198a6e2b8839",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d6ff704-7b30-df46-2a3c-1a9aa59f37a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuum_green_operator_joint_integrable (A : ℝ) (f : ℝ → ℝ)
    (hf : ContDiff ℝ 4 f) (hcf : HasCompactSupport f) :
    Integrable (fun z : ℝ × ℝ ↦
      ((Icc (0 : ℝ) (2 * A)).indicator
        (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (z.1 - x))) z.2 *
          poleSquaredDifferentialOperator f z.1) (volume.prod volume) := by
  let S := tsupport (poleSquaredDifferentialOperator f) ×ˢ Icc (0 : ℝ) (2 * A)
  let H : ℝ × ℝ → ℝ := fun z ↦ Real.exp (z.2 / 2) *
    poleSquaredGreenKernel (z.1 - z.2) * poleSquaredDifferentialOperator f z.1
  have hS : IsCompact S := (pole_squared_operator_has_compact_support f hcf).isCompact.prod
    isCompact_Icc
  have hH : Continuous H := by
    have hg : Continuous poleSquaredGreenKernel := by unfold poleSquaredGreenKernel; fun_prop
    exact (((Real.continuous_exp.comp (continuous_snd.div_const 2)).mul
      (hg.comp (continuous_fst.sub continuous_snd))).mul
        ((pole_squared_operator_continuous f hf).comp continuous_fst))
  have heq : (fun z : ℝ × ℝ ↦
      ((Icc (0 : ℝ) (2 * A)).indicator
        (fun x ↦ Real.exp (x / 2) * poleSquaredGreenKernel (z.1 - x))) z.2 *
          poleSquaredDifferentialOperator f z.1) = S.indicator H := by
    funext z
    by_cases ht : z.1 ∈ tsupport (poleSquaredDifferentialOperator f)
    · by_cases hx : z.2 ∈ Icc (0 : ℝ) (2 * A) <;>
        simp [S, H, ht, hx]
    · have hz := image_eq_zero_of_notMem_tsupport ht
      simp [S, H, indicator_apply, ht, hz]
  rw [heq]
  exact (hH.continuousOn.integrableOn_compact hS).integrable_indicator hS.measurableSet

/-- Compact-rectangle Fubini evaluates the actual continuous Green contribution exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleGreenArithmetic/Variant99f72a1022e4e99a816182d878752aecd78b492145289fa65e72bd80da967629.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4542eb0b4186a5eaebfb61486e77f54a792ee7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
