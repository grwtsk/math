# even_primePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efd8f028-0947-d0ed-b93d-236fa0f0a759",
  "kind": "theorem",
  "lexical_name": "even_primePow",
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
  "slug": "even-primepow--ab9cd9d673712c5127690d4f",
  "source": {
    "blob": "039ae427307baedae611ddbf05a33a6515577e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9cd9d673712c5127690d4f47af731bdbb7550f7992780fa5af518385db27c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efd8f028-0947-d0ed-b93d-236fa0f0a759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem even_primePow {n : ℕ} (hn : IsPrimePow n) (he : 2 ∣ n) :
    ∃ j : ℕ, 0 < j ∧ j ≤ n ∧ 2 ^ j = n := by
  obtain ⟨p, hpn, j, hjn, hp, hj, hpow⟩ := (isPrimePow_nat_iff_bounded n).mp hn
  have hdpow : 2 ∣ p ^ j := by rw [hpow]; exact he
  have hd : 2 ∣ p := Nat.prime_two.dvd_of_dvd_pow hdpow
  have hp2 : p = 2 := ((Nat.prime_dvd_prime_iff_eq Nat.prime_two hp).mp hd).symm
  subst p
  exact ⟨j, hj, hjn, hpow⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039ae427307baedae611ddbf05a33a6515577e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
