# source_re_le_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60fa7667-0447-0b2f-0cc0-fb6066d30b66",
  "kind": "theorem",
  "lexical_name": "source_re_le_base",
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
  "slug": "source-re-le-base--e0f85bbf5894fabe66f08346",
  "source": {
    "blob": "ab047448d8fa62aadfe341d8976874cc78b361d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 88,
    "path": "GRWTSK/Analysis/Complex/RationalRealPairUpperBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f85bbf5894fabe66f08346b2d9806f91adbf23b7d6703bdea52b38eb49acbf",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60fa7667-0447-0b2f-0cc0-fb6066d30b66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_re_le_base
    (x h : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hg : RationalTentAccumulation.Admissible x h rows)
    (z : Fin k → ℂ)
    (hz : ∀ i, (z i).re ≤ 1)
    (him : ∀ i, (z i).im ≠ 0)
    (hcoord : ∀ i, ‖z i - QComplex.embed (rows i).point.center‖ ≤
      ((rows i).point.coordinateError : ℝ)) :
    (∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))).re ≤
      ((RationalRealPairAccumulation.sumRealValue x h rows +
        RationalRealPairAccumulation.sumError x h rows : ℚ) : ℝ) := by
  have hs := RationalRealPairAccumulation.sum_sound
    x h rows hg z hz him hcoord
  have hre := (Complex.abs_re_le_norm
    ((∑ i, ((rows i).weight : ℂ) *
      (tentKernel (x : ℝ) (h : ℝ) (z i) +
        tentKernel (x : ℝ) (h : ℝ) (conj (z i)))) -
      (((RationalRealPairAccumulation.sumRealValue x h rows : ℚ) : ℝ) : ℂ))).trans hs
  have hu := (abs_le.mp hre).2
  simp only [Complex.sub_re, Complex.ofReal_re, Rat.cast_add] at hu ⊢
  linarith

/-- One directly rounded rational endpoint bounds the complete real source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalRealPairUpperBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalRealPairUpperBound.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab047448d8fa62aadfe341d8976874cc78b361d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
