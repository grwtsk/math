# exists_pos_tsum_mul_lt_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6fc794c-6e5b-deda-bc88-3b379bf5e861",
  "kind": "theorem",
  "lexical_name": "exists_pos_tsum_mul_lt_of_countable",
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
  "slug": "exists-pos-tsum-mul-lt-of-countable--69eb4e8aecd13d38851de0c6",
  "source": {
    "blob": "f229c808184fe0b2489be8d178257a08b5bbb449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 663,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69eb4e8aecd13d38851de0c6f17587cb4f00026d99fc4c181f850a4e04bdad57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6fc794c-6e5b-deda-bc88-3b379bf5e861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pos_tsum_mul_lt_of_countable {ε : ℝ≥0∞} (hε : ε ≠ 0) {ι} [Countable ι] (w : ι → ℝ≥0∞)
    (hw : ∀ i, w i ≠ ∞) : ∃ δ : ι → ℝ≥0, (∀ i, 0 < δ i) ∧ (∑' i, (w i * δ i : ℝ≥0∞)) < ε := by
  lift w to ι → ℝ≥0 using hw
  rcases exists_pos_sum_of_countable hε ι with ⟨δ', Hpos, Hsum⟩
  have : ∀ i, 0 < max 1 (w i) := fun i ↦ zero_lt_one.trans_le (le_max_left _ _)
  refine ⟨fun i ↦ δ' i / max 1 (w i), fun i ↦ div_pos (Hpos _) (this i), ?_⟩
  refine lt_of_le_of_lt (ENNReal.tsum_le_tsum fun i ↦ ?_) Hsum
  rw [coe_div (this i).ne']
  refine mul_le_of_le_div' ?_
  grw [← le_max_right]

end ENNReal

/-!
### Factorial
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f229c808184fe0b2489be8d178257a08b5bbb449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
