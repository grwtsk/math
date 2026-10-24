# goldbachMajor_add_minor_eq_logMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:154d33df-80b7-2114-b41c-5b1a4c84dbbc",
  "kind": "theorem",
  "lexical_name": "goldbachMajor_add_minor_eq_logMass",
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
  "slug": "goldbachmajor-add-minor-eq-logmass--44056a19c76c0615ee9f6609",
  "source": {
    "blob": "ee9589c34ebf438d3119394d4679836e324a4e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachArcDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44056a19c76c0615ee9f66090cc1a2808df97920bf9a006c08b9a634fea96dec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachArcDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:154d33df-80b7-2114-b41c-5b1a4c84dbbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachMajor_add_minor_eq_logMass (N : ℕ)
    {major : Set ℝ} (hmajor : MeasurableSet major) :
    goldbachMajorArcContribution N major +
        goldbachMinorArcContribution N major =
      (goldbachLogMass N : ℂ) := by
  unfold goldbachMajorArcContribution goldbachMinorArcContribution
    goldbachMajorArcSet goldbachMinorArcSet
  calc
    (∫ x in Set.Ioc 0 1 ∩ major, goldbachCircleIntegrand N x) +
          ∫ x in Set.Ioc 0 1 \ major, goldbachCircleIntegrand N x =
        ∫ x in Set.Ioc 0 1, goldbachCircleIntegrand N x := by
      exact integral_inter_add_sdiff hmajor
        (integrableOn_goldbachCircleIntegrand_unit N)
    _ = ∫ x : ℝ in 0..1, goldbachCircleIntegrand N x := by
      rw [intervalIntegral.integral_of_le zero_le_one]
    _ = (goldbachLogMass N : ℂ) := by
      simpa [goldbachCircleIntegrand] using
        (goldbachCircleIntegral_eq_logMass N)

/-- A strict major lower bound beating the complete signed minor norm implies
positive logarithmic Goldbach mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachArcDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachArcDecomposition.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9589c34ebf438d3119394d4679836e324a4e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
