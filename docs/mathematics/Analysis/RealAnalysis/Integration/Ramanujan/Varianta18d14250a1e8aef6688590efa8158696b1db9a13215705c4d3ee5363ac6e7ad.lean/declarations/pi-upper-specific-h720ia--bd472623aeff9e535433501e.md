# pi_upper_specific_h720Ia

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:696fd415-52a0-8a55-49fa-b9fd8c10f298",
  "kind": "lemma",
  "lexical_name": "pi_upper_specific_h720Ia",
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
  "slug": "pi-upper-specific-h720ia--bd472623aeff9e535433501e",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1614,
    "line": 1599,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd472623aeff9e535433501e2c6619251c24e98e6904bccb8afb30e7d2eb0216",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:696fd415-52a0-8a55-49fa-b9fd8c10f298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1599–1614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma pi_upper_specific_h720Ia
    (x : ℝ)
    (ha_int : IntegrableOn (fun t ↦ a t / log t ^ 7) (Set.Icc 2 x) volume) :
    (720 : ℝ) * (∫ t in Set.Icc 2 x, 1 / log t ^ 7) + (∫ t in Set.Icc 2 x, a t / log t ^ 7)
      = ∫ t in Set.Icc 2 x, (720 + a t) / log t ^ 7 := by
  have hJ_int : IntegrableOn (fun t : ℝ ↦ 1 / log t ^ 7) (Set.Icc 2 x) volume :=
    ContinuousOn.integrableOn_Icc (continuousOn_const.div (ContinuousOn.pow
      (continuousOn_log.mono <| by intro t ht; exact ne_of_gt (lt_of_lt_of_le (by norm_num) ht.1)) _) fun t ht ↦
      pow_ne_zero _ <| ne_of_gt <| log_pos <| by linarith [ht.1])
  have h720_int_mul : IntegrableOn (fun t : ℝ ↦ (720 : ℝ) * (1 / log t ^ 7)) (Set.Icc 2 x) volume :=
    hJ_int.const_mul 720
  rw [← MeasureTheory.integral_const_mul, ← MeasureTheory.integral_add h720_int_mul ha_int]
  refine MeasureTheory.setIntegral_congr_fun measurableSet_Icc ?_
  intro t ht
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
