# isGreatest_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:027ea2c8-85cd-c131-6e43-b25f41f17a1f",
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
  "slug": "isgreatest-lp--31ef032420e844a6df0a0af1",
  "source": {
    "blob": "bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 457,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31ef032420e844a6df0a0af186357edf5312f839ced9cc369e77722826b93f6a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027ea2c8-85cd-c131-6e43-b25f41f17a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGreatest_Lp (f : ι → ℝ≥0) {p q : ℝ} (hpq : p.IsConjugateExponent q) :
    IsGreatest ((fun g : ι → ℝ≥0 => ∑ i in s, f i * g i) '' { g | ∑ i in s, g i ^ q ≤ 1 })
      ((∑ i in s, f i ^ p) ^ (1 / p)) := by
  constructor
  · use fun i => f i ^ p / f i / (∑ i in s, f i ^ p) ^ (1 / q)
    by_cases hf : ∑ i in s, f i ^ p = 0
    · simp [hf, hpq.ne_zero, hpq.symm.ne_zero]
    · have A : p + q - q ≠ 0 := by simp [hpq.ne_zero]
      have B : ∀ y : ℝ≥0, y * y ^ p / y = y ^ p := by
        refine' fun y => mul_div_cancel_left_of_imp fun h => _
        simp [h, hpq.ne_zero]
      simp only [Set.mem_setOf_eq, div_rpow, ← sum_div, ← rpow_mul,
        div_mul_cancel _ hpq.symm.ne_zero, rpow_one, div_le_iff hf, one_mul, hpq.mul_eq_add, ←
        rpow_sub' _ A, _root_.add_sub_cancel, le_refl, true_and_iff, ← mul_div_assoc, B]
      rw [div_eq_iff, ← rpow_add hf, hpq.inv_add_inv_conj, rpow_one]
      simpa [hpq.symm.ne_zero] using hf
  · rintro _ ⟨g, hg, rfl⟩
    apply le_trans (inner_le_Lp_mul_Lq s f g hpq)
    simpa only [mul_one] using
      mul_le_mul_left' (NNReal.rpow_le_one hg (le_of_lt hpq.symm.one_div_pos)) _
#align nnreal.is_greatest_Lp NNReal.isGreatest_Lp

/-- Minkowski inequality: the `L_p` seminorm of the sum of two vectors is less than or equal
to the sum of the `L_p`-seminorms of the summands. A version for `NNReal`-valued functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant2377a37406a83c67bbf9978821615d32bb06c3f04cf5c76d420053b2429db7b9.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcc82cc37a97b11af0da6a5d4aebbcd8c8939b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
