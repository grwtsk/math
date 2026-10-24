# _root_.integrableOn_mul_sum_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71b44611d978318185ecc30724856b14e316742f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99407382-351d-583e-cd14-ae0021838c7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d4d067e-8e0e-4bb0-9623-5cce65740762",
  "kind": "theorem",
  "lexical_name": "_root_.integrableOn_mul_sum_Icc",
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
  "slug": "root-integrableon-mul-sum-icc--fb9c1c373f17250564c3df0b",
  "source": {
    "blob": "71b44611d978318185ecc30724856b14e316742f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb9c1c373f17250564c3df0b3dfbdcde6d01e895c27c08b38e7d4452e96b8e84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d4d067e-8e0e-4bb0-9623-5cce65740762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.integrableOn_mul_sum_Icc {m : ℕ} (ha : 0 ≤ a) {g : ℝ → 𝕜}
    (hg_int : IntegrableOn g (Set.Icc a b)) :
    IntegrableOn (fun t ↦ g t * ∑ k ∈ Icc m ⌊t⌋₊, c k) (Set.Icc a b) := by
  obtain hab | hab := le_or_gt a b
  · obtain hb | hb := eq_or_lt_of_le (Nat.floor_le_floor hab)
    · have : ∀ᵐ t, t ∈ Set.Icc a b → ∑ k ∈ Icc m ⌊a⌋₊, c k = ∑ k ∈ Icc m ⌊t⌋₊, c k := by
        filter_upwards [sumlocc c ⌊a⌋₊] with t ht₁ ht₂
        rw [ht₁ ⟨(Nat.floor_le ha).trans ht₂.1, hb ▸ ht₂.2.trans (Nat.lt_floor_add_one b).le⟩]
      rw [← ae_restrict_iff' measurableSet_Icc] at this
      exact IntegrableOn.congr_fun_ae
        (hg_int.mul_const _) ((Filter.EventuallyEq.refl _ g).mul this)
    · have h_locint {t₁ t₂ : ℝ} {n : ℕ} (h : t₁ ≤ t₂) (h₁ : n ≤ t₁) (h₂ : t₂ ≤ n + 1)
          (h₃ : a ≤ t₁) (h₄ : t₂ ≤ b) :
          IntervalIntegrable (fun t ↦ g t * ∑ k ∈ Icc m ⌊t⌋₊, c k) volume t₁ t₂ := by
        rw [intervalIntegrable_iff_integrableOn_Icc_of_le h]
        exact (IntegrableOn.mono_set (hg_int.mul_const _) (Set.Icc_subset_Icc h₃ h₄)).congr
          <| ae_restrict_of_ae_restrict_of_subset (Set.Icc_subset_Icc h₁ h₂)
            <| (ae_restrict_iff' measurableSet_Icc).mpr
              (by filter_upwards [sumlocc c n] with t h ht using by rw [h ht])
      have aux1 : 0 ≤ b := (Nat.pos_of_floor_pos <| (Nat.zero_le _).trans_lt hb).le
      have aux2 : ⌊a⌋₊ + 1 ≤ b := by rwa [← Nat.cast_add_one, ← Nat.le_floor_iff aux1]
      have aux3 : a ≤ ⌊a⌋₊ + 1 := (Nat.lt_floor_add_one _).le
      have aux4 : a ≤ ⌊b⌋₊ := le_of_lt (by rwa [← Nat.floor_lt ha])
      -- now break up into 3 subintervals
      rw [← intervalIntegrable_iff_integrableOn_Icc_of_le (aux3.trans aux2)]
      have I1 : IntervalIntegrable _ volume a ↑(⌊a⌋₊ + 1) :=
        h_locint (mod_cast aux3) (Nat.floor_le ha) (mod_cast le_rfl) le_rfl (mod_cast aux2)
      have I2 : IntervalIntegrable _ volume ↑(⌊a⌋₊ + 1) ⌊b⌋₊ :=
        trans_iterate_Ico hb fun k hk ↦ h_locint (mod_cast k.le_succ)
          le_rfl (mod_cast le_rfl) (ineqofmemIco hk).1 (mod_cast (ineqofmemIco hk).2)
      have I3 : IntervalIntegrable _ volume ⌊b⌋₊ b :=
        h_locint (Nat.floor_le aux1) le_rfl (Nat.lt_floor_add_one _).le aux4 le_rfl
      exact (I1.trans I2).trans I3
  · rw [Set.Icc_eq_empty_of_lt hab]
    exact integrableOn_empty

/-- Abel's summation formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b44611d978318185ecc30724856b14e316742f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
