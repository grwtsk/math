# sum_cellSecondMoment_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:809a959d-646f-d720-08da-5525af80c9b2",
  "kind": "theorem",
  "lexical_name": "sum_cellSecondMoment_le",
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
  "slug": "sum-cellsecondmoment-le--b8af8647bc1f55fd6bad40a1",
  "source": {
    "blob": "b8707478c0344f536a2c54ddc155f7eab5577796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8af8647bc1f55fd6bad40a1c3025650c373380e2e4db00c8a51680bb588dd73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:809a959d-646f-d720-08da-5525af80c9b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_cellSecondMoment_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, cellSecondMoment n) ≤ 8 / 3 := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N,
        ∫ x in (n : ℝ)..((n : ℝ) + 1), secondMomentMajorant x :=
      Finset.sum_le_sum (fun n hn => cellSecondMoment_le_majorant
        (Finset.mem_Icc.mp hn).1)
    _ = ∫ x in (1 : ℝ)..((N : ℝ) + 1), secondMomentMajorant x :=
      sum_secondMomentMajorant_integrals N
    _ ≤ 8 / 3 := secondMomentMajorant_integral_le (by
      have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
      linarith)

/-- The next source consumer pays every Taylor remainder with curvature five. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCellMomentBudget/Variant6af8461f8e789ee9a4da633d88d5d0468619b55601c836decd42eda88f474e76.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8707478c0344f536a2c54ddc155f7eab5577796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
