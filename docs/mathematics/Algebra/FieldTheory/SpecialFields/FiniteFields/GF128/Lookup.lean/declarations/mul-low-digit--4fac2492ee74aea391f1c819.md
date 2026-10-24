# mul_low_digit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10ec8c59-566f-06dc-cba7-efac0ee40631",
  "kind": "theorem",
  "lexical_name": "mul_low_digit",
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
  "slug": "mul-low-digit--4fac2492ee74aea391f1c819",
  "source": {
    "blob": "352f02dad0fe6e4dfd183e41dfb239127aaac989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 81,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Lookup.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fac2492ee74aea391f1c819e98bbb40fb82c1237bca4bc15466a937ce005bd5",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ec8c59-566f-06dc-cba7-efac0ee40631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_low_digit (coefficient value : Word) (bits : Nat) (hb : bits ≤ 128) :
    mul coefficient (BitVec.ofNat 128 (value.toNat % 2 ^ bits)) =
      mulFuel bits coefficient value := by
  let digit := BitVec.ofNat 128 (value.toNat % 2 ^ bits)
  have hd : value.toNat % 2 ^ bits < 2 ^ bits := Nat.mod_lt _ (Nat.two_pow_pos bits)
  have hw : value.toNat % 2 ^ bits < 2 ^ 128 :=
    Nat.lt_of_lt_of_le hd (Nat.pow_le_pow_right (by decide) hb)
  have hz : digit >>> bits = 0 := by
    apply BitVec.eq_of_toNat_eq
    simp [digit, BitVec.toNat_ushiftRight, Nat.mod_eq_of_lt hw,
      Nat.shiftRight_eq_div_pow, Nat.div_eq_of_lt hd]
  have hc : mulFuel bits coefficient digit = mulFuel bits coefficient value := by
    apply mulFuel_congr_low
    intro i hi
    have hiw : i < 128 := by omega
    change (BitVec.ofNat 128 (value.toNat % 2 ^ bits)).getLsbD i = value.getLsbD i
    rw [BitVec.getLsbD_ofNat, Nat.testBit_mod_two_pow]
    simp only [hiw, hi, decide_true, Bool.true_and]
    rfl
  have hs := mulFuel_add bits (128 - bits) coefficient digit
  rw [Nat.add_sub_of_le hb, hz, mulFuel_zero_right, word_xor_zero] at hs
  exact hs.trans hc

/-- One actual generated table row equals the grouped accumulator block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Lookup.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Lookup.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352f02dad0fe6e4dfd183e41dfb239127aaac989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
