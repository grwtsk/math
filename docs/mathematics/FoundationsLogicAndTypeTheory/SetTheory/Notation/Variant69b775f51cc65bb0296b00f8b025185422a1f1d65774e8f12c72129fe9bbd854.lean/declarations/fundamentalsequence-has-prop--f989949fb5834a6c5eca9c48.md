# fundamentalSequence_has_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 993,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a0ca2d4-912c-25af-1e8c-f39dc802effe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:729ab15a-4af5-73a4-cf59-71cf502d7df9",
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
  "slug": "fundamentalsequence-has-prop--f989949fb5834a6c5eca9c48",
  "source": {
    "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1061,
    "line": 993,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f989949fb5834a6c5eca9c483f294c7c670fcc2c21e39e4e59ce4c481a534ec7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:729ab15a-4af5-73a4-cf59-71cf502d7df9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 993–1061.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean#L993).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `692e1f0dfcfdf482c864ba74037ea03ae863bf1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
