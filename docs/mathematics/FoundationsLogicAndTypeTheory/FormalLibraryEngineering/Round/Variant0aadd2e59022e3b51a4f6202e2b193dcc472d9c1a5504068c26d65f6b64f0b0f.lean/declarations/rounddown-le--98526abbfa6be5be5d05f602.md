# roundDown_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0503fb78-5f94-3022-50e0-717865bbb5c7",
  "kind": "theorem",
  "lexical_name": "roundDown_le",
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
  "slug": "rounddown-le--98526abbfa6be5be5d05f602",
  "source": {
    "blob": "9709d5fac7895cf04e157d8bcf1ea71f8497fb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98526abbfa6be5be5d05f602964a7fa53fbf5ef1c63b4738ce36be9564d09e2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0503fb78-5f94-3022-50e0-717865bbb5c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundDown_le {x : Dyadic} {prec : Int} : roundDown x prec ≤ x :=
  match x with
  | .zero => Dyadic.le_refl _
  | .ofOdd n k _ => by
    unfold roundDown
    dsimp
    match h : k - prec with
    | .ofNat l =>
      dsimp
      rw [ofOdd_eq_ofIntWithPrec, ← toRat_le_toRat_iff]
      replace h : k = Int.ofNat l + prec := by omega
      subst h
      simp only [toRat_ofIntWithPrec_eq_mul_two_pow]
      rw [Int.neg_add, Rat.zpow_add (by decide), ← Rat.mul_assoc]
      refine Lean.Grind.OrderedRing.mul_le_mul_of_nonneg_right ?_ (Rat.zpow_nonneg (by decide))
      rw [Int.shiftRight_eq_div_pow]
      rw [← Lean.Grind.Field.IsOrdered.mul_le_mul_iff_of_pos_right (c := 2^(Int.ofNat l)) (Rat.zpow_pos (by decide))]
      simp only [Int.natCast_pow, Int.cast_ofNat_Int, Int.ofNat_eq_natCast]
      rw [Rat.mul_assoc, ← Rat.zpow_add (by decide), Int.add_left_neg, Rat.zpow_zero, Rat.mul_one]
      have : (2 : Rat) ^ (l : Int) = (2 ^ l : Int) := by
        rw [Rat.zpow_natCast, Rat.intCast_pow, Rat.intCast_ofNat]
      rw [this, ← Rat.intCast_mul, Rat.intCast_le_intCast]
      exact Int.ediv_mul_le n (Int.pow_ne_zero (by decide))
    | .negSucc _ =>
      apply Dyadic.le_refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9709d5fac7895cf04e157d8bcf1ea71f8497fb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
