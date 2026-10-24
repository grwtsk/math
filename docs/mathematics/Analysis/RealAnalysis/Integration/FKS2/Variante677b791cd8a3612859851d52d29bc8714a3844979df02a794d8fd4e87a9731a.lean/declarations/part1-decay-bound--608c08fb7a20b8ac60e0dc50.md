# part1_decay_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 786,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64ebd5a4-8611-1e31-4f4c-daa1e04608ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ae0c77b-2db7-db9e-d77e-53f48f533312",
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
  "slug": "part1-decay-bound--608c08fb7a20b8ac60e0dc50",
  "source": {
    "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 786,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608c08fb7a20b8ac60e0dc506d8752b87fff2f2ac682cd6701bafa21121ba8d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ae0c77b-2db7-db9e-d77e-53f48f533312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 786–816.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean#L786).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
