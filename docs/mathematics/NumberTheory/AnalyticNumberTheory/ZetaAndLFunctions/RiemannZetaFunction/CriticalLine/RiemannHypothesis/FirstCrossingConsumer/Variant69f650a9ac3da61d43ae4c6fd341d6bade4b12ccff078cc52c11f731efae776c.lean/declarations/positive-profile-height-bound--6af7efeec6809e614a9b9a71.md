# positive_profile_height_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d73cc9c-a53e-9431-be8b-6fd715a5cee7",
  "kind": "theorem",
  "lexical_name": "positive_profile_height_bound",
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
  "slug": "positive-profile-height-bound--6af7efeec6809e614a9b9a71",
  "source": {
    "blob": "cf0df0f5400f35e7975b84d068564fdc1edf4b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6af7efeec6809e614a9b9a7123a7e81b0f95e0cf31b772e19452c5ae9ff38a90",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d73cc9c-a53e-9431-be8b-6fd715a5cee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_profile_height_bound {N K : ℕ} {C R : ℝ} (hN : 1 ≤ N)
    (hB : cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0)
    (hS : 0 ≤ actualSuffix N K 0) (hR : 0 ≤ R)
    (hQ : profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (actualSuffix N K) K ≤ C)
    (hreserve : (2 / Real.sqrt N) * C ≤ R ^ 2) : actualSuffix N K 0 ≤ R := by
  have hgreen := actual_prime_profile_green hN K
  have hboundary := mul_nonpos_of_nonpos_of_nonneg hB hS
  change cumulativeDiscrepancy ordinaryPrimeCoefficient N *
    (ordinaryPrimePrimitive (N + K : ℕ) - ordinaryPrimePrimitive N) ≤ 0 at hboundary
  have he : profileEnergy
      (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
      (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K ≤ C := by
    linarith
  have hsquare := actual_suffix_square_le (K := K) hN
  have hbudget := mul_le_mul_of_nonneg_left he
    (show 0 ≤ (2 : ℝ) / Real.sqrt N by positivity)
  nlinarith

/-- Only actual positive suffix profiles of a forbidden crossing need this cap.
The first-bad-endpoint argument then reaches the all-real prime-sign consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0df0f5400f35e7975b84d068564fdc1edf4b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
