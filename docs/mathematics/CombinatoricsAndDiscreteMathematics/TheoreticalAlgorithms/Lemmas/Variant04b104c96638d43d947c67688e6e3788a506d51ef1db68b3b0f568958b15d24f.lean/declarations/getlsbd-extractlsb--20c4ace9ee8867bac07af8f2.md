# getLsbD_extractLsb'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:595b8003-c3fa-4d5b-19ef-a6da50336766",
  "kind": "theorem",
  "lexical_name": "getLsbD_extractLsb'",
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
  "slug": "getlsbd-extractlsb--20c4ace9ee8867bac07af8f2",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1203,
    "line": 1143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c4ace9ee8867bac07af8f26bb989d7e74162e0c91423cc25561c0c38aadfa7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595b8003-c3fa-4d5b-19ef-a6da50336766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1143–1203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem getLsbD_extractLsb' (start len : Nat) (x : BitVec n) (i : Nat) :
    (extractLsb' start len x).getLsbD i = (i < len && x.getLsbD (start+i)) := by
  simp [getLsbD]

/--
Get the most significant bit after `extractLsb'`. With `extractLsb'`, we extract
a `BitVec len` `x'` with length `len` from `BitVec w` `x`, starting from the
element at position `start`. The function `getMsb` extracts a bit counting from
the most significant bit. Assuming certain conditions,
`(@extractLsbD' w x start len).getMsbD i` is equal to
`@getMsbD w x (w - (start + len - i))`.

Example (w := 10, start := 3, len := 4):

                                |---| = w - (start + len) = 3
                                      |start + len|       = 7
                                            |start|       = 3
                                      | len |             = 4
let x                       =   9 8 7 6 5 4 3 2 1 0
let x' = x.extractLsb' 3 4  =         6 5 4 3
                                      | |
                                      | x'.getMsbD 1 =
                                        x.getMsbD (i := w - (start + len - i) = 10 - (3 + 4 - 1) = 4)
                                      |
                                      x'.getMsbD 0 =
                                      x.getMsbD (i := w - (start + len - i) = 10 - (3 + 4 - 0) = 3)

# Condition 1: `i < len`

The index `i` must be within the range of `len`.

# Condition 2: `start + len - i ≤ w`

If `start + len` is larger than `w`, the high bits at `i` with `w ≤ i` are filled with 0,
meaning that `getMsbD[i] = false` for these `i`.
If `i` is large enough, `getMsbD[i]` is again within the bounds `x`.
The precise condition is:

  `start + len - i ≤ w`

Example (w := 10, start := 7, len := 5):

                                    |= w - (start + len)    = 0
                                |      start + len    |     = 12
                                        |    start    |     = 7
                                |  len  |                   = 5
let x                       =       9 8 7 6 5 4 3 2 1 0
let x' = x.extractLsb' 7 5  =   _ _ 9 8 7
                                |   |
                                |   x'.getMsbD (i := 2) =
                                |   x.getMsbD (i := w - (start + len - i) = 10 - (7 + 5 - 2)) =
                                |   x.getMsbD 0
                                |   ✅ start + len - i ≤ w
                                |        7 + 5 - 2 = 10 ≤ 10
                                |
                                x'.getMsbD (i := 0) =
                                x.getMsbD (i := w - (start + len - i) = 10 - (7 + 5 - 0)) =
                                x.getMsbD (i := w - (start + len - i) = x.getMsbD (i := -2) -- in Nat becomes 0
                                ❌ start + len - i ≤ w
                                     7 + 5 - 0 ≤ w
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L1143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
