# toRat_toDyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc37bcb5-07f2-11ca-48ce-9d088cf0518a",
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
  "slug": "torat-todyadic--2ff16d1cd6e12c9e79e4754d",
  "source": {
    "blob": "452395bb8cdf6ea14fb051fb7993a1dc2e361e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 475,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ff16d1cd6e12c9e79e4754d0310846d8693d03cdfa4be3854a949358b97dcd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc37bcb5-07f2-11ca-48ce-9d088cf0518a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–520.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452395bb8cdf6ea14fb051fb7993a1dc2e361e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
