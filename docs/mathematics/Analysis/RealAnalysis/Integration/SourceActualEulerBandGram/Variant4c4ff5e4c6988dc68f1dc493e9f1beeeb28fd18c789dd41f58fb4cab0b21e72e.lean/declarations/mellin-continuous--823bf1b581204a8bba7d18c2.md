# mellin_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e641947-7213-af9b-f463-01bb16a08fce",
  "kind": "theorem",
  "lexical_name": "mellin_continuous",
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
  "slug": "mellin-continuous--823bf1b581204a8bba7d18c2",
  "source": {
    "blob": "d20200a7c90b0a867a13f0f98a7b219f356d7925",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant4c4ff5e4c6988dc68f1dc493e9f1beeeb28fd18c789dd41f58fb4cab0b21e72e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823bf1b581204a8bba7d18c2f28849c51906e2c447455ba87a4a3a2710fbf0be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant4c4ff5e4c6988dc68f1dc493e9f1beeeb28fd18c789dd41f58fb4cab0b21e72e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e641947-7213-af9b-f463-01bb16a08fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mellin_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
  have hc := (spectrum_continuous hA).comp
    (show Continuous (fun t : ℝ => -t / (2 * Real.pi)) by fun_prop)
  have he : (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) =
      (fun t : ℝ => actualTiltStandardSpectrum A (-t / (2 * Real.pi)) ^ 2) := by
    funext t
    have hh := spectrum_neg_sq hA (t / (2 * Real.pi))
    have hmul : 2 * Real.pi * (t / (2 * Real.pi)) = t := by field_simp
    simpa only [neg_div, hmul] using hh.symm
  rw [he]
  exact hc.pow 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant4c4ff5e4c6988dc68f1dc493e9f1beeeb28fd18c789dd41f58fb4cab0b21e72e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant4c4ff5e4c6988dc68f1dc493e9f1beeeb28fd18c789dd41f58fb4cab0b21e72e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20200a7c90b0a867a13f0f98a7b219f356d7925` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
