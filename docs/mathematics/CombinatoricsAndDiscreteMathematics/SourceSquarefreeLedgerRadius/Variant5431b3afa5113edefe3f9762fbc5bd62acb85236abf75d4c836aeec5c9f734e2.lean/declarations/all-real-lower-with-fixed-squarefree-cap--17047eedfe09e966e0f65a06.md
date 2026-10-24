# all_real_lower_with_fixed_squarefree_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a968f2ae-ebe2-bd66-e229-fe4b305ede52",
  "kind": "theorem",
  "lexical_name": "all_real_lower_with_fixed_squarefree_cap",
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
  "slug": "all-real-lower-with-fixed-squarefree-cap--17047eedfe09e966e0f65a06",
  "source": {
    "blob": "2dfa8ff360f8498ef6fd75aff3784e72747b2c9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17047eedfe09e966e0f65a06aa7e7e256c1d573f80ab78d1ba6e31c8ea18a356",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a968f2ae-ebe2-bd66-e229-fe4b305ede52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_real_lower_with_fixed_squarefree_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1305)) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  have hc := squarefreeLedgerCost_lt_1305 Q hQ
  have hb : squarefreeResidualBudget D rho Q <= max 0 (D + rho + 1305) := by
    unfold squarefreeResidualBudget
    exact max_le_max le_rfl (by linarith)
  intro A hA
  apply le_trans ?_ (all_real_lower_of_readout_squarefree D rho Q hQ hreadout A hA)
  apply min_le_min le_rfl
  linarith

/-- One fixed cap on the negative defect of the original source family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant5431b3afa5113edefe3f9762fbc5bd62acb85236abf75d4c836aeec5c9f734e2.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dfa8ff360f8498ef6fd75aff3784e72747b2c9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
