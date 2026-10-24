# exact_continuous_input_budget_at_every_positive_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a610037a-e5fd-6958-a1d6-dcb162e13d9c",
  "kind": "theorem",
  "lexical_name": "exact_continuous_input_budget_at_every_positive_scale",
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
  "slug": "exact-continuous-input-budget-at-every-positive-scale--3546a473e45267d637b19c98",
  "source": {
    "blob": "b2a74f6c8aae37e530ff6dbe33b60b2eee7aed15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformScaling/Variantdf19a71e9d0f4a2e392e616cc499d50f23f3acb020a2171f1670468a5ec7fabd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3546a473e45267d637b19c9842a64b7890dd90e4a7b9ff144222c920dba54515",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformScaling/Variantdf19a71e9d0f4a2e392e616cc499d50f23f3acb020a2171f1670468a5ec7fabd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a610037a-e5fd-6958-a1d6-dcb162e13d9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_continuous_input_budget_at_every_positive_scale {A a Z B : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    (∀ J : ℝ → ℝ, ContinuousOn J (Ioi 0) →
      (∀ x : ℝ, 0 < x → |J x| ≤ x ^ a) → |transformAt A J Z| ≤ B) ↔
      Z ^ a * normPrice A (a + 3 / 16) ≤ B := by
  constructor
  · intro h
    apply le_of_forall_pos_le_add
    intro δ hδ
    obtain ⟨J, hcont, hclass, hnear⟩ :=
      continuous_inputs_approach_every_positive_scale (a := a) hA hZ hδ
    have hbudget := h J hcont hclass
    have hsigned := (le_abs_self (transformAt A J Z)).trans hbudget
    linarith
  · intro h J _hcont hclass
    exact (actual_transform_triangle_at_every_positive_scale hA hZ J hclass).trans h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualContinuousTransformScaling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformScaling/Variantdf19a71e9d0f4a2e392e616cc499d50f23f3acb020a2171f1670468a5ec7fabd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualContinuousTransformScaling/Variantdf19a71e9d0f4a2e392e616cc499d50f23f3acb020a2171f1670468a5ec7fabd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a74f6c8aae37e530ff6dbe33b60b2eee7aed15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
