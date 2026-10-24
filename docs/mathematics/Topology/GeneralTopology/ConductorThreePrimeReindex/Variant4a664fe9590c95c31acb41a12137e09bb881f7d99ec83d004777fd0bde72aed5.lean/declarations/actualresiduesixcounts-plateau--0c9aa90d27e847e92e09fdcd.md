# actualResidueSixCounts_plateau

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:094b1fec-2aee-9674-d172-af63cf7b4fbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e726a23c-eba9-f0c1-4fc4-b41014b06430",
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
  "slug": "actualresiduesixcounts-plateau--0c9aa90d27e847e92e09fdcd",
  "source": {
    "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9aa90d27e847e92e09fdcd1000d3ce7a55b26909274b093b1eb882d431461f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e726a23c-eba9-f0c1-4fc4-b41014b06430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–224.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1062b5fa7329ef1f6dd1a17ef544067d18c2647c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
