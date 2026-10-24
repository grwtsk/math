# sum_cellCorrection_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3237c79-16ea-fe83-7d9f-784016a4cdd4",
  "kind": "theorem",
  "lexical_name": "sum_cellCorrection_abs_le",
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
  "slug": "sum-cellcorrection-abs-le--f38a78f9f15eb9758db1f0d7",
  "source": {
    "blob": "53b14b1dbad950d54decd71b6c46e2313d7acb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38a78f9f15eb9758db1f0d774617560342c8585cb128270a52f6ab88ad97ba1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3237c79-16ea-fe83-7d9f-784016a4cdd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_cellCorrection_abs_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, |cellCorrection A n|) ≤ 40 / A ^ 2 := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N, (10 / A ^ 2) *
        ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x :=
      Finset.sum_le_sum (fun n hn => cellCorrection_abs_le_majorant hA
        (Finset.mem_Icc.mp hn).1)
    _ = (10 / A ^ 2) *
        ∑ n ∈ Finset.Icc 1 N, ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x := by
      rw [Finset.mul_sum]
    _ = (10 / A ^ 2) * ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant x := by
      rw [sum_cellMajorant_integrals]
    _ ≤ (10 / A ^ 2) * 4 := mul_le_mul_of_nonneg_left
      (cellMajorant_integral_le_four (by
        have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
        linarith)) (by positivity)
    _ = 40 / A ^ 2 := by ring

/-- Literal actual-source readout, with the closed natural cell inventory retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b14b1dbad950d54decd71b6c46e2313d7acb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
