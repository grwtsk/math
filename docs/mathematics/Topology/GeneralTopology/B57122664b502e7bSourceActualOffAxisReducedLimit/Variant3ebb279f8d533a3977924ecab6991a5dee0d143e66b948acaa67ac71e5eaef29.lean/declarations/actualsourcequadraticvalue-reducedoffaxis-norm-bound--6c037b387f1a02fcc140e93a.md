# actualSourceQuadraticValue_reducedOffAxis_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bfc168c-889d-5a87-105f-b0ece0c59b39",
  "kind": "theorem",
  "lexical_name": "actualSourceQuadraticValue_reducedOffAxis_norm_bound",
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
  "slug": "actualsourcequadraticvalue-reducedoffaxis-norm-bound--6c037b387f1a02fcc140e93a",
  "source": {
    "blob": "3379b6f734df11e373c0982602bd430eca5f52de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c037b387f1a02fcc140e93abf71f7274908e43a1dd6b9c96056bb0613f71020",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bfc168c-889d-5a87-105f-b0ece0c59b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceQuadraticValue_reducedOffAxis_norm_bound :
    ∃ C R0 A0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ 1 ≤ A0 ∧ ∀ A : ℝ, max 200 R0 ≤ A →
      ‖(sourceQuadraticValue explicitSecondDerivative A : ℂ) -
        actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)‖ ≤
          C / A^9 + actualReducedZeroEnvelope A0 A := by
  obtain ⟨C,R0,hC,hR0,hcritical⟩ := actualCriticalZeroHeightHead_uniform_ninth_bound
  obtain ⟨A0,hA0,htail⟩ := actualReducedZeroTail_norm_bound
  refine ⟨C,R0,A0,hC,hR0,hA0,fun A hA => ?_⟩
  have h200 := (le_max_left _ _).trans hA
  have hR := (le_max_right _ _).trans hA
  have hA1 : 1 ≤ A := by linarith
  have he : (sourceQuadraticValue explicitSecondDerivative A : ℂ) -
      actualOffAxisZeroHeightHead A (actualReducedZeroHeight A) =
        SourceActualZeroTailBudget.actualZeroHeightTail A (actualReducedZeroHeight A) +
          actualCriticalZeroHeightHead A (actualReducedZeroHeight A) := by
    calc
      _ = ((sourceQuadraticValue explicitSecondDerivative A : ℂ) -
          SourceActualZeroTailBudget.actualZeroHeightHead A (actualReducedZeroHeight A)) +
            actualCriticalZeroHeightHead A (actualReducedZeroHeight A) := by
        rw [actualZeroHeightHead_eq_critical_add_offAxis]
        ring
      _ = _ := by rw [actualSourceQuadraticValue_sub_reducedHead A hA1]
  rw [he]
  exact (norm_add_le _ _).trans ((add_le_add (htail A h200)
    (hcritical A (actualReducedZeroHeight A) hR)).trans_eq (by ring))

/-- The original quadratic value differs from its actual reduced off-axis head by o(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/B57122664b502e7bSourceActualOffAxisReducedLimit/Variant3ebb279f8d533a3977924ecab6991a5dee0d143e66b948acaa67ac71e5eaef29.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3379b6f734df11e373c0982602bd430eca5f52de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
