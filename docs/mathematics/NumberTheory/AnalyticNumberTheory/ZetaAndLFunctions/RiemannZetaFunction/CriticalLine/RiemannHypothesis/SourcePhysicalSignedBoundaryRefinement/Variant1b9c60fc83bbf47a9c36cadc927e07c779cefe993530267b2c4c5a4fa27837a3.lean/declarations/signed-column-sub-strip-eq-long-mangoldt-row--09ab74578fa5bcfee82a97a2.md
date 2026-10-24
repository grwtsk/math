# signed_column_sub_strip_eq_long_mangoldt_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f7a81d-daff-75de-515a-66959baf1366",
  "kind": "theorem",
  "lexical_name": "signed_column_sub_strip_eq_long_mangoldt_row",
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
  "slug": "signed-column-sub-strip-eq-long-mangoldt-row--09ab74578fa5bcfee82a97a2",
  "source": {
    "blob": "cbef27e04d908016dc2cd0372dc5d7a53a70de88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ab74578fa5bcfee82a97a2d25b633416ffa30bafcfd5ac8f67f2e394980c9e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f7a81d-daff-75de-515a-66959baf1366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_column_sub_strip_eq_long_mangoldt_row (A : ℝ) (hA : 1 ≤ A)
    (U : ℕ) (hU : 1 ≤ U) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      (shortColumnPlainRowsAt A d U - quotientStripRowsAt A d U)) =
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A (m : ℝ) := by
  classical
  calc
    _ = ∑ d ∈ Finset.Icc 1 U, realMoebius d *
        ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [column_sub_strip_eq_closed_quotient_rows A hA d (Finset.mem_Icc.mp hd).1 U]
    _ = ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        realMoebius d * (vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := by
      simp only [Finset.mul_sum]
    _ = ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), ∑ d ∈ Finset.Icc 1 U,
        realMoebius d * (vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := Finset.sum_comm
    _ = ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A), vonMangoldt m *
        (∑ d ∈ Finset.Icc 1 U, realMoebius d *
          ∑ k ∈ Finset.Icc 1 (U / d),
            sourcePlainWeight A ((d * m * k : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro m _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ = _ := by
      apply Finset.sum_congr rfl
      intro m _
      congr 1
      calc
        _ = ∑ d ∈ Finset.Icc 1 U, realMoebius d *
            ∑ k ∈ Finset.Icc 1 (U / d),
              sourcePlainWeight A ((m * (d * k) : ℕ) : ℝ) := by
          apply Finset.sum_congr rfl
          intro d _
          congr 1
          apply Finset.sum_congr rfl
          intro k _
          rw [show d * m * k = m * (d * k) by ac_rfl]
        _ = sourcePlainWeight A (m : ℝ) := by
          simpa only [Nat.mul_one] using
            short_moebius_quotient_triangle U hU
              (fun n => sourcePlainWeight A ((m * n : ℕ) : ℝ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalSignedBoundaryRefinement/Variant1b9c60fc83bbf47a9c36cadc927e07c779cefe993530267b2c4c5a4fa27837a3.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbef27e04d908016dc2cd0372dc5d7a53a70de88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
