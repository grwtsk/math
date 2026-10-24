# add_div_le_sum_sq_div_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7c6165f-782c-90e5-c81d-189cfb7d325e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c63f0680-f53a-4dc7-8d5f-9168f736d045",
  "kind": "theorem",
  "lexical_name": "add_div_le_sum_sq_div_card",
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
  "slug": "add-div-le-sum-sq-div-card--e0cf9dd6861eb5ef5e64b69e",
  "source": {
    "blob": "7ce16573f6aba4ab33e620dcc7c54471938c0bed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0cf9dd6861eb5ef5e64b69eb3c7844f4ce0031c144ca8877955763b5cd68357",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63f0680-f53a-4dc7-8d5f-9168f736d045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_div_le_sum_sq_div_card (hst : s ⊆ t) (f : ι → 𝕜) (d : 𝕜) (hx : 0 ≤ x)
    (hs : x ≤ |(∑ i in s, f i) / s.card - (∑ i in t, f i) / t.card|)
    (ht : d ≤ ((∑ i in t, f i) / t.card) ^ 2) :
    d + s.card / t.card * x ^ 2 ≤ (∑ i in t, f i ^ 2) / t.card := by
  obtain hscard | hscard := (s.card.cast_nonneg : (0 : 𝕜) ≤ s.card).eq_or_lt
  · simpa [← hscard] using ht.trans sum_div_card_sq_le_sum_sq_div_card
  have htcard : (0 : 𝕜) < t.card := hscard.trans_le (Nat.cast_le.2 (card_le_of_subset hst))
  have h₁ : x ^ 2 ≤ ((∑ i in s, f i) / s.card - (∑ i in t, f i) / t.card) ^ 2 :=
    sq_le_sq.2 (by rwa [abs_of_nonneg hx])
  have h₂ : x ^ 2 ≤ ((∑ i in s, (f i - (∑ j in t, f j) / t.card)) / s.card) ^ 2 := by
    apply h₁.trans
    rw [sum_sub_distrib, sum_const, nsmul_eq_mul, sub_div, mul_div_cancel_left _ hscard.ne']
  apply (add_le_add_right ht _).trans
  rw [← mul_div_right_comm, le_div_iff htcard, add_mul, div_mul_cancel _ htcard.ne']
  have h₃ := mul_sq_le_sum_sq hst (fun i => (f i - (∑ j in t, f j) / t.card)) h₂ hscard.ne'
  apply (add_le_add_left h₃ _).trans
  -- Porting note: was
  -- `simp [← mul_div_right_comm _ (t.card : 𝕜), sub_div' _ _ _ htcard.ne', ← sum_div, ← add_div,`
  -- `  mul_pow, div_le_iff (sq_pos_of_ne_zero _ htcard.ne'), sub_sq, sum_add_distrib, ← sum_mul, ←`
  -- `  mul_sum]`
  simp_rw [sub_div' _ _ _ htcard.ne']
  conv_lhs => enter [2, 2, x]; rw [div_pow]
  rw [div_pow, ← sum_div, ← mul_div_right_comm _ (t.card : 𝕜), ← add_div,
    div_le_iff (sq_pos_of_ne_zero _ htcard.ne')]
  simp_rw [sub_sq, sum_add_distrib, sum_const, nsmul_eq_mul, sum_sub_distrib, mul_pow, ← sum_mul,
    ← mul_sum, ← sum_mul]
  ring_nf; rfl
#align szemeredi_regularity.add_div_le_sum_sq_div_card SzemerediRegularity.add_div_le_sum_sq_div_card

end SzemerediRegularity

namespace Tactic

open Lean.Meta Qq

/-- Extension for the `positivity` tactic: `SzemerediRegularity.initialBound` is always positive. -/
@[positivity SzemerediRegularity.initialBound _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Bound/Variant2d107173d594bed993932474856eecfba2e4e6b8d1141bf64b6bf0fed1bf0850.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce16573f6aba4ab33e620dcc7c54471938c0bed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
