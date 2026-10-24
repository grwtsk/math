# tent_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e00d7b-a235-f358-f7ca-995e6d1e22a8",
  "kind": "theorem",
  "lexical_name": "tent_nonneg",
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
  "slug": "tent-nonneg--2723a15eb9c2ee79d73ae9b8",
  "source": {
    "blob": "c45ac3ca85b0481212952c834f2a1a12d246b8c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2723a15eb9c2ee79d73ae9b8fcdc8523ee70060c821544498a674dd8470cbbd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e00d7b-a235-f358-f7ca-995e6d1e22a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_nonneg (r : ℕ → ℝ) (hr : ∀ j, 0 ≤ r j) {M K n : ℕ}
    (hn : n ≤ M + K) : 0 ≤ tent r M K n := by
  by_cases hleft : n ≤ M
  · rw [tent_left_panel r K hleft]
    exact mul_nonneg (Finset.sum_nonneg (fun j _ => hr (M + j)))
      (Finset.sum_nonneg (fun j _ => hr j))
  · obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le (by omega : M ≤ n)
    rw [tent_right_panel]
    have hsub : secondMass r M k ≤ secondMass r M K :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono (by omega : k ≤ K))
        (fun j _ _ => hr (M + j))
    exact mul_nonneg (Finset.sum_nonneg (fun j _ => hr j)) (sub_nonneg.mpr hsub)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeTentDictionary/Variant5dd6d97748dff556b911580089f5f3f19600bc46b7891b0a4baa4b573c484994.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45ac3ca85b0481212952c834f2a1a12d246b8c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
