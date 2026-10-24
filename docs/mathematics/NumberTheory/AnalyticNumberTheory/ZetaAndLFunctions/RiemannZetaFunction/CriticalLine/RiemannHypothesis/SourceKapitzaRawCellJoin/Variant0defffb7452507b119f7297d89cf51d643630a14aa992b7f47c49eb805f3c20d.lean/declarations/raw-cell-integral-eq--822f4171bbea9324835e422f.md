# raw_cell_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6241a2be-3015-93a5-b6e0-f5a7d3b019c8",
  "kind": "theorem",
  "lexical_name": "raw_cell_integral_eq",
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
  "slug": "raw-cell-integral-eq--822f4171bbea9324835e422f",
  "source": {
    "blob": "e9b41e87fad1373ae58cca821b6511804f2c4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822f4171bbea9324835e422f47d147629ab51c22837fc84f291efcc30f9f54f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6241a2be-3015-93a5-b6e0-f5a7d3b019c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_cell_integral_eq (A : ℝ) (hA : 1 ≤ A) (j : ℕ) (hj : j < rawCutoff A) :
    (∫ s in node A j..node A (j + 1),
      kapitzaWeight A s * (Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1)) =
        rawCellReadout A j := by
  rcases raw_cell_endpoints A (by linarith) j hj with ⟨hleft, hright⟩
  rw [hleft, hright]
  have hk := kapitzaWeight_continuous A (by linarith : 0 < A)
  have hexp : Continuous (fun s : ℝ => Real.exp (rawCellLeft j - s)) := by fun_prop
  have hf : Continuous (fun s : ℝ =>
      (kapitzaWeight A s * Real.exp (rawCellLeft j - s)) * physicalState A j) :=
    (hk.mul hexp).mul_const _
  have hg : Continuous (fun s : ℝ =>
      kapitzaWeight A s * (Real.exp (rawCellLeft j - s) - 1)) :=
    hk.mul (hexp.sub continuous_const)
  have he : (fun s : ℝ =>
      kapitzaWeight A s * (Real.exp (-s) * chebyshevPrimePower (j + 1 : ℕ) - 1)) =
      fun s => (kapitzaWeight A s * Real.exp (rawCellLeft j - s)) * physicalState A j +
        kapitzaWeight A s * (Real.exp (rawCellLeft j - s) - 1) := by
    funext s
    rw [raw_frozen_affine A s j hj]
    ring
  rw [he, intervalIntegral.integral_add
    (hf.intervalIntegrable (μ := volume) _ _) (hg.intervalIntegrable (μ := volume) _ _),
    intervalIntegral.integral_mul_const]
  rfl

/-- The reconstruction premise of the terminal certificate is now an actual native theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b41e87fad1373ae58cca821b6511804f2c4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
