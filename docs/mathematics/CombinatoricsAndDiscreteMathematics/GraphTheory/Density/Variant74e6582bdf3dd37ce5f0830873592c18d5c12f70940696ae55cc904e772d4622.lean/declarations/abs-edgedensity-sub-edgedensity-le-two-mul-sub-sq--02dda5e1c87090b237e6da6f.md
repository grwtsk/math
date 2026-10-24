# abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43bdbcc4-fddf-ce67-761e-c0129ba676d7",
  "kind": "theorem",
  "lexical_name": "abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq",
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
  "slug": "abs-edgedensity-sub-edgedensity-le-two-mul-sub-sq--02dda5e1c87090b237e6da6f",
  "source": {
    "blob": "8d63fe89343c9c31cf718ba795ebf8ef87d836a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02dda5e1c87090b237e6da6fb31b2a90637c92f9688ed496b788797aa0c5e034",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43bdbcc4-fddf-ce67-761e-c0129ba676d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq (hs : s₂ ⊆ s₁) (ht : t₂ ⊆ t₁)
    (hδ₀ : 0 ≤ δ) (hδ₁ : δ < 1) (hs₂ : (1 - δ) * s₁.card ≤ s₂.card)
    (ht₂ : (1 - δ) * t₁.card ≤ t₂.card) :
    |(edgeDensity r s₂ t₂ : 𝕜) - edgeDensity r s₁ t₁| ≤ 2 * δ - δ ^ 2 := by
  have hδ' : 0 ≤ 2 * δ - δ ^ 2 := by
    rw [sub_nonneg, sq]
    gcongr
    exact hδ₁.le.trans (by norm_num)
  rw [← sub_pos] at hδ₁
  obtain rfl | hs₂' := s₂.eq_empty_or_nonempty
  · rw [Finset.card_empty, Nat.cast_zero] at hs₂
    simpa [edgeDensity, (nonpos_of_mul_nonpos_right hs₂ hδ₁).antisymm (Nat.cast_nonneg _)] using hδ'
  obtain rfl | ht₂' := t₂.eq_empty_or_nonempty
  · rw [Finset.card_empty, Nat.cast_zero] at ht₂
    simpa [edgeDensity, (nonpos_of_mul_nonpos_right ht₂ hδ₁).antisymm (Nat.cast_nonneg _)] using hδ'
  have hr : 2 * δ - δ ^ 2 = 1 - (1 - δ) * (1 - δ) := by ring
  rw [hr]
  norm_cast
  refine'
    (Rat.cast_le.2 <| abs_edgeDensity_sub_edgeDensity_le_one_sub_mul r hs ht hs₂' ht₂').trans _
  push_cast
  have h₁ := hs₂'.mono hs
  have h₂ := ht₂'.mono ht
  gcongr
  · refine' (le_div_iff _).2 hs₂
    exact_mod_cast h₁.card_pos
  · refine' (le_div_iff _).2 ht₂
    exact_mod_cast h₂.card_pos
#align rel.abs_edge_density_sub_edge_density_le_two_mul_sub_sq Rel.abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq

/-- If `s₂ ⊆ s₁`, `t₂ ⊆ t₁` and they take up all but a `δ`-proportion, then the difference in edge
densities is at most `2 * δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Density/Variant74e6582bdf3dd37ce5f0830873592c18d5c12f70940696ae55cc904e772d4622.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d63fe89343c9c31cf718ba795ebf8ef87d836a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
