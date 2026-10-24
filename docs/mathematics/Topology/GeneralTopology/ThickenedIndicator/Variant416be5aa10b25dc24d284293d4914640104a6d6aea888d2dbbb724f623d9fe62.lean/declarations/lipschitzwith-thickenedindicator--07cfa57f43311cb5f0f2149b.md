# lipschitzWith_thickenedIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acaa1a0f-3acd-e301-f717-7c60f43c3199",
  "kind": "lemma",
  "lexical_name": "lipschitzWith_thickenedIndicator",
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
  "slug": "lipschitzwith-thickenedindicator--07cfa57f43311cb5f0f2149b",
  "source": {
    "blob": "862d2a0c38665e44fc7b75076dcdcb011eea10ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07cfa57f43311cb5f0f2149b60d31addf289b3d89f91601a6330a23ee08e0560",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acaa1a0f-3acd-e301-f717-7c60f43c3199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lipschitzWith_thickenedIndicator {δ : ℝ} (δ_pos : 0 < δ) (E : Set α) :
    LipschitzWith δ.toNNReal⁻¹ (thickenedIndicator δ_pos E) := by
  intro x y
  wlog h : infEDist x E ≤ infEDist y E generalizing x y
  · specialize this y x (le_of_not_ge h)
    rwa [edist_comm, edist_comm x]
  simp_rw [edist_dist, NNReal.dist_eq, thickenedIndicator_apply, coe_toNNReal_eq_toReal]
  rw [← ENNReal.toReal_sub_of_le (thickenedIndicatorAux_mono_infEDist _ h) (by finiteness)]
  simp only [thickenedIndicatorAux, abs_toReal, ne_eq, sub_eq_top_iff, one_ne_top, false_and,
    not_false_eq_true, and_true, ofReal_toReal]
  rw [ENNReal.coe_inv (by simp [δ_pos]), ENNReal.ofReal, div_eq_mul_inv, div_eq_mul_inv]
  by_cases h_le : infEDist y E * (↑δ.toNNReal)⁻¹ ≤ 1
  · calc 1 - infEDist x E * (↑δ.toNNReal)⁻¹ - (1 - infEDist y E * (↑δ.toNNReal)⁻¹)
    _ ≤ infEDist y E * (↑δ.toNNReal)⁻¹ - infEDist x E * (↑δ.toNNReal)⁻¹ := by
      rw [ENNReal.sub_sub_sub_cancel_left (by finiteness) h_le]
    _ ≤ (↑δ.toNNReal)⁻¹ * edist x y := by
      rw [← ENNReal.sub_mul (by simp [δ_pos]), mul_comm, edist_comm]
      gcongr
      simp only [tsub_le_iff_right]
      exact infEDist_le_edist_add_infEDist
  · simp only [tsub_le_iff_right]
    rw [tsub_eq_zero_of_le (not_le.mp h_le).le, add_zero, mul_comm]
    calc 1
    _ ≤ infEDist y E * (↑δ.toNNReal)⁻¹ := (not_le.mp h_le).le
    _ ≤ edist x y * (↑δ.toNNReal)⁻¹ + infEDist x E * (↑δ.toNNReal)⁻¹ := by
      rw [← add_mul, edist_comm]
      gcongr
      exact infEDist_le_edist_add_infEDist

end thickenedIndicator

section indicator

variable {α : Type*} [PseudoEMetricSpace α] {β : Type*} [One β]

/-- Pointwise, the multiplicative indicators of δ-thickenings of a set eventually coincide
with the multiplicative indicator of the set as δ>0 tends to zero. -/
@[to_additive /-- Pointwise, the indicators of δ-thickenings of a set eventually coincide
with the indicator of the set as δ>0 tends to zero. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant416be5aa10b25dc24d284293d4914640104a6d6aea888d2dbbb724f623d9fe62.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862d2a0c38665e44fc7b75076dcdcb011eea10ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
