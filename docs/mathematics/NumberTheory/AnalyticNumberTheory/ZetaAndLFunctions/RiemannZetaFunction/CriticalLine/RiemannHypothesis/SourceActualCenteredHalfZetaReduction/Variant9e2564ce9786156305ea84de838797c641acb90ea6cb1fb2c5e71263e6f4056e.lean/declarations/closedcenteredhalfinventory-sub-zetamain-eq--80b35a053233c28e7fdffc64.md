# closedCenteredHalfInventory_sub_zetaMain_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e49bccf-ba49-9f06-71e9-07caa9f24ffd",
  "kind": "theorem",
  "lexical_name": "closedCenteredHalfInventory_sub_zetaMain_eq",
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
  "slug": "closedcenteredhalfinventory-sub-zetamain-eq--80b35a053233c28e7fdffc64",
  "source": {
    "blob": "ca06da31ba9da09e2244501643f8cb1e9a3869f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b35a053233c28e7fdffc647eb5172e8543ea9c4e37ccc92af9ad5ee5d96aad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e49bccf-ba49-9f06-71e9-07caa9f24ffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedCenteredHalfInventory_sub_zetaMain_eq (U L : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) :
    closedCenteredHalfInventory U L - actualCenteredHalfZetaMain U =
      alpha U * halfHarmonicFractionalTail L -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * halfHarmonicQuotientDefect L d := by
  have hf := closedCenteredHalfInventory_eq_finite_harmonics U L hU hUL
  have hH := finiteHalfHarmonic_eq_sqrt_zeta_tail L (hU.trans hUL)
  have he (d : ℕ) : (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) =
      (moebius d : ℝ) * halfHarmonicQuotientDefect L d +
        2 * Real.sqrt (L : ℝ) * ((moebius d : ℝ) / (d : ℝ)) +
          (riemannZeta (1 / 2 : ℂ)).re * ((moebius d : ℝ) / Real.sqrt (d : ℝ)) := by
    unfold halfHarmonicQuotientDefect
    ring
  have hs := Finset.sum_congr rfl (fun d (_hd : d ∈ Finset.Icc 1 U) => he d)
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum,
    ← Finset.mul_sum] at hs
  change (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) / Real.sqrt (d : ℝ) *
      finiteHalfHarmonic (L / d)) =
        (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * halfHarmonicQuotientDefect L d) +
          2 * Real.sqrt (L : ℝ) * alpha U +
            (riemannZeta (1 / 2 : ℂ)).re * actualCriticalMoebiusHalf U at hs
  unfold actualCenteredHalfZetaMain
  rw [hf, hH, hs]
  ring

/-- The entire actual signed finite quotient error has a vanishing upper-end budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca06da31ba9da09e2244501643f8cb1e9a3869f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
