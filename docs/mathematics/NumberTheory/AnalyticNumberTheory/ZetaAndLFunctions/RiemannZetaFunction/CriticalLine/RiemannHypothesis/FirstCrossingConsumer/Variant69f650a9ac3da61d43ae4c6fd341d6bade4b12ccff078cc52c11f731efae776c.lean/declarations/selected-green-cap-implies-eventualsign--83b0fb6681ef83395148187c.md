# selected_green_cap_implies_eventualSign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ceb829-d705-2a64-8e22-f6883ec1b3a1",
  "kind": "theorem",
  "lexical_name": "selected_green_cap_implies_eventualSign",
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
  "slug": "selected-green-cap-implies-eventualsign--83b0fb6681ef83395148187c",
  "source": {
    "blob": "cf0df0f5400f35e7975b84d068564fdc1edf4b13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b0fb6681ef83395148187c7dc638dca13da63075673ab813f521ce14086194",
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

Occurrence: `result:26ceb829-d705-2a64-8e22-f6883ec1b3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_green_cap_implies_eventualSign {N : ℕ} {C R : ℝ} (hN : 2 ≤ N)
    (hR : 0 ≤ R) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (hB : cumulativeDiscrepancy ordinaryPrimeCoefficient N ≤ 0)
    (hcap : ∀ K : ℕ, R < actualSuffix N K 0 →
      (∀ j : ℕ, j < K → 0 ≤ actualSuffix N K j) →
      profileWork (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (actualSuffix N K) K ≤ C)
    (hreserve : (2 / Real.sqrt N) * C ≤ R ^ 2) : OrdinaryPrimeEventualSignSupplier := by
  apply integer_sign_implies_all_real hN
  intro n hn
  by_contra hbad
  have hex : ∃ K : ℕ, 0 < ordinaryPrimePrimitive (N + K : ℕ) := by
    obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
    exact ⟨K, lt_of_not_ge hbad⟩
  let K := Nat.find hex
  have hpos : 0 < ordinaryPrimePrimitive (N + K : ℕ) := Nat.find_spec hex
  have hheight : R < actualSuffix N K 0 := by
    unfold actualSuffix
    simp only [Nat.add_zero]
    linarith
  have hpositive (j : ℕ) (hj : j < K) : 0 ≤ actualSuffix N K j := by
    have hnot := Nat.find_min hex hj
    have hprior : ordinaryPrimePrimitive (N + j : ℕ) ≤ 0 := le_of_not_gt hnot
    unfold actualSuffix
    linarith
  have hzero : 0 ≤ actualSuffix N K 0 := hR.trans hheight.le
  have hbound := positive_profile_height_bound (by omega : 1 ≤ N) hB hzero hR
    (hcap K hheight hpositive) hreserve
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.FirstCrossingConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FirstCrossingConsumer/Variant69f650a9ac3da61d43ae4c6fd341d6bade4b12ccff078cc52c11f731efae776c.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0df0f5400f35e7975b84d068564fdc1edf4b13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
