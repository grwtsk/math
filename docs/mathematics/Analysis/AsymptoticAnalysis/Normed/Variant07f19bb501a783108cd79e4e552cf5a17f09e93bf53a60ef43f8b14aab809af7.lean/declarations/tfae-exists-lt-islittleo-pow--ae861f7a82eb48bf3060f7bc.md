# TFAE_exists_lt_isLittleO_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0571f18-4ba5-4683-fa51-e8a189c471df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c38748ba-4d7b-f1bf-da48-c4a999da1b3b",
  "kind": "theorem",
  "lexical_name": "TFAE_exists_lt_isLittleO_pow",
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
  "slug": "tfae-exists-lt-islittleo-pow--ae861f7a82eb48bf3060f7bc",
  "source": {
    "blob": "f6a0509ea311c6da87d9732908c1153ca772dccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 126,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae861f7a82eb48bf3060f7bc4195b3377a74fba713de3e0030e641aead75e2b5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c38748ba-4d7b-f1bf-da48-c4a999da1b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TFAE_exists_lt_isLittleO_pow (f : ℕ → ℝ) (R : ℝ) :
    TFAE
      [∃ a ∈ Ioo (-R) R, f =o[atTop] (a ^ ·), ∃ a ∈ Ioo 0 R, f =o[atTop] (a ^ ·),
        ∃ a ∈ Ioo (-R) R, f =O[atTop] (a ^ ·), ∃ a ∈ Ioo 0 R, f =O[atTop] (a ^ ·),
        ∃ a < R, ∃ (C : _) (_ : 0 < C ∨ 0 < R), ∀ n, |f n| ≤ C * a ^ n,
        ∃ a ∈ Ioo 0 R, ∃ C > 0, ∀ n, |f n| ≤ C * a ^ n, ∃ a < R, ∀ᶠ n in atTop, |f n| ≤ a ^ n,
        ∃ a ∈ Ioo 0 R, ∀ᶠ n in atTop, |f n| ≤ a ^ n] := by
  have A : Ico 0 R ⊆ Ioo (-R) R :=
    fun x hx ↦ ⟨(neg_lt_zero.2 (hx.1.trans_lt hx.2)).trans_le hx.1, hx.2⟩
  have B : Ioo 0 R ⊆ Ioo (-R) R := Subset.trans Ioo_subset_Ico_self A
  -- First we prove that 1-4 are equivalent using 2 → 3 → 4, 1 → 3, and 2 → 1
  tfae_have 1 → 3
  exact fun ⟨a, ha, H⟩ ↦ ⟨a, ha, H.isBigO⟩
  tfae_have 2 → 1
  exact fun ⟨a, ha, H⟩ ↦ ⟨a, B ha, H⟩
  tfae_have 3 → 2
  · rintro ⟨a, ha, H⟩
    rcases exists_between (abs_lt.2 ha) with ⟨b, hab, hbR⟩
    exact ⟨b, ⟨(abs_nonneg a).trans_lt hab, hbR⟩,
      H.trans_isLittleO (isLittleO_pow_pow_of_abs_lt_left (hab.trans_le (le_abs_self b)))⟩
  tfae_have 2 → 4
  exact fun ⟨a, ha, H⟩ ↦ ⟨a, ha, H.isBigO⟩
  tfae_have 4 → 3
  exact fun ⟨a, ha, H⟩ ↦ ⟨a, B ha, H⟩
  -- Add 5 and 6 using 4 → 6 → 5 → 3
  tfae_have 4 → 6
  · rintro ⟨a, ha, H⟩
    rcases bound_of_isBigO_nat_atTop H with ⟨C, hC₀, hC⟩
    refine' ⟨a, ha, C, hC₀, fun n ↦ _⟩
    simpa only [Real.norm_eq_abs, abs_pow, abs_of_nonneg ha.1.le] using hC (pow_ne_zero n ha.1.ne')
  tfae_have 6 → 5
  exact fun ⟨a, ha, C, H₀, H⟩ ↦ ⟨a, ha.2, C, Or.inl H₀, H⟩
  tfae_have 5 → 3
  · rintro ⟨a, ha, C, h₀, H⟩
    rcases sign_cases_of_C_mul_pow_nonneg fun n ↦ (abs_nonneg _).trans (H n) with (rfl | ⟨hC₀, ha₀⟩)
    · obtain rfl : f = 0 := by
        ext n
        simpa using H n
      simp only [lt_irrefl, false_or_iff] at h₀
      exact ⟨0, ⟨neg_lt_zero.2 h₀, h₀⟩, isBigO_zero _ _⟩
    exact ⟨a, A ⟨ha₀, ha⟩,
      isBigO_of_le' _ fun n ↦ (H n).trans <| mul_le_mul_of_nonneg_left (le_abs_self _) hC₀.le⟩
  -- Add 7 and 8 using 2 → 8 → 7 → 3
  tfae_have 2 → 8
  · rintro ⟨a, ha, H⟩
    refine' ⟨a, ha, (H.def zero_lt_one).mono fun n hn ↦ _⟩
    rwa [Real.norm_eq_abs, Real.norm_eq_abs, one_mul, abs_pow, abs_of_pos ha.1] at hn
  tfae_have 8 → 7
  exact fun ⟨a, ha, H⟩ ↦ ⟨a, ha.2, H⟩
  tfae_have 7 → 3
  · rintro ⟨a, ha, H⟩
    have : 0 ≤ a := nonneg_of_eventually_pow_nonneg (H.mono fun n ↦ (abs_nonneg _).trans)
    refine' ⟨a, A ⟨this, ha⟩, IsBigO.of_bound 1 _⟩
    simpa only [Real.norm_eq_abs, one_mul, abs_pow, abs_of_nonneg this]
  -- porting note: used to work without explicitly having 6 → 7
  tfae_have 6 → 7
  · exact fun h ↦ tfae_8_to_7 <| tfae_2_to_8 <| tfae_3_to_2 <| tfae_5_to_3 <| tfae_6_to_5 h
  tfae_finish
#align tfae_exists_lt_is_o_pow TFAE_exists_lt_isLittleO_pow

/-- For any natural `k` and a real `r > 1` we have `n ^ k = o(r ^ n)` as `n → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant07f19bb501a783108cd79e4e552cf5a17f09e93bf53a60ef43f8b14aab809af7.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a0509ea311c6da87d9732908c1153ca772dccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
