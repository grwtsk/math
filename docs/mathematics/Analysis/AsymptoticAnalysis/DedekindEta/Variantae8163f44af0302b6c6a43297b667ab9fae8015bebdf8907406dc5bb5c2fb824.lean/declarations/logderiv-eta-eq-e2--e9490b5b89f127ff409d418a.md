# logDeriv_eta_eq_E2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ac4781-d3e7-1740-0a2a-e4d5d9a2edb8",
  "kind": "lemma",
  "lexical_name": "logDeriv_eta_eq_E2",
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
  "slug": "logderiv-eta-eq-e2--e9490b5b89f127ff409d418a",
  "source": {
    "blob": "4752cbb504378c5b719939f5eaab0007e09dfb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9490b5b89f127ff409d418a80f7bbeda9380c0a05a90e76ebbdedcef96506ae",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ac4781-d3e7-1740-0a2a-e4d5d9a2edb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_eta_eq_E2 (z : ℍ) : logDeriv eta z = (π * I / 12) * E2 z := by
  unfold eta
  rw [logDeriv_fun_mul _ (Periodic.qParam_ne_zero _) (eta_tprod_ne_zero z.2) (by fun_prop)
    (differentiableAt_eta_tprod z.2)]
  have HG := logDeriv_tprod_eq_tsum isOpen_upperHalfPlaneSet z.2
    (one_sub_eta_q_ne_zero · z.2) (by fun_prop) (summable_logDeriv_one_sub_eta_q z.2)
    multipliableLocallyUniformlyOn_eta (eta_tprod_ne_zero z.2)
  simp only [logDeriv_qParam 24 z, HG, tsum_logDeriv_eta_q z, E2, one_div,
    mul_inv_rev, Pi.smul_apply, smul_eq_mul]
  rw [G2_eq_tsum_cexp, riemannZeta_two, ← tsum_pow_div_one_sub_eq_tsum_sigma
    (norm_exp_two_pi_I_lt_one z), mul_sub, sub_eq_add_neg, mul_add]
  simp [eta_q_eq_pow, ← tsum_mul_left, tsum_pnat_eq_tsum_succ (f := fun n ↦
        n * cexp (2 * π * I * z) ^ n / (1 - cexp (2 * π * I * z) ^ n)), ← tsum_neg]
  grind

end ModularForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4752cbb504378c5b719939f5eaab0007e09dfb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
