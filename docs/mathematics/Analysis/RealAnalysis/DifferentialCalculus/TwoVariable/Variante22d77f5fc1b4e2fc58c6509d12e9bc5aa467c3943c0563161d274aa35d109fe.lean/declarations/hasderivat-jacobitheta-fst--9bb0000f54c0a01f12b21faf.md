# hasDerivAt_jacobiTheta₂_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52047f33-c331-d43b-e235-b9da525fb8c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c30266e9-37cd-2953-af53-65ac3ea726c4",
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
  "slug": "hasderivat-jacobitheta-fst--9bb0000f54c0a01f12b21faf",
  "source": {
    "blob": "cd77f9b89bf0f397ea397436abf6b5f605eeb5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bb0000f54c0a01f12b21faf73d3b20830944854bd0e96d85cc9d151263218a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c30266e9-37cd-2953-af53-65ac3ea726c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–360.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TwoVariable/Variante22d77f5fc1b4e2fc58c6509d12e9bc5aa467c3943c0563161d274aa35d109fe.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd77f9b89bf0f397ea397436abf6b5f605eeb5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
