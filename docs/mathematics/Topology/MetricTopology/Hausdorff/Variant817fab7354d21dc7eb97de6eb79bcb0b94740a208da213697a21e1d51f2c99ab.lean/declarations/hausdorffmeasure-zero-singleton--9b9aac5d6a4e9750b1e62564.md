# hausdorffMeasure_zero_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7febc054-c856-22f6-264a-5944674048c0",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_zero_singleton",
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
  "slug": "hausdorffmeasure-zero-singleton--9b9aac5d6a4e9750b1e62564",
  "source": {
    "blob": "e83fe34bf6c8572092724fd8cf11f2c54e7b1080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 636,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b9aac5d6a4e9750b1e62564c38a4ae87c8f3264e5454f6cd6b75a59ff7fe2e6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7febc054-c856-22f6-264a-5944674048c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_zero_singleton (x : X) : μH[0] ({x} : Set X) = 1 := by
  apply le_antisymm
  · let r : ℕ → ℝ≥0∞ := fun _ => 0
    let t : ℕ → Unit → Set X := fun _ _ => {x}
    have ht : ∀ᶠ n in atTop, ∀ i, ediam (t n i) ≤ r n := by
      simp only [t, r, imp_true_iff, ediam_singleton, eventually_atTop,
        nonpos_iff_eq_zero, exists_const]
    simpa [t, liminf_const] using hausdorffMeasure_le_liminf_sum 0 {x} r tendsto_const_nhds t ht
  · rw [hausdorffMeasure_apply]
    suffices
      (1 : ℝ≥0∞) ≤
        ⨅ (t : ℕ → Set X) (_ : {x} ⊆ ⋃ n, t n) (_ : ∀ n, ediam (t n) ≤ 1),
          ∑' n, ⨆ _ : (t n).Nonempty, ediam (t n) ^ (0 : ℝ) by
      apply le_trans this _
      convert! le_iSup₂ (α := ℝ≥0∞) (1 : ℝ≥0∞) zero_lt_one
      rfl
    simp only [ENNReal.rpow_zero, le_iInf_iff]
    intro t hst _
    rcases mem_iUnion.1 (hst (mem_singleton x)) with ⟨m, hm⟩
    grw [← ENNReal.le_tsum m]
    have A : (t m).Nonempty := ⟨x, hm⟩
    simp [A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83fe34bf6c8572092724fd8cf11f2c54e7b1080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
