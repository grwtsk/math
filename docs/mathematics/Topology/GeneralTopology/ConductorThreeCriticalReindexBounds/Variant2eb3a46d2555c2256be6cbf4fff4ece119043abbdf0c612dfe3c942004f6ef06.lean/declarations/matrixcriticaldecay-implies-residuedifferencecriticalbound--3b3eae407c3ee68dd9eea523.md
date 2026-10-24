# matrixCriticalDecay_implies_residueDifferenceCriticalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73d1fd17-b062-fdb2-b88a-1bb8f8a4a3ba",
  "kind": "theorem",
  "lexical_name": "matrixCriticalDecay_implies_residueDifferenceCriticalBound",
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
  "slug": "matrixcriticaldecay-implies-residuedifferencecriticalbound--3b3eae407c3ee68dd9eea523",
  "source": {
    "blob": "22b6441a9311e0a05b31250db27dce650fb7cd2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 362,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b3eae407c3ee68dd9eea5239ae5b73da795e59fb73f4310b44b0e74c7db3b8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d1fd17-b062-fdb2-b88a-1bb8f8a4a3ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem matrixCriticalDecay_implies_residueDifferenceCriticalBound :
    MatrixCriticalDecay actualResidueSixCounts →
      ResidueDifferenceCriticalBound actualResidueSixCounts := by
  rintro ⟨C, hC, hMatrixEventually⟩
  rcases Filter.eventually_atTop.1 hMatrixEventually with ⟨K₀, hK₀⟩
  rcases Filter.eventually_atTop.1
      eventually_actualEligiblePrimeCutoff_two_sided with ⟨K₁, hK₁⟩
  let J : ℕ := max 9 (max K₀ K₁)
  have hJ9 : 9 ≤ J := le_max_left _ _
  have hJpos : 0 < J := by omega
  have hcutoffJ2 : 2 ≤ actualEligiblePrimeCutoff J := by
    rw [actualEligiblePrimeCutoff_eq_nthPrime J hJpos]
    have := Nat.add_two_le_nth_prime (J + 1)
    omega
  refine ⟨8 * (Real.log 4 + 1) * C, by positivity,
    actualEligiblePrimeCutoff J, hcutoffJ2, ?_⟩
  intro x hx
  let K : ℕ := eligibleCount actualResidueSixCounts x
  have hJleCountRaw : J ≤ Nat.count IsEligibleResidueSixPrime (x + 1) :=
    (actualEligiblePrimeCutoff_le_iff_count_succ J hJpos x).mp hx
  have hJleK : J ≤ K := by
    dsimp only [K]
    rw [actualEligibleCount_eq_count]
    exact hJleCountRaw
  have hK9 : 9 ≤ K := hJ9.trans hJleK
  have hKpos : 0 < K := by omega
  have hK₀le : K₀ ≤ K := (le_max_left K₀ K₁).trans
    ((le_max_right 9 (max K₀ K₁)).trans hJleK)
  have hK₁le : K₁ ≤ K := (le_max_right K₀ K₁).trans
    ((le_max_right 9 (max K₀ K₁)).trans hJleK)
  have hCutoff : actualEligiblePrimeCutoff K ≤ x := by
    apply (actualEligiblePrimeCutoff_le_iff_count_succ K hKpos x).2
    rw [← actualEligibleCount_eq_count]
  have hNext : x < actualEligiblePrimeCutoff (K + 1) := by
    by_contra hnot
    have hNextLe : actualEligiblePrimeCutoff (K + 1) ≤ x :=
      Nat.le_of_not_gt hnot
    have hCountGe :=
      (actualEligiblePrimeCutoff_le_iff_count_succ (K + 1) (by omega) x).mp
        hNextLe
    rw [← actualEligibleCount_eq_count] at hCountGe
    dsimp only [K] at hCountGe
    omega
  have hPlateau := countDifference_plateau K x hKpos hCutoff hNext
  exact matrix_to_count_pointwise C hC K x hK9 (hK₁ K hK₁le).1
    hCutoff hPlateau (hK₀ K hK₀le)

/-- The actual residue-count critical estimate and the indexed Euclidean
operator critical estimate are quantitatively equivalent. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant2eb3a46d2555c2256be6cbf4fff4ece119043abbdf0c612dfe3c942004f6ef06.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b6441a9311e0a05b31250db27dce650fb7cd2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
