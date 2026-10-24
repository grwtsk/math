# positive_phase_prefix_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3baeac04-2a27-56cb-3102-fc65978dd7c1",
  "kind": "theorem",
  "lexical_name": "positive_phase_prefix_le_mass",
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
  "slug": "positive-phase-prefix-le-mass--42de823bc84e1ca63225b76e",
  "source": {
    "blob": "74c5c515d776c154fbf569d784913f7bbc555732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variante7aecb9315b37957e41e2afa3a3f7c27d6b951f840f5daf0de7035f032d7bbce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42de823bc84e1ca63225b76ec31f2d7c8753d08b7188e910e8851edea8975a04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variante7aecb9315b37957e41e2afa3a3f7c27d6b951f840f5daf0de7035f032d7bbce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3baeac04-2a27-56cb-3102-fc65978dd7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_phase_prefix_le_mass {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Set.Icc 0 (2 * A)) :
    (∫ t in 0..u, positiveSlope A t) ≤ positiveMass A := by
  have hp : 0 < A := by linarith
  have hr : 0 ≤ ∫ t in u..2 * A, positiveSlope A t :=
    intervalIntegral.integral_nonneg hu.2 (fun t _ => positiveSlope_nonneg A t)
  have hadd := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    ((positiveSlope_continuous hp).intervalIntegrable 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable u (2 * A))
  change (∫ t in 0..u, positiveSlope A t) ≤ ∫ t in 0..2 * A, positiveSlope A t
  linarith

/-- A source value controls phase mass before any arithmetic error is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variante7aecb9315b37957e41e2afa3a3f7c27d6b951f840f5daf0de7035f032d7bbce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variante7aecb9315b37957e41e2afa3a3f7c27d6b951f840f5daf0de7035f032d7bbce.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c5c515d776c154fbf569d784913f7bbc555732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
