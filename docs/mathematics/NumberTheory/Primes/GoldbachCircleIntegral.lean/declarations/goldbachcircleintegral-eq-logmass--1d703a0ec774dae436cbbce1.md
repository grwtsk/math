# goldbachCircleIntegral_eq_logMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e1d5f5-793d-f1b4-4a7c-e69a77fa7c69",
  "kind": "theorem",
  "lexical_name": "goldbachCircleIntegral_eq_logMass",
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
  "slug": "goldbachcircleintegral-eq-logmass--1d703a0ec774dae436cbbce1",
  "source": {
    "blob": "23767c93a5de35658937b70b3deeb8538ec759b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d703a0ec774dae436cbbce13f8c364d72b6fd60bc5a1340acdf454d3adcb7a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e1d5f5-793d-f1b4-4a7c-e69a77fa7c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCircleIntegral_eq_logMass (N : ℕ) :
    (∫ x : ℝ in 0..1,
      goldbachExponentialSum N x * goldbachExponentialSum N x *
        unitCharacter (-(N : ℤ)) x) =
      (goldbachLogMass N : ℂ) := by
  change (∫ x : ℝ in 0..1, goldbachCircleIntegrand N x) =
    (goldbachLogMass N : ℂ)
  rw [goldbachCircleIntegral_eq_indicatorSum,
    goldbachIndicatorSum_eq_logMass]

end
end GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCircleIntegral.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCircleIntegral.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23767c93a5de35658937b70b3deeb8538ec759b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
