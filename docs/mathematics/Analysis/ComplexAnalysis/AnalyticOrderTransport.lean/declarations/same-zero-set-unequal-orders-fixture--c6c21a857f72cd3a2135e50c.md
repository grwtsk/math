# same_zero_set_unequal_orders_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b585439f-994e-49d0-b13b-1308048f763e",
  "kind": "theorem",
  "lexical_name": "same_zero_set_unequal_orders_fixture",
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
  "slug": "same-zero-set-unequal-orders-fixture--c6c21a857f72cd3a2135e50c",
  "source": {
    "blob": "2f3a6021d8dc31586aa518993d18aa80da417e89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 104,
    "path": "GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c21a857f72cd3a2135e50ce1d1d9032e411e034888857a0f8cb5fbf994cd2a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b585439f-994e-49d0-b13b-1308048f763e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_zero_set_unequal_orders_fixture :
    (∀ z : ℂ, (1 - z) * ((1 - z) - 1) ^ 2 = 0 ↔ z * (z - 1) ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ => z * (z - 1) ^ 2) 0 = 1 ∧
      analyticOrderAt (fun z : ℂ => z * (z - 1) ^ 2) 1 = 2 := by
  have zeros (z : ℂ) : z * (z - 1) ^ 2 = 0 ↔ z = 0 ∨ z = 1 := by
    simp [mul_eq_zero, sub_eq_zero]
  refine ⟨?_, ?_, ?_⟩
  · intro z
    rw [zeros (1 - z), zeros z]
    constructor
    · rintro (h | h)
      · right
        linear_combination -h
      · left
        linear_combination -h
    · rintro (h | h)
      · right
        rw [h]
        norm_num
      · left
        rw [h]
        norm_num
  · have unchanged := order_mul_nonzero_right (fun z : ℂ => z)
      (fun z => (z - 1) ^ 2) 0 (by fun_prop) (by fun_prop) (by norm_num)
    exact unchanged.trans analyticOrderAt_id
  · have unchanged := order_mul_nonzero_right (fun z : ℂ => (z - 1) ^ 2)
      (fun z => z) 1 (by fun_prop) (by fun_prop) (by norm_num)
    have monomial := analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 1) (n := 2)
    simpa [mul_comm] using unchanged.trans monomial

end GRWTSK.Analysis.Complex.AnalyticOrderTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/AnalyticOrderTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/AnalyticOrderTransport.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3a6021d8dc31586aa518993d18aa80da417e89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
