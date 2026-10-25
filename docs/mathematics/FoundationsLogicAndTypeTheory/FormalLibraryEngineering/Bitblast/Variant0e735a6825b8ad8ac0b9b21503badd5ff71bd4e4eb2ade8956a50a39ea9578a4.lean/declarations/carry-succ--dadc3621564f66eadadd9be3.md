# carry_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c485e5-b7d4-5add-e089-8d883cf4d8c1",
  "kind": "theorem",
  "lexical_name": "carry_succ",
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
  "slug": "carry-succ--dadc3621564f66eadadd9be3",
  "source": {
    "blob": "d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dadc3621564f66eadadd9be3f8d4bda65cf8ce4f8519a21eab1c1f287ac7c102",
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

Occurrence: `result:e5c485e5-b7d4-5add-e089-8d883cf4d8c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carry_succ (w x y : Nat) (c : Bool) : carry (succ w) x y c =
    decide ((x.testBit w).toNat + (y.testBit w).toNat + (carry w x y c).toNat ≥ 2) := by
  simp only [carry, mod_two_pow_succ _ w, decide_eq_decide]
  generalize testBit x w = xh
  generalize testBit y w = yh
  have sum_bnd : x%2^w + (y%2^w + c.toNat) < 2*2^w := by
          simp [Nat.mul_comm 2 _, ←Nat.pow_succ ]
          exact adc_overflow_limit x y w c
  simp only [Nat.pow_succ]
  cases xh <;> cases yh <;> cases Decidable.em (x%2^w + (y%2^w + toNat c) ≥ 2 ^ w) with | _ pred =>
    simp [Nat.one_shiftLeft, Nat.add_assoc, Nat.add_left_comm _ (2^_) _, Nat.mul_comm (2^_) _,
          Nat.not_le_of_lt, Nat.add_succ, Nat.succ_le_succ,
          mul_le_add_right, le_add_right, sum_bnd, pred]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
