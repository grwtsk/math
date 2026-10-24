# actual_initial_series_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f6672a-3f9c-3ef4-bf18-f544acfe424f",
  "kind": "theorem",
  "lexical_name": "actual_initial_series_continuous",
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
  "slug": "actual-initial-series-continuous--0b633a316c0eca6fc575af34",
  "source": {
    "blob": "b3e48c4c436ed66ed4b10099b13b7dc0bb204063",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variant30f22f910b3186f5ff65547ffd53a1b4f437537e58407efa84b729defcfcb46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b633a316c0eca6fc575af34b379fef72e2d6ef97f41c9da179d6db38291183c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variant30f22f910b3186f5ff65547ffd53a1b4f437537e58407efa84b729defcfcb46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f6672a-3f9c-3ef4-bf18-f544acfe424f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_initial_series_continuous (c : ℝ) (hc : 1 < c) :
    Continuous (fun t : ℝ =>
      LSeries actualMangoldtCoefficients ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  have hab : LSeries.abscissaOfAbsConv actualMangoldtCoefficients ≤ (1 : ℝ) := by
    apply LSeries.abscissaOfAbsConv_le_of_forall_lt_LSeriesSummable
    intro y hy
    exact ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hy)
  apply continuous_iff_continuousAt.mpr
  intro t
  have hs : LSeries.abscissaOfAbsConv actualMangoldtCoefficients <
      ((c : ℂ) + (t : ℂ) * Complex.I).re := by
    apply lt_of_le_of_lt hab
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
      Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
    exact_mod_cast hc
  have hh : ContinuousAt (fun u : ℝ => (c : ℂ) + (u : ℂ) * Complex.I) t := by fun_prop
  exact ContinuousAt.comp (f := fun u : ℝ => (c : ℂ) + (u : ℂ) * Complex.I)
    (LSeries_hasDerivAt hs).continuousAt hh

/-- Literal initial-line density of the actual normalized source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variant30f22f910b3186f5ff65547ffd53a1b4f437537e58407efa84b729defcfcb46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualInitialPrimeLineL1Native2/Variant30f22f910b3186f5ff65547ffd53a1b4f437537e58407efa84b729defcfcb46a.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3e48c4c436ed66ed4b10099b13b7dc0bb204063` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
