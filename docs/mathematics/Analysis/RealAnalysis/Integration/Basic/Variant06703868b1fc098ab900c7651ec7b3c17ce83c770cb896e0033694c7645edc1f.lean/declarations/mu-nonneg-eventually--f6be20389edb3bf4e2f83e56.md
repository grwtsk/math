# mu_nonneg_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31a0a2f2-a25c-65dd-6b82-06d2239b3bed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6841aa68-e3f8-8f20-ed42-a90ee64f33d1",
  "kind": "lemma",
  "lexical_name": "mu_nonneg_eventually",
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
  "slug": "mu-nonneg-eventually--f6be20389edb3bf4e2f83e56",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1316,
    "line": 1295,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6be20389edb3bf4e2f83e56b745f12f3bdd9823954df7f1b7304a112c26c9c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6841aa68-e3f8-8f20-ed42-a90ee64f33d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1295–1316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_nonneg_eventually (hΓ : Zeta23.GammaFacts) :
    ∃ τ₀ : ℝ, 0 ≤ τ₀ ∧ ∀ x, τ₀ ≤ x → 0 ≤ Zeta23.mu x := by
  obtain ⟨C, hC⟩ := hΓ.stirling
  refine ⟨2 * π * Real.exp (2 * π * |C|), by positivity, fun x hx => ?_⟩
  have h1 : (1:ℝ) ≤ Real.exp (2 * π * |C|) := Real.one_le_exp (by positivity)
  have hx1 : 1 ≤ x := by nlinarith [Real.pi_gt_three]
  have hx0 : 0 < x := by linarith
  have hst := hC x (by rwa [abs_of_pos hx0])
  rw [abs_of_pos hx0] at hst
  have hlog : 2 * π * |C| ≤ Real.log (x / (2 * π)) := by
    rw [← Real.log_exp (2 * π * |C|)]
    apply Real.log_le_log (Real.exp_pos _)
    rw [le_div_iff₀ (by positivity)]; linarith
  have hCx : C / x ^ 2 ≤ |C| := by
    calc C / x ^ 2 ≤ |C| / x ^ 2 := by gcongr; exact le_abs_self _
      _ ≤ |C| / 1 := by apply div_le_div_of_nonneg_left (abs_nonneg _) one_pos; nlinarith
      _ = |C| := div_one _
  have h2 : |C| ≤ 1 / (2 * π) * Real.log (x / (2 * π)) := by
    rw [div_mul_eq_mul_div, one_mul, le_div_iff₀ (by positivity)]; linarith
  linarith [(abs_le.1 hst).1]

/-- **Sum of the P-parts** (§5.2): `|Σ_{k<d} G^P_kk| ≤ (L²/log 2) Σ_{n≤X} a_n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L1295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
