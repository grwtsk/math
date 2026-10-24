# norm_logDeriv_zeta_le_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e01f86d0-2b2a-4188-faf9-87cb207370a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0de136d0-4cc4-0125-4cf9-2bd038592f09",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_zeta_le_of_one_lt_re",
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
  "slug": "norm-logderiv-zeta-le-of-one-lt-re--ce4575828a942d4eef08d780",
  "source": {
    "blob": "a2ae92dfd3852a435f3b7d5adc13cdde73073280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4575828a942d4eef08d7802e09cf8a6335c5d34064372a0a1d0d2bbd6f959d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de136d0-4cc4-0125-4cf9-2bd038592f09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_zeta_le_of_one_lt_re {c : ℝ} (hc1 : 1 < c) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, ‖logDeriv riemannZeta ((c : ℂ) + t * I)‖ ≤ M := by
  have hre : ∀ t : ℝ, ((c : ℂ) + t * I).re = c := fun t => by simp
  have hsum : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) := by
    have h := ArithmeticFunction.LSeriesSummable_vonMangoldt (s := (c : ℂ)) (by simpa using hc1)
    exact summable_norm_iff.mpr h
  refine ⟨∑' n : ℕ, ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖,
    tsum_nonneg fun _ => norm_nonneg _, fun t => ?_⟩
  have hre1 : 1 < ((c : ℂ) + t * I).re := by rw [hre]; exact hc1
  have h1 : logDeriv riemannZeta ((c : ℂ) + t * I)
      = -LSeries (fun n => (Λ n : ℂ)) ((c : ℂ) + t * I) := by
    have h2 := ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre1
    rw [logDeriv, Pi.div_apply, h2]; ring
  have hnorm : ∀ n : ℕ, ‖LSeries.term (fun n => (Λ n : ℂ)) ((c : ℂ) + t * I) n‖
      = ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖ := by
    intro n
    rw [LSeries.norm_term_eq, LSeries.norm_term_eq, hre, Complex.ofReal_re]
  have hsum' : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) ((c : ℂ) + t * I) n‖) := by
    simp_rw [hnorm]; exact hsum
  rw [h1, norm_neg, LSeries]
  calc ‖∑' n, LSeries.term (fun n => (Λ n : ℂ)) ((c : ℂ) + t * I) n‖
      ≤ ∑' n, ‖LSeries.term (fun n => (Λ n : ℂ)) ((c : ℂ) + t * I) n‖ := norm_tsum_le_tsum_norm hsum'
    _ = ∑' n, ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖ := by simp_rw [hnorm]

/-- `t ↦ ζ'/ζ(c+it)` is continuous for `c > 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variantae4bdd8b6fb5ad3f0b4bf0b951cd7d19802240f255b4d963d0ce96c8ed37e1a0.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae92dfd3852a435f3b7d5adc13cdde73073280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
