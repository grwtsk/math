# adaptive_tail_of_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe62a350-0764-d17b-2304-229e41c95dc3",
  "kind": "theorem",
  "lexical_name": "adaptive_tail_of_sharp",
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
  "slug": "adaptive-tail-of-sharp--78ed668c5355c627c8af4146",
  "source": {
    "blob": "59ec08162eabfe580aa3498f4a09893d00d5f856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 71,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78ed668c5355c627c8af41464d71afbe68661e5f56711f1650a8e110add4e1b7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe62a350-0764-d17b-2304-229e41c95dc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem adaptive_tail_of_sharp (A0 : ℝ) (hA0 : 1 ≤ A0)
    (htail : ∀ A R : ℝ, 91 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        9000000 * A0 * Real.exp A * (Real.log R + 2) / (A ^ 9 * R ^ 5)) :
    ∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q := by
  intro η Q A hη hQ hQA
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

/-- A maximum preserves both actual interfaces; it is not an identity of their witnesses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/09SourceJointActualCountTail/Variantf028a3e8185d7876d7ba90c1c681449307fb7f40722179457cc29e2989000194.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ec08162eabfe580aa3498f4a09893d00d5f856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
