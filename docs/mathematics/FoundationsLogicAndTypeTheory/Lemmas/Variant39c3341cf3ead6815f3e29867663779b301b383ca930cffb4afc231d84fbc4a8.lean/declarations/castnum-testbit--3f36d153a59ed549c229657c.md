# castNum_testBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91402943-1111-7603-adb9-d07c32fa9d01",
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
  "slug": "castnum-testbit--3f36d153a59ed549c229657c",
  "source": {
    "blob": "d1df34599943dc6fffd37bf2255cf8efce0ed244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 859,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant39c3341cf3ead6815f3e29867663779b301b383ca930cffb4afc231d84fbc4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f36d153a59ed549c229657cf50da9e6ba88bff6505b5a1395045793b5ecf6a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant39c3341cf3ead6815f3e29867663779b301b383ca930cffb4afc231d84fbc4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91402943-1111-7603-adb9-d07c32fa9d01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–880.

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

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant39c3341cf3ead6815f3e29867663779b301b383ca930cffb4afc231d84fbc4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant39c3341cf3ead6815f3e29867663779b301b383ca930cffb4afc231d84fbc4a8.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1df34599943dc6fffd37bf2255cf8efce0ed244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
