# completedNumerator_verticalLine_parseval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da932347-b1b2-2aed-5806-43d4f1e21d15",
  "kind": "theorem",
  "lexical_name": "completedNumerator_verticalLine_parseval",
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
  "slug": "completednumerator-verticalline-parseval--70aaea5861af79005a022b81",
  "source": {
    "blob": "a6b99ae65b8872800dbbf9ecdf285a1a6e377f73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 174,
    "path": "GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70aaea5861af79005a022b8120f4a225f9a9992041357e5e83f87b4eeb023686",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da932347-b1b2-2aed-5806-43d4f1e21d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedNumerator_verticalLine_parseval {σ T : ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T) :
    (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖(rawPrimeProduct ⌊Real.exp T⌋₊
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
              cutoffCorrection ⌊Real.exp T⌋₊ T
                ((σ : ℂ) + (ξ : ℂ) * Complex.I)
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
            (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
              ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2))‖ ^ 2) =
      ∫ u in Icc (0 : ℝ) T, Real.exp (-2 * σ * u) * wholePickup u ^ 2 := by
  rw [← verticalLine_parseval hT]
  congr 2
  funext ξ
  rw [verticalLine_completed_formula hσ hT ξ]

end GRWTSK.NumberTheory.Moebius.DampedRecording

#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.rawFourier_window
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.verticalLine_parseval
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.verticalLine_completed_formula
#print axioms GRWTSK.NumberTheory.Moebius.DampedRecording.completedNumerator_verticalLine_parseval
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DampedRecordingParseval.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b99ae65b8872800dbbf9ecdf285a1a6e377f73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
