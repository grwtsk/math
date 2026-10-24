# one_add_mul_self_lt_rpow_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a326208b-67f1-c662-f45d-4600b89581dd",
  "kind": "theorem",
  "lexical_name": "one_add_mul_self_lt_rpow_one_add",
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
  "slug": "one-add-mul-self-lt-rpow-one-add--dbee1c470a87c4e50349b17e",
  "source": {
    "blob": "a5323e5947c8553f342672706b6ed03d8e78d61e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 102,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbee1c470a87c4e50349b17e09b07edeb321875c2e3b80ca981a37b56e6680c5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a326208b-67f1-c662-f45d-4600b89581dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_add_mul_self_lt_rpow_one_add {s : ℝ} (hs : -1 ≤ s) (hs' : s ≠ 0) {p : ℝ} (hp : 1 < p) :
    1 + p * s < (1 + s) ^ p := by
  have hp' : 0 < p := zero_lt_one.trans hp
  rcases eq_or_lt_of_le hs with rfl | hs
  · rwa [add_neg_cancel, zero_rpow hp'.ne', mul_neg_one, add_neg_lt_iff_lt_add, zero_add]
  have hs1 : 0 < 1 + s := neg_lt_iff_pos_add'.mp hs
  rcases le_or_lt (1 + p * s) 0 with hs2 | hs2
  · exact hs2.trans_lt (rpow_pos_of_pos hs1 _)
  have hs3 : 1 + s ≠ 1 := hs' ∘ add_eq_left.mp
  have hs4 : 1 + p * s ≠ 1 := by
    contrapose! hs'; rwa [add_eq_left, mul_eq_zero, eq_false_intro hp'.ne', false_or] at hs'
  rw [rpow_def_of_pos hs1, ← exp_log hs2]
  apply exp_strictMono
  rcases lt_or_gt_of_ne hs' with hs' | hs'
  · rw [← div_lt_iff₀ hp', ← div_lt_div_right_of_neg hs']
    convert strictConcaveOn_log_Ioi.secant_strict_mono (zero_lt_one' ℝ) hs2 hs1 hs4 hs3 _ using 1
    · rw [add_sub_cancel_left, log_one, sub_zero]
    · rw [add_sub_cancel_left, div_div, log_one, sub_zero]
    · apply add_lt_add_left (mul_lt_of_one_lt_left hs' hp)
  · rw [← div_lt_iff₀ hp', ← div_lt_div_iff_of_pos_right hs']
    convert strictConcaveOn_log_Ioi.secant_strict_mono (zero_lt_one' ℝ) hs1 hs2 hs3 hs4 _ using 1
    · rw [add_sub_cancel_left, div_div, log_one, sub_zero]
    · rw [add_sub_cancel_left, log_one, sub_zero]
    · apply add_lt_add_left (lt_mul_of_one_lt_left hs' hp)

/-- **Bernoulli's inequality** for real exponents, non-strict version: for `1 ≤ p` and `-1 ≤ s`
we have `1 + p * s ≤ (1 + s) ^ p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5323e5947c8553f342672706b6ed03d8e78d61e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
