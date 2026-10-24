# actualAdaptiveSharpTail_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc3c7df3-3633-2c46-b076-e6a4bb19e489",
  "kind": "theorem",
  "lexical_name": "actualAdaptiveSharpTail_uniform_bound",
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
  "slug": "actualadaptivesharptail-uniform-bound--0d9849121f2bdb3fd8a6117d",
  "source": {
    "blob": "9113d2e98461853ae1502bf7b9f8c79bc07fe767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9849121f2bdb3fd8a6117d67082f378f62522f7f16ac8cdfc79314f63a5f17",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc3c7df3-3633-2c46-b076-e6a4bb19e489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdaptiveSharpTail_uniform_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q := by
  obtain ⟨A0, hA0, htail⟩ := actualZeroHeightTail_sharp_norm_bound
  refine ⟨A0, hA0, fun η Q A hη hQ hQA => ?_⟩
  have hA : 91 ≤ A := hQ.trans hQA
  have hApos : 0 < A := by linarith
  have hQpos : 0 < Q := by linarith
  have hηpos : 0 < η := by linarith
  have hR := actualAdaptiveSharpHeight_ge_four hη hA
  have ht := htail A (actualAdaptiveSharpHeight η A) hA hR
  have hp := actualAdaptiveSharpHeight_fifth_power (η := η) hApos
  have hl := actualAdaptiveSharpHeight_log hηpos hApos
  have heq :
      9000000 * A0 * Real.exp A *
          (Real.log (actualAdaptiveSharpHeight η A) + 2) /
          (A ^ 9 * actualAdaptiveSharpHeight η A ^ 5) =
      9000000 * A0 / η ^ 5 *
        (1 / 5 + (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A) := by
    rw [hp, hl]
    field_simp
    ring
  rw [heq] at ht
  apply ht.trans
  unfold actualAdaptiveSharpTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have hlogA : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hlogη : 0 ≤ Real.log η := Real.log_nonneg hη
  have hr : (Real.log η + 2) / A ≤ (Real.log η + 2) / Q :=
    div_le_div_of_nonneg_left (by linarith) hQpos hQA
  have hm : (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A ≤
      (Real.log η + 2) / A :=
    div_le_div_of_nonneg_right (by nlinarith) hApos.le
  linarith

end RH16ActualAdaptiveSharpHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9113d2e98461853ae1502bf7b9f8c79bc07fe767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
