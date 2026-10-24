# clzAuxRec_eq_iff_of_getLsbD_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4108b93c-428c-326a-08b0-46886d8f4233",
  "kind": "theorem",
  "lexical_name": "clzAuxRec_eq_iff_of_getLsbD_false",
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
  "slug": "clzauxrec-eq-iff-of-getlsbd-false--d69d7d136ebecaae80106aa2",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6352,
    "line": 6320,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d69d7d136ebecaae80106aa2bef56c2486893a939b7da4746de184a39834fc7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4108b93c-428c-326a-08b0-46886d8f4233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6320–6352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clzAuxRec_eq_iff_of_getLsbD_false {x : BitVec w} (h : ∀ i, n < i → x.getLsbD i = false) :
    x.clzAuxRec n = BitVec.ofNat w w ↔ ∀ j, j ≤ n → x.getLsbD j = false := by
  rcases w with _|w
  · simp [of_length_zero]
  · have := Nat.lt_pow_self (a := 2) (n := w + 1)
    induction n
    · case zero =>
      simp only [clzAuxRec_zero, Nat.zero_lt_succ, getLsbD_eq_getElem, Nat.add_one_sub_one,
        ite_eq_right_iff, Nat.le_zero_eq, forall_eq]
      by_cases hx0 : x.getLsbD 0
      · simp [hx0, toNat_eq, toNat_ofNat, Nat.mod_eq_of_lt (a := w) (b := 2 ^ (w + 1)) (by omega)]
      · simp only [Nat.zero_lt_succ, getLsbD_eq_getElem, Bool.not_eq_true] at hx0
        simp [hx0]
    · case succ n ihn =>
      simp only [clzAuxRec_succ, Nat.add_one_sub_one]
      by_cases hxn : x.getLsbD (n + 1)
      · simp only [hxn, reduceIte, toNat_eq, toNat_ofNat,
          Nat.mod_eq_of_lt (a := w - (n + 1)) (b := 2 ^ (w + 1)) (by omega), Nat.mod_two_pow_self,
          show ¬w - (n + 1) = w + 1 by omega, false_iff, Classical.not_forall,
          Bool.not_eq_false]
        exists n + 1, by omega
      · have : ∀ (i : Nat), n < i → x.getLsbD i = false := by
          intro i hi
          by_cases hi' : i = n + 1
          · simp [hi', hxn]
          · apply h; omega
        specialize ihn this
        simp only [Bool.not_eq_true] at ihn hxn
        simp only [hxn, Bool.false_eq_true, reduceIte, ihn]
        constructor
        <;> intro h' j hj
        <;> (by_cases hj' : j = n + 1; simp [hj', hxn]; (apply h'; omega))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L6320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
