# part1_decay_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8898d96f-47c6-4254-be10-f98dc8b3ed6d",
  "kind": "lemma",
  "lexical_name": "part1_decay_bound",
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
  "slug": "part1-decay-bound--df2bbda18ee783b609b0fabe",
  "source": {
    "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 794,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df2bbda18ee783b609b0fabe594b4fc8f8aab0d78b76546dc8946a057b7f7599",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8898d96f-47c6-4254-be10-f98dc8b3ed6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma part1_decay_bound
    (t powfac expfac : ℝ)
    (ht : t ≥ 1000)
    (hpow_le_div : powfac ≤ (5.5666305 : ℝ) / t)
    (hexpfac_nonneg : 0 ≤ expfac)
    (h_exp_half :
      expfac * exp (-(1 / 2 : ℝ) * t) ≤ exp (-(1 / 4 : ℝ) * t)) :
    powfac * expfac * ((2 * t) * exp (-(1 / 2 : ℝ) * t))
      ≤ (2 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) := by
  have ht_pos : 0 < t := by linarith [ht]
  have hpow_t : powfac * (2 * t) ≤ 2 * (5.5666305 : ℝ) := by
    have hmul : powfac * (2 * t) ≤ ((5.5666305 : ℝ) / t) * (2 * t) :=
      mul_le_mul_of_nonneg_right hpow_le_div (by positivity)
    have ht_eq : ((5.5666305 : ℝ) / t) * (2 * t) = 2 * (5.5666305 : ℝ) := by
      field_simp [ht_pos.ne']
    calc
      powfac * (2 * t) ≤ ((5.5666305 : ℝ) / t) * (2 * t) := hmul
      _ = 2 * (5.5666305 : ℝ) := ht_eq
  have hexp230 :
      exp (-(1 / 4 : ℝ) * t) ≤ exp (-(230 : ℝ)) := by
    refine (Real.exp_le_exp).2 ?_
    linarith [ht]
  calc
    powfac * expfac * ((2 * t) * exp (-(1 / 2 : ℝ) * t))
        = (powfac * (2 * t)) * (expfac * exp (-(1 / 2 : ℝ) * t)) := by ring_nf
    _ ≤ (2 * (5.5666305 : ℝ)) * exp (-(1 / 4 : ℝ) * t) := by
      exact mul_le_mul hpow_t h_exp_half
        (mul_nonneg hexpfac_nonneg (Real.exp_nonneg _)) (by positivity)
    _ ≤ (2 * (5.5666305 : ℝ)) * exp (-(230 : ℝ)) := by
      exact mul_le_mul_of_nonneg_left hexp230 (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
