# integral_Icc_split_at_xa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2ef6f41-afba-ac36-0d8b-31d74b044a56",
  "kind": "lemma",
  "lexical_name": "integral_Icc_split_at_xa",
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
  "slug": "integral-icc-split-at-xa--8ee6551612b2be2a174b69e4",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1462,
    "line": 1440,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ee6551612b2be2a174b69e446ad6b3cb15fd7d44c708107ffd157206a3cebe6",
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

Occurrence: `result:a2ef6f41-afba-ac36-0d8b-31d74b044a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1440–1462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integral_Icc_split_at_xa (f : ℝ → ℝ) (x : ℝ) (h2xa : 2 ≤ xₐ) (hxax : xₐ ≤ x)
    (hInt : IntegrableOn f (Set.Icc 2 x) volume) :
    ∫ t in Set.Icc 2 x, f t = (∫ t in Set.Icc 2 xₐ, f t) + (∫ t in Set.Icc xₐ x, f t) := by
  have hx2 : 2 ≤ x := le_trans h2xa hxax
  have h_int_left : IntegrableOn f (Set.Icc 2 xₐ) volume :=
    hInt.mono_set (by intro t ht; exact ⟨ht.1, le_trans ht.2 hxax⟩)
  have h_int_right : IntegrableOn f (Set.Icc xₐ x) volume :=
    hInt.mono_set (by intro t ht; exact ⟨by linarith [h2xa, ht.1], ht.2⟩)
  have h_int_left_u : IntegrableOn f (Set.uIcc 2 xₐ) volume := by
    simpa [Set.uIcc_of_le h2xa] using h_int_left
  have h_int_right_u : IntegrableOn f (Set.uIcc xₐ x) volume := by
    simpa [Set.uIcc_of_le hxax] using h_int_right
  have h_split_interval :
      ∫ t in (2 : ℝ)..x, f t =
        (∫ t in (2 : ℝ)..xₐ, f t) + (∫ t in xₐ..x, f t) :=
    (intervalIntegral.integral_add_adjacent_intervals
      (MeasureTheory.IntegrableOn.intervalIntegrable h_int_left_u)
      (MeasureTheory.IntegrableOn.intervalIntegrable h_int_right_u)).symm
  simpa [MeasureTheory.integral_Icc_eq_integral_Ioc,
      intervalIntegral.integral_of_le hx2,
      intervalIntegral.integral_of_le h2xa,
      intervalIntegral.integral_of_le hxax] using h_split_interval

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
