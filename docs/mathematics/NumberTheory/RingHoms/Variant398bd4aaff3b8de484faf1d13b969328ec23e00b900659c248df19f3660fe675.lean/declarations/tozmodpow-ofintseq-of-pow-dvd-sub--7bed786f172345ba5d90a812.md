# toZModPow_ofIntSeq_of_pow_dvd_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 681,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4b5d1ec-22c5-0491-f821-b1c2794fe478",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:625cd6ac-f461-0474-6544-86bb819fc22c",
  "kind": "lemma",
  "lexical_name": "toZModPow_ofIntSeq_of_pow_dvd_sub",
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
  "slug": "tozmodpow-ofintseq-of-pow-dvd-sub--7bed786f172345ba5d90a812",
  "source": {
    "blob": "9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 681,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bed786f172345ba5d90a8120e8fbb13fb15891f85877f8664192b6630d4c7fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:625cd6ac-f461-0474-6544-86bb819fc22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toZModPow_ofIntSeq_of_pow_dvd_sub
    (f : ℕ → ℤ) (p : ℕ) [Fact p.Prime] (hi : ∀ i, (p : ℤ) ^ i ∣ f (i + 1) - f i) (n : ℕ) :
    (PadicInt.ofIntSeq _ (isCauSeq_padicNorm_of_pow_dvd_sub f p hi)).toZModPow n = f n := by
  set x := PadicInt.ofIntSeq _ (isCauSeq_padicNorm_of_pow_dvd_sub f p hi)
  let s : PadicSeq p := ⟨(f ·), isCauSeq_padicNorm_of_pow_dvd_sub f p hi⟩
  have hs : x = Padic.mk s := rfl
  obtain ⟨e, he⟩ := Ideal.mem_span_singleton.mp (PadicInt.appr_spec n x)
  rw [sub_eq_iff_eq_add] at he
  obtain ⟨N, hN⟩ := padicNormE.defn s (ε := p ^ (-n : ℤ))
    (by simp only [zpow_neg, zpow_natCast, inv_pos]; exact_mod_cast Nat.pos_of_neZero _)
  replace hN := hN (N + n) (Nat.le_add_right N n)
  rw [← hs, he, ← Rat.cast_lt (K := ℝ)] at hN
  push_cast at hN
  simp only [← add_sub, s, Rat.cast_intCast, padicNormE.is_norm,
    ← Int.cast_natCast (R := ℚ_[p]) (x.appr n), ← Int.cast_sub] at hN
  have : ‖(((x.appr n) - f (N + n) : ℤ) : ℚ_[p])‖ ≤ ↑p ^ (-n : ℤ) := by
    by_contra! H
    have H' : ‖(p ^ n * e : ℚ_[p])‖ < ‖(((x.appr n) - f (N + n) : ℤ) : ℚ_[p])‖ := by
      refine LE.le.trans_lt ?_ H
      simpa using mul_le_mul_of_nonneg le_rfl e.2 (show 0 ≤ (↑p ^ n)⁻¹ by simp) zero_le_one
    rw [padicNormE.add_eq_max_of_ne H'.ne, sup_eq_right.mpr H'.le] at hN
    exact lt_asymm hN H
  rw [padicNormE.norm_int_le_pow_iff_dvd, ← Nat.cast_pow,
    ← ZMod.intCast_eq_intCast_iff_dvd_sub, Int.cast_natCast] at this
  refine this.symm.trans ?_
  clear * - hi
  induction N with
  | zero => simp
  | succ N IH =>
    rw [← IH, eq_comm, add_right_comm, ZMod.intCast_eq_intCast_iff_dvd_sub]
    exact .trans ⟨p ^ N, by simp [pow_add, mul_comm]⟩ (hi _)

end PadicInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant398bd4aaff3b8de484faf1d13b969328ec23e00b900659c248df19f3660fe675.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c9036dfc78fc47e8a3e9d51ab6c20d47e6b9d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
