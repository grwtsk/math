# fundamentalSequence_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36d39bc8-7d02-95eb-19b8-3a966e09b816",
  "kind": "theorem",
  "lexical_name": "fundamentalSequence_has_prop",
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
  "slug": "fundamentalsequence-has-prop--361ed2922286e11abb24ab1a",
  "source": {
    "blob": "97cdb8f9800240a324420c8df10cb8f246eb5a4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1069,
    "line": 1001,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:361ed2922286e11abb24ab1ab797eb5f56c3b1632c5621c5b314b7f6e0995f2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d39bc8-7d02-95eb-19b8-3a966e09b816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1001–1069.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fundamentalSequence_has_prop (o) : FundamentalSequenceProp o (fundamentalSequence o) := by
  induction o with
  | zero => exact rfl
  | oadd a m b iha ihb
  rw [fundamentalSequence]
  rcases e : b.fundamentalSequence with (⟨_ | b'⟩ | f) <;>
    simp only [FundamentalSequenceProp] <;>
    rw [e, FundamentalSequenceProp] at ihb
  · rcases e : a.fundamentalSequence with (⟨_ | a'⟩ | f) <;> rcases e' : m.natPred with - | m' <;>
      simp only [FundamentalSequenceProp] <;>
      rw [e, FundamentalSequenceProp] at iha <;>
      (try rw [show m = 1 by
            have := PNat.natPred_add_one m; rw [e'] at this; exact PNat.coe_inj.1 this.symm]) <;>
      (try rw [show m = (m' + 1).succPNat by
              rw [← e', ← PNat.coe_inj, Nat.succPNat_coe, ← Nat.add_one, PNat.natPred_add_one]]) <;>
      simp only [repr, iha, ihb, opow_lt_opow_iff_right one_lt_omega0, add_lt_add_iff_left,
        add_zero, eq_self_iff_true, lt_add_iff_pos_right, lt_def, mul_one, Nat.cast_zero,
        Nat.cast_succ, Nat.succPNat_coe, opow_succ, opow_zero, mul_add_one, PNat.one_coe, succ_zero,
        _root_.zero_add, zero_def]
    · decide
    · exact ⟨rfl, inferInstance⟩
    · have := opow_pos (repr a') omega0_pos
      refine
        ⟨isLimit_mul this isLimit_omega0, fun i =>
          ⟨this, ?_, fun H => @NF.oadd_zero _ _ (iha.2 H.fst)⟩, exists_lt_mul_omega0'⟩
      rw [← mul_succ, ← natCast_succ, Ordinal.mul_lt_mul_iff_left this]
      apply nat_lt_omega0
    · have := opow_pos (repr a') omega0_pos
      refine
        ⟨isLimit_add _ (isLimit_mul this isLimit_omega0), fun i => ⟨this, ?_, ?_⟩,
          exists_lt_add exists_lt_mul_omega0'⟩
      · rw [← mul_succ, ← natCast_succ, Ordinal.mul_lt_mul_iff_left this]
        apply nat_lt_omega0
      · refine fun H => H.fst.oadd _ (NF.below_of_lt' ?_ (@NF.oadd_zero _ _ (iha.2 H.fst)))
        rw [repr, ← zero_def, repr, add_zero, iha.1, opow_succ, Ordinal.mul_lt_mul_iff_left this]
        apply nat_lt_omega0
    · rcases iha with ⟨h1, h2, h3⟩
      refine ⟨isLimit_opow one_lt_omega0 h1, fun i => ?_,
        exists_lt_omega0_opow' one_lt_omega0 h1 h3⟩
      obtain ⟨h4, h5, h6⟩ := h2 i
      exact ⟨h4, h5, fun H => @NF.oadd_zero _ _ (h6 H.fst)⟩
    · rcases iha with ⟨h1, h2, h3⟩
      refine
        ⟨isLimit_add _ (isLimit_opow one_lt_omega0 h1), fun i => ?_,
          exists_lt_add (exists_lt_omega0_opow' one_lt_omega0 h1 h3)⟩
      obtain ⟨h4, h5, h6⟩ := h2 i
      refine ⟨h4, h5, fun H => H.fst.oadd _ (NF.below_of_lt' ?_ (@NF.oadd_zero _ _ (h6 H.fst)))⟩
      rwa [repr, ← zero_def, repr, add_zero, PNat.one_coe, Nat.cast_one, mul_one,
        opow_lt_opow_iff_right one_lt_omega0]
  · refine ⟨by
      rw [repr, ihb.1, add_succ, repr], fun H => H.fst.oadd _ (NF.below_of_lt' ?_ (ihb.2 H.snd))⟩
    have := H.snd'.repr_lt
    rw [ihb.1] at this
    exact (lt_succ _).trans this
  · rcases ihb with ⟨h1, h2, h3⟩
    simp only [repr]
    exact
      ⟨Ordinal.isLimit_add _ h1, fun i =>
        ⟨oadd_lt_oadd_3 (h2 i).1, oadd_lt_oadd_3 (h2 i).2.1, fun H =>
          H.fst.oadd _ (NF.below_of_lt' (lt_trans (h2 i).2.1 H.snd'.repr_lt) ((h2 i).2.2 H.snd))⟩,
        exists_lt_add h3⟩

/-- The fast growing hierarchy for ordinal notations `< ε₀`. This is a sequence of functions `ℕ → ℕ`
indexed by ordinals, with the definition:

* `f_0(n) = n + 1`
* `f_(α + 1)(n) = f_α^[n](n)`
* `f_α(n) = f_(α[n])(n)` where `α` is a limit ordinal and `α[i]` is the fundamental sequence
  converging to `α` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant91eec0017e531547f0d72bbcec8fb706926352ecc9232b153c366d1c4a566d40.lean#L1001).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97cdb8f9800240a324420c8df10cb8f246eb5a4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
