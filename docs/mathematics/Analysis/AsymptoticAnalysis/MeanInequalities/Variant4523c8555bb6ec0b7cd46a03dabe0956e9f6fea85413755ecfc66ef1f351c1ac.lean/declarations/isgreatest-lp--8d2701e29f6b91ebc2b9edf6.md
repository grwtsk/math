# isGreatest_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2639b29d-fe37-607a-d43f-faec47ac7f1b",
  "kind": "theorem",
  "lexical_name": "isGreatest_Lp",
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
  "slug": "isgreatest-lp--8d2701e29f6b91ebc2b9edf6",
  "source": {
    "blob": "9666dfd38e6814c2fa05f62bef682868468c0bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 613,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d2701e29f6b91ebc2b9edf6092107bc43b004d08abb081c3a0ccec83aa42262",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2639b29d-fe37-607a-d43f-faec47ac7f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGreatest_Lp (f : ι → ℝ≥0) {p q : ℝ} (hpq : p.HolderConjugate q) :
    IsGreatest ((fun g : ι → ℝ≥0 => ∑ i ∈ s, f i * g i) '' { g | ∑ i ∈ s, g i ^ q ≤ 1 })
      ((∑ i ∈ s, f i ^ p) ^ (1 / p)) := by
  constructor
  · use fun i => f i ^ p / f i / (∑ i ∈ s, f i ^ p) ^ (1 / q)
    obtain hf | hf := eq_zero_or_pos (∑ i ∈ s, f i ^ p)
    · simp [hf, hpq.ne_zero, hpq.symm.ne_zero]
    · have A : p + q - q ≠ 0 := by simp [hpq.ne_zero]
      have B : ∀ y : ℝ≥0, y * y ^ p / y = y ^ p := by
        refine fun y => mul_div_cancel_left_of_imp fun h => ?_
        simp [h, hpq.ne_zero]
      simp only [Set.mem_setOf_eq, div_rpow, ← sum_div, ← rpow_mul,
        div_mul_cancel₀ _ hpq.symm.ne_zero, rpow_one, div_le_iff₀ hf, one_mul, hpq.mul_eq_add, ←
        rpow_sub' A, add_sub_cancel_right, le_refl, true_and, ← mul_div_assoc, B]
      rw [div_eq_iff, ← rpow_add hf.ne', one_div, one_div, hpq.inv_add_inv_eq_one, rpow_one]
      simpa [hpq.symm.ne_zero] using hf.ne'
  · rintro _ ⟨g, hg, rfl⟩
    apply le_trans (inner_le_Lp_mul_Lq s f g hpq)
    simpa only [mul_one] using
      mul_le_mul_left' (NNReal.rpow_le_one hg (le_of_lt hpq.symm.one_div_pos)) _

/-- **Minkowski inequality**: the `L_p` seminorm of the sum of two vectors is less than or equal
to the sum of the `L_p`-seminorms of the summands. A version for `NNReal`-valued functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9666dfd38e6814c2fa05f62bef682868468c0bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
