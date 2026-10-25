# adc_value_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f87c74a7-b5e5-01cf-fc28-7afcb28021ac",
  "kind": "theorem",
  "lexical_name": "adc_value_step",
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
  "slug": "adc-value-step--746ffac3b3b2db77a0362cd5",
  "source": {
    "blob": "d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:746ffac3b3b2db77a0362cd50139a6d12dc1ad29472f6d1b8b3c733a6a8af697",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f87c74a7-b5e5-01cf-fc28-7afcb28021ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adc_value_step {i : Nat} (i_lt : i < w) (x y : BitVec w) (c : Bool) :
    getLsb (x + y + zeroExtend w (ofBool c)) i =
      Bool.xor (getLsb x i) (Bool.xor (getLsb y i) (carry i x.toNat y.toNat c)) := by
  let ⟨x, x_lt⟩ := x
  let ⟨y, y_lt⟩ := y
  simp only [getLsb, toNat_add, toNat_zeroExtend, i_lt, toNat_ofFin, toNat_ofBool,
    Nat.mod_add_mod, Nat.add_mod_mod]
  apply Eq.trans
  rw [← Nat.div_add_mod x (2^i), ← Nat.div_add_mod y (2^i)]
  simp only
    [ Nat.testBit_mod_two_pow,
      Nat.testBit_mul_two_pow_add_eq,
      i_lt,
      decide_True,
      Bool.true_and,
      Nat.add_assoc,
      Nat.add_left_comm (_%_) (_ * _) _,
      testBit_limit (adc_overflow_limit x y i c)
    ]
  simp [testBit_to_div_mod, carry, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
