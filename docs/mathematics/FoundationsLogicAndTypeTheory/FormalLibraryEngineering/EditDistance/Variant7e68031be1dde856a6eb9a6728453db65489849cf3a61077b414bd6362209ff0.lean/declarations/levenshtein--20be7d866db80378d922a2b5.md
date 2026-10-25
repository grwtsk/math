# levenshtein

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54460161d4f76e58c20f935454fddb2f4296b7da17827ad6e9058b58a0ad4a18",
  "kind": "def",
  "lexical_name": "levenshtein",
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
  "slug": "levenshtein--20be7d866db80378d922a2b5",
  "source": {
    "blob": "6905dc5d3dfba9e4adc6d8d1d49cf149af9067b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EditDistance/Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20be7d866db80378d922a2b50bc22e27b5bd3a2d92c4dd55525207ff87c0e419",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EditDistance/Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54460161d4f76e58c20f935454fddb2f4296b7da17827ad6e9058b58a0ad4a18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def levenshtein (str1 str2 : String) (cutoff : Nat) : Option Nat := Id.run do
  let len1 := str1.length
  let len2 := str2.length

  -- The lower bound on the Levenshtein distance is the difference in lengths
  if max len1 len2 - min len1 len2 > cutoff then return none

  let mut v0 := Vector.replicate (len2 + 1) 0
  let mut v1 := v0

  for h : i in [0:v0.size] do
    v0 := v0.set i i
  let mut iter1 := str1.startPos
  let mut i := 0
  while h1 : ¬iter1.IsAtEnd do
    v1 := v1.set 0 (i+1)
    let mut iter2 := str2.startPos
    let mut j : Fin (len2 + 1) := 0
    while h2 : ¬iter2.IsAtEnd do
      let j' : Fin (len2 + 1) := j + 1
      let deletionCost := v0[j'] + 1
      let insertionCost := v1[j] + 1
      let substCost :=
        if iter1.get h1 == iter2.get h2 then v0[j]
        else v0[j] + 1
      let cost := min (min deletionCost insertionCost) substCost
      v1 := v1.set j' cost
      iter2 := iter2.next h2
      j := j + 1
    iter1 := iter1.next h1
    i := i + 1
    -- Terminate early if it's impossible that the result is below the cutoff
    if v1.all (· > cutoff) then return none
    v0 := v1
  some v0[len2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EditDistance/Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EditDistance/Variant7e68031be1dde856a6eb9a6728453db65489849cf3a61077b414bd6362209ff0.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6905dc5d3dfba9e4adc6d8d1d49cf149af9067b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
