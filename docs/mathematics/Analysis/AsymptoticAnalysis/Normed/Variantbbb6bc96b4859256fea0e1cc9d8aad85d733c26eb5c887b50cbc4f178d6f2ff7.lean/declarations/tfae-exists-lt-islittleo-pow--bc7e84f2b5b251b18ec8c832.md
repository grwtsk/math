# TFAE_exists_lt_isLittleO_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d83e0f0c-04d8-1185-a04f-c5f2cdecac76",
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
  "slug": "tfae-exists-lt-islittleo-pow--bc7e84f2b5b251b18ec8c832",
  "source": {
    "blob": "32c9420e5d37f8b4d36774645392bf66942cdfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 106,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc7e84f2b5b251b18ec8c832d937d67c0856c9410ef79a9b567a489f2dca20ba",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d83e0f0c-04d8-1185-a04f-c5f2cdecac76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TFAE_exists_lt_isLittleO_pow (f : ℕ → ℝ) (R : ℝ) :
    TFAE
      [∃ a ∈ Ioo (-R) R, f =o[atTop] (a ^ ·), ∃ a ∈ Ioo 0 R, f =o[atTop] (a ^ ·),
        ∃ a ∈ Ioo (-R) R, f =O[atTop] (a ^ ·), ∃ a ∈ Ioo 0 R, f =O[atTop] (a ^ ·),
        ∃ a < R, ∃ C : ℝ, (0 < C ∨ 0 < R) ∧ ∀ n, |f n| ≤ C * a ^ n,
        ∃ a ∈ Ioo 0 R, ∃ C > 0, ∀ n, |f n| ≤ C * a ^ n, ∃ a < R, ∀ᶠ n in atTop, |f n| ≤ a ^ n,
        ∃ a ∈ Ioo 0 R, ∀ᶠ n in atTop, |f n| ≤ a ^ n] := by
  have A : Ico 0 R ⊆ Ioo (-R) R :=
    fun x hx ↦ ⟨(neg_lt_zero.2 (hx.1.trans_lt hx.2)).trans_le hx.1, hx.2⟩
  have B : Ioo 0 R ⊆ Ioo (-R) R := Subset.trans Ioo_subset_Ico_self A
  -- First we prove that 1-4 are equivalent using 2 → 3 → 4, 1 → 3, and 2 → 1
  tfae_have 1 → 3 := fun ⟨a, ha, H⟩ ↦ ⟨a, ha, H.isBigO⟩
  tfae_have 2 → 1 := fun ⟨a, ha, H⟩ ↦ ⟨a, B ha, H⟩
  tfae_have 3 → 2
  | ⟨a, ha, H⟩ => by
    rcases exists_between (abs_lt.2 ha) with ⟨b, hab, hbR⟩
    exact ⟨b, ⟨(abs_nonneg a).trans_lt hab, hbR⟩,
      H.trans_isLittleO (isLittleO_pow_pow_of_abs_lt_left (hab.trans_le (le_abs_self b)))⟩
  tfae_have 2 → 4 := fun ⟨a, ha, H⟩ ↦ ⟨a, ha, H.isBigO⟩
  tfae_have 4 → 3 := fun ⟨a, ha, H⟩ ↦ ⟨a, B ha, H⟩
  -- Add 5 and 6 using 4 → 6 → 5 → 3
  tfae_have 4 → 6
  | ⟨a, ha, H⟩ => by
    rcases bound_of_isBigO_nat_atTop H with ⟨C, hC₀, hC⟩
    refine ⟨a, ha, C, hC₀, fun n ↦ ?_⟩
    simpa only [Real.norm_eq_abs, abs_pow, abs_of_nonneg ha.1.le] using hC (pow_ne_zero n ha.1.ne')
  tfae_have 6 → 5 := fun ⟨a, ha, C, H₀, H⟩ ↦ ⟨a, ha.2, C, Or.inl H₀, H⟩
  tfae_have 5 → 3
  | ⟨a, ha, C, h₀, H⟩ => by
    rcases sign_cases_of_C_mul_pow_nonneg fun n ↦ (abs_nonneg _).trans (H n) with (rfl | ⟨hC₀, ha₀⟩)
    · obtain rfl : f = 0 := by
        ext n
        simpa using H n
      simp only [lt_irrefl, false_or] at h₀
      exact ⟨0, ⟨neg_lt_zero.2 h₀, h₀⟩, isBigO_zero _ _⟩
    exact ⟨a, A ⟨ha₀, ha⟩,
      isBigO_of_le' _ fun n ↦ (H n).trans <| mul_le_mul_of_nonneg_left (le_abs_self _) hC₀.le⟩
  -- Add 7 and 8 using 2 → 8 → 7 → 3
  tfae_have 2 → 8
  | ⟨a, ha, H⟩ => by
    refine ⟨a, ha, (H.def zero_lt_one).mono fun n hn ↦ ?_⟩
    rwa [Real.norm_eq_abs, Real.norm_eq_abs, one_mul, abs_pow, abs_of_pos ha.1] at hn
  tfae_have 8 → 7 := fun ⟨a, ha, H⟩ ↦ ⟨a, ha.2, H⟩
  tfae_have 7 → 3
  | ⟨a, ha, H⟩ => by
    refine ⟨a, A ⟨?_, ha⟩, .of_norm_eventuallyLE H⟩
    exact nonneg_of_eventually_pow_nonneg (H.mono fun n ↦ (abs_nonneg _).trans)
  tfae_finish

/-- For any natural `k` and a real `r > 1` we have `n ^ k = o(r ^ n)` as `n → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c9420e5d37f8b4d36774645392bf66942cdfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
