# shiftLeftZeroExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e752d9c83e1a90fd3edfcd4979d540d086f8f22307feb5dc7d7ca11796d461a9",
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
  "slug": "shiftleftzeroextend--2896fca7cdcad2f5fccbb3f5",
  "source": {
    "blob": "3defd9aa7a63c2d48365bbd3b84bd10607816737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 479,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta5f6e8e93e0b730c7733370f42221a91ce61190b2b64e5b7cc4c6560044cfa8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2896fca7cdcad2f5fccbb3f51af849fd15876bd6d41b91b7b6af84c63362ead7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta5f6e8e93e0b730c7733370f42221a91ce61190b2b64e5b7cc4c6560044cfa8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e752d9c83e1a90fd3edfcd4979d540d086f8f22307feb5dc7d7ca11796d461a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftLeftZeroExtend (msbs : BitVec w) (m : Nat) : BitVec (w + m) :=
  let shiftLeftLt {x : Nat} (p : x < 2^w) (m : Nat) : x <<< m < 2^(w + m) := by
        simp [Nat.shiftLeft_eq, Nat.pow_add]
        apply Nat.mul_lt_mul_of_pos_right p
        exact (Nat.two_pow_pos m)
  (msbs.toNat <<< m)#'(shiftLeftLt msbs.isLt m)


/--
Transforms a bitvector of length `w` into a bitvector of length `v`, padding with `0` as needed.

The specific behavior depends on the relationship between the starting width `w` and the final width
`v`:
 * If `v > w`, it is zero-extended; the high bits are padded with zeroes until the bitvector has `v`
   bits.
 * If `v = w`, the bitvector is returned unchanged.
 * If `v < w`, the high bits are truncated.

`BitVec.setWidth`, `BitVec.zeroExtend`, and `BitVec.truncate` are aliases for this operation.

SMT-LIB name: `zero_extend`.
-/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta5f6e8e93e0b730c7733370f42221a91ce61190b2b64e5b7cc4c6560044cfa8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta5f6e8e93e0b730c7733370f42221a91ce61190b2b64e5b7cc4c6560044cfa8e.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3defd9aa7a63c2d48365bbd3b84bd10607816737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
