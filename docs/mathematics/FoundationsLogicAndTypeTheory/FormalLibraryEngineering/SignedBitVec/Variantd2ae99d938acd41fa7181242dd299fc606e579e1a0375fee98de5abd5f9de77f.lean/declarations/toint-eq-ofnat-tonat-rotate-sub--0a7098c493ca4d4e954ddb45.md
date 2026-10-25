# toInt_eq_ofNat_toNat_rotate_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2718fa3-d019-5acd-0bc6-d3f10b8aadab",
  "kind": "theorem",
  "lexical_name": "toInt_eq_ofNat_toNat_rotate_sub",
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
  "slug": "toint-eq-ofnat-tonat-rotate-sub--0a7098c493ca4d4e954ddb45",
  "source": {
    "blob": "1c65ae0999b87a94b57ef5171954fc4f7d5197f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a7098c493ca4d4e954ddb452cddab5cf5d69bc62f1ae669da37c00da9bf735c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2718fa3-d019-5acd-0bc6-d3f10b8aadab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_eq_ofNat_toNat_rotate_sub {x : BitVec n} (h : n > 0) :
    x.toInt = (↑(rotate x).toNat : Int) - ↑(intMinSealed n).toNat := by
  match n with
  | 0 => omega
  | n + 1 =>
    simp only [BitVec.toInt, Int.natCast_pow, Int.cast_ofNat_Int, rotate, intMinSealed_def,
      Nat.add_one_sub_one, natCast_eq_ofNat, toNat_add, toNat_ofNat, Nat.add_mod_mod,
      Int.natCast_emod, Int.natCast_add]
    rw [Int.emod_eq_of_lt (a := 2 ^ n)]; rotate_left
    · exact Int.le_of_lt (Int.pow_pos (by omega))
    · rw [Int.pow_add, Int.pow_succ, Int.pow_zero, Int.one_mul, Int.mul_comm, Int.two_mul]
      exact Int.lt_add_of_pos_right _ (Int.pow_pos (by omega))
    have : (2 : Int) ^ n > 0 := Int.pow_pos (by omega)
    split <;> rename_i h
    · rw [Nat.pow_add, Nat.pow_one, Nat.mul_comm _ 2, Nat.mul_lt_mul_left (by omega),
        ← Int.ofNat_lt, Int.natCast_pow, Int.cast_ofNat_Int] at h
      rw [Int.emod_eq_of_lt (by omega) (by omega)]
      omega
    · rw [Nat.pow_add, Nat.pow_one, Nat.mul_comm _ 2, Nat.mul_lt_mul_left (by omega),
        ← Int.ofNat_lt, Int.natCast_pow, Int.cast_ofNat_Int] at h
      simp only [Int.pow_add, Int.reducePow, Int.mul_comm _ 2, Int.two_mul, ← Int.sub_sub,
        Int.sub_left_inj]
      rw [eq_comm, Int.emod_eq_iff (by omega)]
      refine ⟨by omega, ?_, ?_⟩
      · have := BitVec.toNat_lt_twoPow_of_le (x := x) (Nat.le_refl _)
        rw [Int.ofNat_natAbs_of_nonneg (by omega)]
        simp only [Nat.pow_add, Nat.pow_one, ← Int.ofNat_lt, Int.natCast_mul, Int.natCast_pow,
          Int.cast_ofNat_Int] at this
        omega
      · conv => rhs; rw [← Int.sub_sub, Int.sub_sub (b := 2 ^ n), Int.add_comm, ← Int.sub_sub]
        exact ⟨-1, by omega⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c65ae0999b87a94b57ef5171954fc4f7d5197f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
