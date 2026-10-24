# actual_sixth_census_prescribed_relative_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f7cc0d-b183-76a2-2145-6b75f5637550",
  "kind": "theorem",
  "lexical_name": "actual_sixth_census_prescribed_relative_bounds",
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
  "slug": "actual-sixth-census-prescribed-relative-bounds--66d07463cc379adb04a28a5a",
  "source": {
    "blob": "15bed0074a92124f81ca1a71e2f9e73810656636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ActualSixthCensusAccuracy/Variant1f0ca1c8c2dfeb15cb90909e486ad7c7157385b63b0bcb54670ba50bc718d841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d07463cc379adb04a28a5a36b2d30aed005358c09a139d6c75a79c60a510a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ActualSixthCensusAccuracy/Variant1f0ca1c8c2dfeb15cb90909e486ad7c7157385b63b0bcb54670ba50bc718d841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f7cc0d-b183-76a2-2145-6b75f5637550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_census_prescribed_relative_bounds {ε : ℝ} (hε : 0 < ε) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (1 - ε) * 1959910318080 * (Real.exp (A / 3) / A ^ 9) < actualCensus A 6 ∧
        actualCensus A 6 <
          (1 + ε) * 1959910318080 * (Real.exp (A / 3) / A ^ 9) := by
  obtain ⟨R, hR⟩ := (actual_sixth_census_eventual_relative_accuracy hε).exists_forall_of_atTop
  refine ⟨max 1 R, le_max_left _ _, ?_⟩
  intro A hA
  have hpos : 0 < A := by have := le_trans (le_max_left 1 R) hA; linarith
  have hprice : 0 < Real.exp (A / 3) / A ^ 9 := by positivity
  have heq : normalizedSixthCensus A * (Real.exp (A / 3) / A ^ 9) = actualCensus A 6 := by
    unfold normalizedSixthCensus
    field_simp
  have h := hR A (le_trans (le_max_right 1 R) hA)
  constructor
  · simpa only [heq] using mul_lt_mul_of_pos_right h.1 hprice
  · simpa only [heq] using mul_lt_mul_of_pos_right h.2 hprice

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusAccuracy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ActualSixthCensusAccuracy/Variant1f0ca1c8c2dfeb15cb90909e486ad7c7157385b63b0bcb54670ba50bc718d841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ActualSixthCensusAccuracy/Variant1f0ca1c8c2dfeb15cb90909e486ad7c7157385b63b0bcb54670ba50bc718d841.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15bed0074a92124f81ca1a71e2f9e73810656636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
