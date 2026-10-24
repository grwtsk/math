# positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61174fef-a676-6f72-70c9-16cbf6542ba9",
  "kind": "lemma",
  "lexical_name": "positive",
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
  "slug": "positive--d655162ac3acf922e4f143ad",
  "source": {
    "blob": "56f3881eafa108674795a0b6eec64d9353f92372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d655162ac3acf922e4f143ad2e20e18f15411aae0104af46014102cbccebf65b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61174fef-a676-6f72-70c9-16cbf6542ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma positive {a : ℕ → ℂ} (ha₀ : 0 ≤ a) (ha₁ : 0 < a 1) {x : ℝ} (hx : abscissaOfAbsConv a < x) :
    0 < LSeries a x := by
  rw [LSeries]
  refine Summable.tsum_pos ?_ (fun n ↦ term_nonneg (ha₀ n) x) 1 <| term_pos one_ne_zero ha₁ x
  exact LSeriesSummable_of_abscissaOfAbsConv_lt_re <| by simpa only [ofReal_re] using hx

/-- If all values of `a : ℕ → ℂ` are nonnegative reals and `a 1`
is positive, and the L-series of `a` agrees with an entire function `f` on some open
right half-plane where it converges, then `f` is real and positive on `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Positivity/Variant44c6d9a0a0b297ecbd64443924c3ac80c27d4213fc701704ce13f481eae60925.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f3881eafa108674795a0b6eec64d9353f92372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
