# IsRoot.norm_lt_cauchyBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e4e07ea670c04a05919f999258655a035e6e4c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22f49181-dfa0-839d-02b4-6194e6045f31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:629f72d5-c339-139b-a1ea-97a7b101dc45",
  "kind": "theorem",
  "lexical_name": "IsRoot.norm_lt_cauchyBound",
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
  "slug": "isroot-norm-lt-cauchybound--2d77a0557f97887e7b11f39d",
  "source": {
    "blob": "7e4e07ea670c04a05919f999258655a035e6e4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d77a0557f97887e7b11f39d48eea18a0ac649e003d41c9ff0408d4ebcb639f5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629f72d5-c339-139b-a1ea-97a7b101dc45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsRoot.norm_lt_cauchyBound {p : K[X]} (hp : p ≠ 0) {a : K} (h : p.IsRoot a) :
    ‖a‖₊ < cauchyBound p := by
  rw [IsRoot.def, eval_eq_sum_range, range_add_one] at h
  simp only [mem_range, lt_self_iff_false, not_false_eq_true, sum_insert, coeff_natDegree,
    add_eq_zero_iff_eq_neg] at h
  apply_fun nnnorm at h
  simp only [nnnorm_mul, nnnorm_pow, nnnorm_neg] at h
  suffices ‖a‖₊ ^ p.natDegree ≤ (cauchyBound p - 1) * ∑ x ∈ range p.natDegree, ‖a‖₊ ^ x by
    rcases eq_or_ne ‖a‖₊ 1 with ha | ha
    · simp only [ha, one_pow, sum_const, card_range, nsmul_eq_mul, mul_one, gt_iff_lt] at this ⊢
      apply lt_of_le_of_ne (by simp)
      intro nh
      simp [← nh, tsub_self] at this
    rcases lt_or_gt_of_ne ha with ha | ha
    · apply ha.trans_le
      simp
    · rw [geom_sum_of_one_lt ha] at this
      calc
        ‖a‖₊ = ‖a‖₊ - 1 + 1 := (tsub_add_cancel_of_le ha.le).symm
        _ = ‖a‖₊ ^ p.natDegree * (‖a‖₊ - 1) / ‖a‖₊ ^ p.natDegree + 1 := by
          field_simp
        _ ≤ (cauchyBound p - 1) * ((‖a‖₊ ^ p.natDegree - 1) / (‖a‖₊ - 1)) * (‖a‖₊ - 1)
            / ‖a‖₊ ^ p.natDegree + 1 := by gcongr
        _ = (cauchyBound p - 1) * (‖a‖₊ ^ p.natDegree - 1) / ‖a‖₊ ^ p.natDegree + 1 := by
          congr 2
          have : ‖a‖₊ - 1 ≠ 0 := fun nh ↦ (ha.trans_le (tsub_eq_zero_iff_le.mp nh)).false
          field_simp
        _ < (cauchyBound p - 1) * ‖a‖₊ ^ p.natDegree / ‖a‖₊ ^ p.natDegree + 1 := by
          gcongr
          · apply lt_of_le_of_ne (by simp)
            contrapose! this
            simp only [← this, zero_mul]
            apply pow_pos
            exact zero_lt_one.trans ha
          simp [zero_lt_one.trans ha]
        _ = cauchyBound p := by field_simp [tsub_add_cancel_of_le]
  apply le_of_eq at h
  have pld : ‖p.leadingCoeff‖₊ ≠ 0 := by simpa
  calc ‖a‖₊ ^ p.natDegree
    _ = ‖p.leadingCoeff‖₊ * ‖a‖₊ ^ p.natDegree / ‖p.leadingCoeff‖₊ := by
      rw [mul_div_cancel_left₀]
      simpa
    _ ≤ ‖∑ x ∈ range p.natDegree, p.coeff x * a ^ x‖₊ / ‖p.leadingCoeff‖₊ := by gcongr
    _ ≤ (∑ x ∈ range p.natDegree, ‖p.coeff x * a ^ x‖₊) / ‖p.leadingCoeff‖₊ := by
      gcongr
      apply nnnorm_sum_le
    _ = (∑ x ∈ range p.natDegree, ‖p.coeff x‖₊ * ‖a‖₊ ^ x) / ‖p.leadingCoeff‖₊ := by simp [abs_mul]
    _ ≤ (∑ x ∈ range p.natDegree, ‖p.leadingCoeff‖₊ * (cauchyBound p - 1) * ‖a‖₊ ^ x) /
        ‖p.leadingCoeff‖₊ := by
      gcongr (∑ x ∈ _, ?_ * _) / _
      rw [cauchyBound, add_tsub_cancel_right]
      field_simp
      apply le_sup (f := (‖p.coeff ·‖₊)) ‹_›
    _ = (cauchyBound p - 1) * ∑ x ∈ range p.natDegree, ‖a‖₊ ^ x := by
      simp only [← mul_sum]
      field_simp
      ring

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CauchyBound/Variant00cac3d92dd0ead8ad1036e0f2921096ba96291ce16139bf12687dbda3217f66.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e4e07ea670c04a05919f999258655a035e6e4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
