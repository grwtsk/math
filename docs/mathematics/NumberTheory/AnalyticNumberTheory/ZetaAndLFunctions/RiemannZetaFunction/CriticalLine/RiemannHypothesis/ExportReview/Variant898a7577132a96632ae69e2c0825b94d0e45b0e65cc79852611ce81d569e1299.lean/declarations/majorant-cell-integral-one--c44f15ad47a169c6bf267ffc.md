# majorant_cell_integral_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6156713e-4512-824c-e51b-126887f16d98",
  "kind": "theorem",
  "lexical_name": "majorant_cell_integral_one",
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
  "slug": "majorant-cell-integral-one--c44f15ad47a169c6bf267ffc",
  "source": {
    "blob": "830cc440c74384e6dee11e348bbed4619b4a5e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44f15ad47a169c6bf267ffcde06b8a7c3b30f145f07fdbd9f8604905680da08",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6156713e-4512-824c-e51b-126887f16d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem majorant_cell_integral_one :
    (∫ s in Real.log 2..Real.log 3, blockMajorant s) =
      cellPrimitive (Real.log 2) (Real.log 3) - cellPrimitive (Real.log 2) (Real.log 2) := by
  calc
    _ = ∫ s in Real.log 2..Real.log 3, cellIntegrand (Real.log 2) s := by
      apply intervalIntegral.integral_congr_Ioo_of_le log_two_le_three
      intro s hs
      unfold blockMajorant cellIntegrand
      rw [discrepancy_on_first_cell ⟨hs.1.le, hs.2⟩]
      have he : Real.exp (s / 2) * Real.exp (-s) = Real.exp (-s / 2) := by
        rw [← Real.exp_add]; congr 1; ring
      calc
        _ = Real.log 2 * (Real.exp (s / 2) * Real.exp (-s)) -
          (63 / 64 : ℝ) * Real.exp (s / 2) := by ring
        _ = _ := by rw [he]
    _ = _ := cell_integral _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExportReview/Variant898a7577132a96632ae69e2c0825b94d0e45b0e65cc79852611ce81d569e1299.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830cc440c74384e6dee11e348bbed4619b4a5e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
