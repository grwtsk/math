# cast_squareCorrectionUpperQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0283419-36bc-5e6a-0532-4cdf910bb24d",
  "kind": "theorem",
  "lexical_name": "cast_squareCorrectionUpperQ",
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
  "slug": "cast-squarecorrectionupperq--a17e47fb118cec9befabcaaf",
  "source": {
    "blob": "4ff2c07d0b593b14207670441f6c0e540d793ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17e47fb118cec9befabcaafccab4990f9a3eaabe710fe94f8b1300f3cd70b80",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0283419-36bc-5e6a-0532-4cdf910bb24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem cast_squareCorrectionUpperQ
    (n : ℕ)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ)) :
    (squareCorrectionUpperQ n stageLog cutoffLog : ℝ) =
      2 * (MarginLog.upperQ stageLog : ℝ) *
        (MarginLog.upperQ cutoffLog : ℝ) := by
  simp [squareCorrectionUpperQ]

/-- The two dyadic logarithm inputs majorize the actual proper-prime-power budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RationalCanonicalPrimeMargin.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ff2c07d0b593b14207670441f6c0e540d793ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
