# actual_correlation_edge_shell_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af993c49-f878-c5bb-ec86-26c8ede5a881",
  "kind": "theorem",
  "lexical_name": "actual_correlation_edge_shell_lower",
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
  "slug": "actual-correlation-edge-shell-lower--2f34f3ddbe0b1fa5cb69ad87",
  "source": {
    "blob": "60e9fb419b1af20120c0d0b6a20723cd202fdb27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 100,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f34f3ddbe0b1fa5cb69ad8773b7771d8093ffac80e4c4e7e3fe79da3e4e52e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af993c49-f878-c5bb-ec86-26c8ede5a881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_edge_shell_lower {A y : ℝ} (hA : 8 ≤ A)
    (hy1 : 1 ≤ y) (hy2 : y ≤ 2) :
    1 / (512 * A ^ 9) ≤ C A (2 * A - y) := by
  have hpos : 0 < A := by linarith
  let S := Icc (A - 3 * y / 4) (A - y / 4)
  let f := fun x ↦ v A x * v A (x - (2 * A - y))
  have hf : Integrable f volume := correlation_product_integrable A _ hpos
  have hc : IntegrableOn (fun _ : ℝ ↦ 1 / (256 * A ^ 9)) S volume := by
    exact (continuous_const : Continuous (fun _ : ℝ ↦ 1 / (256 * A ^ 9))).integrableOn_Icc
  have hs : (∫ _ in S, (1 / (256 * A ^ 9) : ℝ)) ≤ ∫ x in S, f x :=
    setIntegral_mono_on hc hf.integrableOn measurableSet_Icc
      (fun x hx ↦ middle_overlap_product_lower hA hy1 hy2 hx)
  have hfull : (∫ x in S, f x) ≤ C A (2 * A - y) :=
    setIntegral_le_integral hf (Filter.Eventually.of_forall
      (complete_window_edge_product_nonnegative hA hy2))
  have hvalue : (∫ _ in S, (1 / (256 * A ^ 9) : ℝ)) =
      (y / 2) * (1 / (256 * A ^ 9)) := by
    rw [setIntegral_const]
    dsimp only [S]
    rw [Real.volume_real_Icc_of_le (by linarith : A - 3 * y / 4 ≤ A - y / 4)]
    simp only [smul_eq_mul]
    ring
  have hsmall : 1 / (512 * A ^ 9) ≤ (y / 2) * (1 / (256 * A ^ 9)) := by
    have hnonneg : 0 ≤ 1 / (256 * A ^ 9) := by positivity
    have hm := mul_le_mul_of_nonneg_right (by linarith : (1 / 2 : ℝ) ≤ y / 2) hnonneg
    have heq : 1 / (512 * A ^ 9) = (1 / 2 : ℝ) * (1 / (256 * A ^ 9)) := by ring
    rw [heq]
    exact hm
  rw [hvalue] at hs
  exact hsmall.trans (hs.trans hfull)

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationEdgeShell/Variantb450fb3dfcafcfc78046a5b1d724ae0f18051747ee06a430e74e9687048c8546.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e9fb419b1af20120c0d0b6a20723cd202fdb27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
