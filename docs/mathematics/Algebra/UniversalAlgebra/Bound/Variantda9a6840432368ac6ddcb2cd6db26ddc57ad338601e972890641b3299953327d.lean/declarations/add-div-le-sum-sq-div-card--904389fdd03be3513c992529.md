# add_div_le_sum_sq_div_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c491153-f6ab-3bba-c989-cbde22cc2739",
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
  "slug": "add-div-le-sum-sq-div-card--904389fdd03be3513c992529",
  "source": {
    "blob": "4332d6ba099c16cabeb3bd96a8a641be0381df80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 221,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:904389fdd03be3513c9925290f339fc9d2edeee5726a773012bf33e789c27f34",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c491153-f6ab-3bba-c989-cbde22cc2739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_div_le_sum_sq_div_card (hst : s ⊆ t) (f : ι → 𝕜) (d : 𝕜) (hx : 0 ≤ x)
    (hs : x ≤ |(∑ i ∈ s, f i) / #s - (∑ i ∈ t, f i) / #t|) (ht : d ≤ ((∑ i ∈ t, f i) / #t) ^ 2) :
    d + #s / #t * x ^ 2 ≤ (∑ i ∈ t, f i ^ 2) / #t := by
  obtain hscard | hscard := ((#s).cast_nonneg : (0 : 𝕜) ≤ #s).eq_or_lt
  · simpa [← hscard] using ht.trans sum_div_card_sq_le_sum_sq_div_card
  have htcard : (0 : 𝕜) < #t := hscard.trans_le (Nat.cast_le.2 (card_le_card hst))
  have h₁ : x ^ 2 ≤ ((∑ i ∈ s, f i) / #s - (∑ i ∈ t, f i) / #t) ^ 2 :=
    sq_le_sq.2 (by rwa [abs_of_nonneg hx])
  have h₂ : x ^ 2 ≤ ((∑ i ∈ s, (f i - (∑ j ∈ t, f j) / #t)) / #s) ^ 2 := by
    apply h₁.trans
    rw [sum_sub_distrib, sum_const, nsmul_eq_mul, sub_div, mul_div_cancel_left₀ _ hscard.ne']
  grw [ht]
  rw [← mul_div_right_comm, le_div_iff₀ htcard, add_mul, div_mul_cancel₀ _ htcard.ne']
  have h₃ := mul_sq_le_sum_sq hst (fun i => (f i - (∑ j ∈ t, f j) / #t)) h₂ hscard.ne'
  grw [h₃]
  simp only [sub_div' htcard.ne', div_pow, ← sum_div, ← mul_div_right_comm _ (#t : 𝕜), ← add_div,
    div_le_iff₀ (sq_pos_of_ne_zero htcard.ne'), sub_sq, sum_add_distrib, sum_const,
    sum_sub_distrib, mul_pow, ← sum_mul, nsmul_eq_mul, two_mul]
  ring_nf
  rfl

end SzemerediRegularity

namespace Mathlib.Meta.Positivity

open Lean.Meta Qq

/-- Extension for the `positivity` tactic: `SzemerediRegularity.initialBound` is always positive. -/
@[positivity SzemerediRegularity.initialBound _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4332d6ba099c16cabeb3bd96a8a641be0381df80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
