# fermatLastTheoremWith_nat_int_rat_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d574a393-0072-6e1c-d8ef-dcef7d0395df",
  "kind": "lemma",
  "lexical_name": "fermatLastTheoremWith_nat_int_rat_tfae",
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
  "slug": "fermatlasttheoremwith-nat-int-rat-tfae--159289e52264ded12668b727",
  "source": {
    "blob": "7cb56c5e45d29b9a2b49508ddcf8fa15607a264a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 92,
    "path": "GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159289e52264ded12668b727ddd9f5bd95d5e42d41579996b4aeb8d75de66d72",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d574a393-0072-6e1c-d8ef-dcef7d0395df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fermatLastTheoremWith_nat_int_rat_tfae (n : ℕ) :
    TFAE [FermatLastTheoremWith ℕ n, FermatLastTheoremWith ℤ n, FermatLastTheoremWith ℚ n] := by
  tfae_have 1 → 2
  | h, a, b, c, ha, hb, hc, habc => by
    obtain hn | hn := n.even_or_odd
    · refine h a.natAbs b.natAbs c.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [hn.pow_abs, habc]
    obtain ha | ha := ha.lt_or_lt <;> obtain hb | hb := hb.lt_or_lt <;>
      obtain hc | hc := hc.lt_or_lt
    · refine h a.natAbs b.natAbs c.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_neg, neg_pow a, neg_pow b, neg_pow c, ← mul_add, habc, *]
    · exact (by positivity : 0 < c ^ n).not_lt <| habc.symm.trans_lt <| add_neg (hn.pow_neg ha) <|
        hn.pow_neg hb
    · refine h b.natAbs c.natAbs a.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_pos, abs_of_neg, hn.neg_pow, habc, add_neg_eq_iff_eq_add,
        eq_neg_add_iff_add_eq, *]
    · refine h a.natAbs c.natAbs b.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_pos, abs_of_neg, hn.neg_pow, habc, neg_add_eq_iff_eq_add,
        eq_neg_add_iff_add_eq, *]
    · refine h c.natAbs a.natAbs b.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_pos, abs_of_neg, hn.neg_pow, habc, neg_add_eq_iff_eq_add,
        eq_add_neg_iff_add_eq, *]
    · refine h c.natAbs b.natAbs a.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_pos, abs_of_neg, hn.neg_pow, habc, add_neg_eq_iff_eq_add,
        eq_add_neg_iff_add_eq, *]
    · exact (by positivity : 0 < a ^ n + b ^ n).not_lt <| habc.trans_lt <| hn.pow_neg hc
    · refine h a.natAbs b.natAbs c.natAbs (by positivity) (by positivity) (by positivity)
        (Int.natCast_inj.1 ?_)
      push_cast
      simp only [abs_of_pos, habc, *]
  tfae_have 2 → 3
  | h, a, b, c, ha, hb, hc, habc => by
    rw [← Rat.num_ne_zero] at ha hb hc
    refine h (a.num * b.den * c.den) (a.den * b.num * c.den) (a.den * b.den * c.num)
      (by positivity) (by positivity) (by positivity) ?_
    have : (a.den * b.den * c.den : ℚ) ^ n ≠ 0 := by positivity
    refine Int.cast_injective <| (div_left_inj' this).1 ?_
    push_cast
    simp only [add_div, ← div_pow, mul_div_mul_comm, div_self (by positivity : (a.den : ℚ) ≠ 0),
      div_self (by positivity : (b.den : ℚ) ≠ 0), div_self (by positivity : (c.den : ℚ) ≠ 0),
      one_mul, mul_one, Rat.num_div_den, habc]
  tfae_have 3 → 1
  | h, a, b, c => mod_cast h a b c
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant0de236fe93b4681550cb524b8807bbc00c576627dd6ab00d3a43504c2d9ea265.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb56c5e45d29b9a2b49508ddcf8fa15607a264a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
