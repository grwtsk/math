# toRat_toDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70e80a63-6af7-dc85-b791-bc781e4c4e99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd94be75-4762-6dd2-8c31-f783a99fb17f",
  "kind": "theorem",
  "lexical_name": "toRat_toDyadic",
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
  "slug": "torat-todyadic--9f03cde9146631f37468603a",
  "source": {
    "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f03cde9146631f37468603ace6af7c08d7afb67072763f2380c5faf880ae089",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd94be75-4762-6dd2-8c31-f783a99fb17f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRat_toDyadic (x : Rat) (prec : Int) :
    (x.toDyadic prec).toRat = (x * 2 ^ prec).floor / 2 ^ prec := by
  rw [Rat.toDyadic_eq_ofIntWithPrec, toRat_ofIntWithPrec_eq_mul_two_pow, Rat.zpow_neg, Rat.div_def]
  congr 2
  rw [Rat.floor_def, Int.shiftLeft_eq, Nat.shiftLeft_eq]
  match prec with
  | .ofNat prec =>
    simp only [Int.ofNat_eq_natCast, Int.toNat_natCast, Int.toNat_neg_natCast, Nat.pow_zero,
      Nat.mul_one]
    have : (2 ^ prec : Rat) = ((2 ^ prec : Nat) : Rat) := by simp
    rw [Rat.zpow_natCast, this, Rat.mul_def']
    simp only [Rat.num_mkRat, Rat.den_mkRat]
    simp only [Rat.natCast_pow, Rat.natCast_ofNat, Rat.num_pow, Rat.num_ofNat, Rat.den_pow,
      Rat.den_ofNat, Nat.one_pow, Nat.mul_one]
    split
    · simp_all
    · rw [Int.ediv_ediv_of_nonneg (Int.natCast_nonneg _)]
      congr 1
      rw [Int.natCast_ediv, Int.mul_ediv_cancel']
      rw [Int.natCast_dvd_natCast]
      apply gcd_dvd_left
  | .negSucc prec =>
    simp only [Int.toNat_negSucc, Int.pow_zero, Int.mul_one, Int.neg_negSucc, Int.natCast_mul,
      Int.natCast_pow, Int.cast_ofNat_Int]
    have : (2 ^ ((prec : Int) + 1)) = ((2 ^ (prec + 1) : Nat) : Rat) := by simp; rfl
    rw [Int.negSucc_eq, Rat.zpow_neg, this, Rat.mul_def']
    simp only [Rat.num_mkRat, Rat.den_mkRat]
    simp only [natCast_pow, natCast_ofNat, den_inv, num_pow, num_ofNat, Int.natAbs_pow,
      Int.reduceAbs, num_inv, den_pow, den_ofNat, Nat.one_pow, Int.cast_ofNat_Int, Int.mul_one]
    have : ¬ (2 ^ (prec + 1) : Int) = 0 := NeZero.out
    simp only [if_neg this]
    have : (2 ^ (prec + 1) : Int).sign = 1 := by simpa using Int.pow_pos (by decide)
    simp only [this]
    have : x.den * 2 ^ (prec + 1) = 0 ↔ x.den = 0 := by
      rw [Nat.mul_eq_zero]
      simp_all
    simp only [this, Int.mul_one]
    split
    · simp_all
    · rw [Int.ediv_ediv_of_nonneg (Int.natCast_nonneg _)]
      congr 1
      rw [Int.natCast_ediv, Int.mul_ediv_cancel']
      · simp
      · rw [Int.natCast_dvd_natCast]
        apply gcd_dvd_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `197f830c1b5fd8c0e38afdc909f718c22a47905a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
