# shiftLeftZeroExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:825b23cbcccd3b7111c837e0578bb1add8ea4a8697c618001a095ebfd35fa912",
  "kind": "def",
  "lexical_name": "shiftLeftZeroExtend",
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
  "slug": "shiftleftzeroextend--76f42e47edf459a4155a7a5d",
  "source": {
    "blob": "4819fdc345bad844337e9dc990a19cce2f6be02e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76f42e47edf459a4155a7a5d769df9e8013c79c3fd1b376b45f117f94a70d016",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:825b23cbcccd3b7111c837e0578bb1add8ea4a8697c618001a095ebfd35fa912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftLeftZeroExtend (msbs : BitVec w) (m : Nat) : BitVec (w+m) :=
  let shiftLeftLt {x : Nat} (p : x < 2^w) (m : Nat) : x <<< m < 2^(w+m) := by
        simp [Nat.shiftLeft_eq, Nat.pow_add]
        apply Nat.mul_lt_mul_of_pos_right p
        exact (Nat.pow_two_pos m)
  ⟨msbs.toNat <<< m, shiftLeftLt msbs.isLt m⟩

/--
Concatenation of bitvectors. This uses the "big endian" convention that the more significant
input is on the left, so `0xAB#8 ++ 0xCD#8 = 0xABCD#16`.

SMT-Lib name: `concat`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e4a3a9a4a9b891be3d80e6a10a1efccbc23c08b9c581a496e81d99cea33ba99.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4819fdc345bad844337e9dc990a19cce2f6be02e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
