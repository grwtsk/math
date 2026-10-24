# actualResidueSixCounts_plateau

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33f3b793-c4fe-e234-a916-1c66a9214004",
  "kind": "theorem",
  "lexical_name": "actualResidueSixCounts_plateau",
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
  "slug": "actualresiduesixcounts-plateau--989be3a768a7879bd70f3cba",
  "source": {
    "blob": "92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 184,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:989be3a768a7879bd70f3cbadc72b5286a1b0b0e5b6b2fbed143d1bdc2f5b819",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33f3b793-c4fe-e234-a916-1c66a9214004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidueSixCounts_plateau
    (K x : ℕ) (hK : 0 < K)
    (hLower : actualEligiblePrimeCutoff K ≤ x)
    (hUpper : x < actualEligiblePrimeCutoff (K + 1)) :
    actualResidueOneCount x =
        actualResidueOneCount (actualEligiblePrimeCutoff K) ∧
      actualResidueFiveCount x =
        actualResidueFiveCount (actualEligiblePrimeCutoff K) := by
  have hTotalLower :
      K ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
    (actualEligiblePrimeCutoff_le_iff_count_succ K hK x).mp hLower
  have hTotalUpper :
      Nat.count IsEligibleResidueSixPrime (x + 1) < K + 1 := by
    by_contra hnot
    have hge : K + 1 ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
      Nat.le_of_not_gt hnot
    have := (actualEligiblePrimeCutoff_le_iff_count_succ
      (K + 1) (by omega) x).mpr hge
    omega
  have hTotal :
      Nat.count IsEligibleResidueSixPrime (x + 1) = K := by
    omega
  have hOneMono :
      actualResidueOneCount (actualEligiblePrimeCutoff K) ≤
        actualResidueOneCount x := by
    exact Nat.count_monotone IsResidueOnePrime
      (Nat.add_le_add_right hLower 1)
  have hFiveMono :
      actualResidueFiveCount (actualEligiblePrimeCutoff K) ≤
        actualResidueFiveCount x := by
    exact Nat.count_monotone IsResidueFivePrime
      (Nat.add_le_add_right hLower 1)
  have hAtCutoff :
      actualResidueOneCount (actualEligiblePrimeCutoff K) +
          actualResidueFiveCount (actualEligiblePrimeCutoff K) = K := by
    simpa [eligibleCount, actualResidueSixCounts] using
      actualEligiblePrimeCutoff_indexes K
  have hAtX : actualResidueOneCount x + actualResidueFiveCount x = K := by
    have hEligibleX : eligibleCount actualResidueSixCounts x = K := by
      rw [actualEligibleCount_eq_count, hTotal]
    simpa [eligibleCount, actualResidueSixCounts] using hEligibleX
  omega

/-- The signed discrepancy is therefore exactly constant on each cutoff
plateau. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ConductorThreePrimeReindex/Variant18e3d98dd40f01efa7f9bd28b65df92c7d926f90d373ac33b38d353424392f74.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b470ccfbd4abd042a59e2c49ecf54fb7edc0f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
