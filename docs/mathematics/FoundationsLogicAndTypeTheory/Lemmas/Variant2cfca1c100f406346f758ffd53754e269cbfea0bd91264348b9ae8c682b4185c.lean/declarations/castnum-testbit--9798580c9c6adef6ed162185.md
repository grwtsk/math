# castNum_testBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61ad26ebe0834d0e578e73d6eb5fb5534bc245bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 838,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6927014-396c-6c40-63da-9ea0c34c4f1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0125f593-c46d-41f9-a6d4-314b8f41db31",
  "kind": "theorem",
  "lexical_name": "castNum_testBit",
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
  "slug": "castnum-testbit--9798580c9c6adef6ed162185",
  "source": {
    "blob": "61ad26ebe0834d0e578e73d6eb5fb5534bc245bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 838,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9798580c9c6adef6ed1621852507fc32f553297873b4dc576c64fde6fe542748",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0125f593-c46d-41f9-a6d4-314b8f41db31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castNum_testBit (m n) : testBit m n = Nat.testBit m n := by
  cases m with dsimp only [testBit]
  | zero =>
    rw [show (Num.zero : Nat) = 0 from rfl, Nat.zero_testBit]
  | pos m =>
    rw [cast_pos]
    induction n generalizing m <;> obtain - | m | m := m
        <;> simp only [PosNum.testBit]
    · rfl
    · rw [PosNum.cast_bit1, ← two_mul, ← congr_fun Nat.bit_true, Nat.testBit_bit_zero]
    · rw [PosNum.cast_bit0, ← two_mul, ← congr_fun Nat.bit_false, Nat.testBit_bit_zero]
    · simp [Nat.testBit_add_one]
    case succ.bit1 n IH =>
      rw [PosNum.cast_bit1, ← two_mul, ← congr_fun Nat.bit_true, Nat.testBit_bit_succ, IH]
    case succ.bit0 n IH =>
      rw [PosNum.cast_bit0, ← two_mul, ← congr_fun Nat.bit_false, Nat.testBit_bit_succ, IH]

end Num

namespace Int

/-- Cast a `SNum` to the corresponding integer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61ad26ebe0834d0e578e73d6eb5fb5534bc245bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
