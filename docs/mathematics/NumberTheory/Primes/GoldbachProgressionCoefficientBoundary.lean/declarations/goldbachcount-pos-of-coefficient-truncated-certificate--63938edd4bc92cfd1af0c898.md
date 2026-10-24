# goldbachCount_pos_of_coefficient_truncated_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9f0b57d-fc5d-61e5-5067-1a422fb0e75c",
  "kind": "theorem",
  "lexical_name": "goldbachCount_pos_of_coefficient_truncated_certificate",
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
  "slug": "goldbachcount-pos-of-coefficient-truncated-certificate--63938edd4bc92cfd1af0c898",
  "source": {
    "blob": "3070d9554d88bf5c37a7daf96dcee2623c53aaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63938edd4bc92cfd1af0c898edd4428dafdad47da9a4135c5fd92bdb1ce884ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9f0b57d-fc5d-61e5-5067-1a422fb0e75c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCount_pos_of_coefficient_truncated_certificate
    {arcQ localQ N : ℕ}
    (harcScale : 2 * arcQ ^ 2 < N + 1)
    (hlocalQ : 2 ≤ localQ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale modelError minorError : ℝ)
    (hmodel :
      goldbachCoefficientTruncatedMainScale
          localQ N scale - modelError ≤
        (goldbachProgressionFactoredMajorSum arcQ N).re)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ x ∈ goldbachClippedRationalArc arcQ N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤
        minorError)
    (hmargin :
      modelError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ,
            goldbachProgressionArcErrorBudget
              arcQ N aq residueError) +
          minorError <
        goldbachCoefficientTruncatedMainScale
          localQ N scale) :
    0 < goldbachCount N := by
  have hscaleEq :=
    goldbachCoefficientTruncatedMainScale_eq
      (Q := localQ) (N := N) hlocalQ scale
  apply goldbachCount_pos_of_progression_truncated_certificate
    harcScale residueError scale modelError minorError
  · rw [goldbachProgressionArcModelMajorSum_eq_factored,
      ← hscaleEq]
    exact hmodel
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · rw [← hscaleEq]
    exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3070d9554d88bf5c37a7daf96dcee2623c53aaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
