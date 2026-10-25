# repr_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbd3b1e2-e348-5ca6-1d32-90732e6bd4f9",
  "kind": "theorem",
  "lexical_name": "repr_opow",
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
  "slug": "repr-opow--da90deb12b6a83722dab2bf5",
  "source": {
    "blob": "bedcc3ed05793f1be7551827d345e40153184598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 970,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da90deb12b6a83722dab2bf51e612529762896dcfd343d3c5023754424da7177",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd3b1e2-e348-5ca6-1d32-90732e6bd4f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 970–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_opow (o₁ o₂) [NF o₁] [NF o₂] : repr (o₁ ^ o₂) = repr o₁ ^ repr o₂ := by
  cases' e₁ : split o₁ with a m
  cases' nf_repr_split e₁ with N₁ r₁
  cases' a with a0 n a'
  · cases' m with m
    · by_cases o₂ = 0 <;> simp [opow_def, opowAux2, opow, e₁, h, r₁]
      have := mt repr_inj.1 h
      rw [zero_opow this]
    · cases' e₂ : split' o₂ with b' k
      cases' nf_repr_split' e₂ with _ r₂
      by_cases m = 0
      · simp [opow_def, opow, e₁, h, r₁, e₂, r₂, -Nat.cast_succ, ← Nat.one_eq_succ_zero]
      simp only [opow_def, opowAux2, opow, e₁, h, r₁, e₂, r₂, repr,
          opow_zero, Nat.succPNat_coe, Nat.cast_succ, Nat.cast_zero, _root_.zero_add, mul_one,
          add_zero, one_opow, npow_eq_pow]
      rw [opow_add, opow_mul, opow_omega, add_one_eq_succ]
      congr
      conv_lhs =>
        simp [HPow.hPow]
        simp [Pow.pow, opow, Ordinal.succ_ne_zero]
      · simpa using nat_cast_lt.2 (Nat.succ_lt_succ <| pos_iff_ne_zero.2 h)
      · rw [←Nat.cast_succ, lt_omega]
        exact ⟨_, rfl⟩
  · haveI := N₁.fst
    haveI := N₁.snd
    cases' N₁.of_dvd_omega (split_dvd e₁) with a00 ad
    have al := split_add_lt e₁
    have aa : repr (a' + ofNat m) = repr a' + m := by
      simp only [eq_self_iff_true, ONote.repr_ofNat, ONote.repr_add]
    cases' e₂ : split' o₂ with b' k
    cases' nf_repr_split' e₂ with _ r₂
    simp only [opow_def, opow, e₁, r₁, split_eq_scale_split' e₂, opowAux2, repr]
    cases' k with k <;> skip
    · simp [opow, r₂, opow_mul, repr_opow_aux₁ a00 al aa,
        add_assoc, split_eq_scale_split' e₂]
    · simp [opow, opowAux2, r₂, opow_add, opow_mul, mul_assoc, add_assoc, -repr]
      simp [repr]
      rw [repr_opow_aux₁ a00 al aa, scale_opowAux]
      simp [opow_mul]
      rw [← mul_add, ← add_assoc ((ω : Ordinal.{0}) ^ repr a0 * (n : ℕ))]
      congr 1
      rw [← opow_succ]
      exact (repr_opow_aux₂ _ ad a00 al _ _).2
#align onote.repr_opow ONote.repr_opow

/-- Given an ordinal, returns `inl none` for `0`, `inl (some a)` for `a+1`, and
  `inr f` for a limit ordinal `a`, where `f i` is a sequence converging to `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean#L970).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedcc3ed05793f1be7551827d345e40153184598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
