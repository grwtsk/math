# hasDerivAt_jacobiTheta₂_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e70ac20-b232-b960-5c11-beee98d624e0",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_jacobiTheta₂_fst",
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
  "slug": "hasderivat-jacobitheta-fst--873e8b98a963b471e2251d14",
  "source": {
    "blob": "fff7edb82ee71ebadce8dce2f842269bc7169126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:873e8b98a963b471e2251d14897fe112afcf1f74ceb82c44f04dda877f5ef0ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e70ac20-b232-b960-5c11-beee98d624e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_jacobiTheta₂_fst (z : ℂ) {τ : ℂ} (hτ : 0 < im τ) :
    HasDerivAt (jacobiTheta₂ · τ) (jacobiTheta₂' z τ) z := by
  -- This proof is annoyingly fiddly, because of the need to commute "evaluation at a point"
  -- through infinite sums of continuous linear maps.
  let eval_fst_CLM : (ℂ × ℂ →L[ℂ] ℂ) →L[ℂ] ℂ :=
  { toFun := fun f ↦ f (1, 0)
    cont := continuous_id'.clm_apply continuous_const
    map_add' := by simp only [ContinuousLinearMap.add_apply, forall_const]
    map_smul' := by simp only [ContinuousLinearMap.coe_smul', Pi.smul_apply, smul_eq_mul,
      RingHom.id_apply, forall_const] }
  have step1 : HasSum (fun n ↦ (jacobiTheta₂_term_fderiv n z τ) (1, 0))
      ((jacobiTheta₂_fderiv z τ) (1, 0)) := by
    apply eval_fst_CLM.hasSum (hasSum_jacobiTheta₂_term_fderiv z hτ)
  have step2 (n : ℤ) : (jacobiTheta₂_term_fderiv n z τ) (1, 0) = jacobiTheta₂'_term n z τ := by
    simp only [jacobiTheta₂_term_fderiv, smul_add, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.coe_smul', ContinuousLinearMap.coe_fst', Pi.smul_apply, smul_eq_mul,
      mul_one, ContinuousLinearMap.coe_snd', mul_zero, add_zero, jacobiTheta₂'_term,
      jacobiTheta₂_term, mul_comm _ (cexp _)]
  rw [funext step2] at step1
  #adaptation_note /-- https://github.com/leanprover/lean4/pull/6024
    need `by exact` to bypass unification failure -/
  have step3 : HasDerivAt (fun x ↦ jacobiTheta₂ x τ) ((jacobiTheta₂_fderiv z τ) (1, 0)) z := by
    exact ((hasFDerivAt_jacobiTheta₂ z hτ).comp z (hasFDerivAt_prodMk_left z τ)).hasDerivAt
  rwa [← step1.tsum_eq] at step3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variantd5c4f7e3d8a1ae3f3ef839603bd7d685585448d47db8db78a162541a19009912.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff7edb82ee71ebadce8dce2f842269bc7169126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
