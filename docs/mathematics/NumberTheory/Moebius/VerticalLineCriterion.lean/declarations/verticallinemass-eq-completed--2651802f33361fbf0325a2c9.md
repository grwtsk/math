# verticalLineMass_eq_completed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3994ad91-6832-88a2-d3f1-93609ad14caa",
  "kind": "theorem",
  "lexical_name": "verticalLineMass_eq_completed",
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
  "slug": "verticallinemass-eq-completed--2651802f33361fbf0325a2c9",
  "source": {
    "blob": "3acfdb95ea3ca582b50458577db96e553be21fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2651802f33361fbf0325a2c9bbe5d6fb254726f4d82015ae37b5ba422ffeb2e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3994ad91-6832-88a2-d3f1-93609ad14caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalLineMass_eq_completed {σ T : ℝ} (hσ : 0 < σ) (hT : 0 ≤ T) :
    verticalLineMass σ T =
      (2 * Real.pi)⁻¹ *
        (∫ ξ : ℝ,
          ‖(rawPrimeProduct ⌊Real.exp T⌋₊
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2) -
              cutoffCorrection ⌊Real.exp T⌋₊ T
                ((σ : ℂ) + (ξ : ℂ) * Complex.I)
                ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2)) /
            (((σ : ℂ) + (ξ : ℂ) * Complex.I) *
              ((σ : ℂ) + (ξ : ℂ) * Complex.I + 1 / 2))‖ ^ 2) := by
  exact (verticalLineMass_eq_weightedWindow hT).trans
    (completedNumerator_verticalLine_parseval hσ hT).symm

/-- The exact arithmetic obligation: at each positive vertical line, one
constant bounds every finite recording horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3acfdb95ea3ca582b50458577db96e553be21fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
