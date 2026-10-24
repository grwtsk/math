# isLittleO_log_abs_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c59d535-323c-b1e4-5d4b-4d88fc23809c",
  "kind": "theorem",
  "lexical_name": "isLittleO_log_abs_re",
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
  "slug": "islittleo-log-abs-re--f921e196ed73603f5cb22fb0",
  "source": {
    "blob": "87d0099e13f287e6a3ff104c8d4e5c90dc1514e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f921e196ed73603f5cb22fb07f906e001a28654699ee942dcb2d2ce6f79e6685",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c59d535-323c-b1e4-5d4b-4d88fc23809c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_log_abs_re (hl : IsExpCmpFilter l) : (fun z => Real.log (abs z)) =o[l] re :=
  calc
    (fun z => Real.log (abs z)) =O[l] fun z =>
        Real.log (Real.sqrt 2) + Real.log (max z.re |z.im|) :=
      IsBigO.of_bound 1 <|
        (hl.tendsto_re.eventually_ge_atTop 1).mono fun z hz => by
          have h2 : 0 < Real.sqrt 2 := by simp
          have hz' : 1 ≤ abs z := hz.trans (re_le_abs z)
          have _ : 0 < abs z := one_pos.trans_le hz'
          have hm₀ : 0 < max z.re |z.im| := lt_max_iff.2 (Or.inl <| one_pos.trans_le hz)
          rw [one_mul, Real.norm_eq_abs, _root_.abs_of_nonneg (Real.log_nonneg hz')]
          refine' le_trans _ (le_abs_self _)
          rw [← Real.log_mul, Real.log_le_log, ← _root_.abs_of_nonneg (le_trans zero_le_one hz)]
          exacts [abs_le_sqrt_two_mul_max z, one_pos.trans_le hz', mul_pos h2 hm₀, h2.ne', hm₀.ne']
    _ =o[l] re :=
      IsLittleO.add (isLittleO_const_left.2 <| Or.inr <| hl.tendsto_abs_re) <|
        isLittleO_iff_nat_mul_le.2 fun n => by
          filter_upwards [isLittleO_iff_nat_mul_le'.1 hl.isLittleO_log_re_re n,
            hl.abs_im_pow_eventuallyLE_exp_re n,
            hl.tendsto_re.eventually_gt_atTop 1] with z hre him h₁
          cases' le_total |z.im| z.re with hle hle
          · rwa [max_eq_left hle]
          · have H : 1 < |z.im| := h₁.trans_le hle
            norm_cast at *
            rwa [max_eq_right hle, Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos (Real.log_pos H),
              ← Real.log_pow, Real.log_le_iff_le_exp (pow_pos (one_pos.trans H) _),
              abs_of_pos (one_pos.trans h₁)]
#align complex.is_exp_cmp_filter.is_o_log_abs_re Complex.IsExpCmpFilter.isLittleO_log_abs_re

/-!
### Main results
-/


/-- If `l : Filter ℂ` is an "exponential comparison filter", then for any complex `a` and any
positive real `b`, we have `(fun z ↦ z ^ a) =o[l] (fun z ↦ exp (b * z))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d0099e13f287e6a3ff104c8d4e5c90dc1514e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
