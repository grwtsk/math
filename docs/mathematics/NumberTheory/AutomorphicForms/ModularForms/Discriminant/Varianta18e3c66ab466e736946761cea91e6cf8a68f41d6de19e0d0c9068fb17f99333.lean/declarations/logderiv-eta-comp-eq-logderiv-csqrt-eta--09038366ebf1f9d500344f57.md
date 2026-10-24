# logDeriv_eta_comp_eq_logDeriv_csqrt_eta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52f0a67f-5b06-d5c0-a831-d83a2a244d6c",
  "kind": "lemma",
  "lexical_name": "logDeriv_eta_comp_eq_logDeriv_csqrt_eta",
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
  "slug": "logderiv-eta-comp-eq-logderiv-csqrt-eta--09038366ebf1f9d500344f57",
  "source": {
    "blob": "5dbbc6d406dc7f97bb23349d05d66f2f69d7139c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09038366ebf1f9d500344f572b6729795fc2fa4483d47c5a2a6f6bf21212fbd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f0a67f-5b06-d5c0-a831-d83a2a244d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_eta_comp_eq_logDeriv_csqrt_eta (z : ℍ) :
    logDeriv (η ∘ (-1 / ·)) z = logDeriv (sqrt * η) z := by
  rw [logDeriv_eta_comp_div_eq z,
      logDeriv_mul _ (by simp [sqrt, ne_zero z]) (eta_ne_zero z.2)
      (differentiableAt_sqrt (mem_slitPlane z))
      (differentiableAt_eta_of_mem_upperHalfPlaneSet z.2), logDeriv_apply sqrt]
  have hE2 := congrFun (E2_slash_action ModularGroup.S) z
  simp only [one_div, SL_slash_def, modular_S_smul, ModularGroup.denom_S,
    Int.reduceNeg, zpow_neg, riemannZeta_two, mul_inv_rev, inv_div, Pi.sub_apply, Pi.smul_apply,
    D2, ModularGroup.denom_S, smul_eq_mul] at hE2
  rw [deriv_sqrt (mem_slitPlane z), div_eq_mul_inv, logDeriv_eta_eq_E2 z,
    logDeriv_eta_eq_E2 (.mk _ z.im_inv_neg_coe_pos), ← mul_assoc, mul_comm, ← mul_assoc, hE2, sqrt,
    show ModularGroup.S 1 0 = 1 by simp [ModularGroup.S]]
  transitivity 1 / z / 2 + π * I / 12 * E2 z
  · field_simp
    grind [I_sq]
  · rw [div_mul_eq_mul_div₀ _ _ (2 : ℂ), neg_div, cpow_neg, ← mul_inv, ← cpow_add _ _ z.ne_zero]
    norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Varianta18e3c66ab466e736946761cea91e6cf8a68f41d6de19e0d0c9068fb17f99333.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dbbc6d406dc7f97bb23349d05d66f2f69d7139c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
