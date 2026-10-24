# actualCarrier_zero_free_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:add870f1-7ad1-01c1-8896-5df4157f6054",
  "kind": "theorem",
  "lexical_name": "actualCarrier_zero_free_gap",
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
  "slug": "actualcarrier-zero-free-gap--76c9a0e967c59288ab33b1a0",
  "source": {
    "blob": "998dfea89637bd2a3b685030b63ab8210bac8aa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative02/Variantc5a5310032fadd284fc1fd3dff528b33cdd85cb404042ac81534b7506f883c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c9a0e967c59288ab33b1a06820f2d5d51ea9fee0ce004e8171b1023af048ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative02/Variantc5a5310032fadd284fc1fd3dff528b33cdd85cb404042ac81534b7506f883c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:add870f1-7ad1-01c1-8896-5df4157f6054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCarrier_zero_free_gap :
    ∃ a : ℝ, a ∈ Ioc 0 (1 / 2) ∧
      ∀ rho : (zetaZeros zetaSeam).carrier, 3 < |(rho : ℂ).im| →
        a / (Real.log |(rho : ℂ).im|) ^ 9 < (rho : ℂ).re ∧
        (rho : ℂ).re < 1 - a / (Real.log |(rho : ℂ).im|) ^ 9 := by
  obtain ⟨a, ha, hf⟩ := ZetaZeroFree
  refine ⟨a, ha, fun rho ht => ?_⟩
  have hrho : IsNontrivialZero (rho : ℂ) := rho.2
  have hu := actual_zero_upper_gap a hf rho hrho ht
  have hl := actual_zero_upper_gap a hf (reflect rho)
    (zetaSeam.reflect_zero rho hrho) (by simpa [reflect] using ht)
  have he : (reflect (rho : ℂ)).re = 1 - (rho : ℂ).re := by simp [reflect]
  have hi : (reflect (rho : ℂ)).im = (rho : ℂ).im := by simp [reflect]
  rw [he, hi] at hl
  exact ⟨by linarith, hu⟩

/-- The exact open-height head retains the low ordinate prefix; the rest has this finite gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative02/Variantc5a5310032fadd284fc1fd3dff528b33cdd85cb404042ac81534b7506f883c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative02/Variantc5a5310032fadd284fc1fd3dff528b33cdd85cb404042ac81534b7506f883c4a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `998dfea89637bd2a3b685030b63ab8210bac8aa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
