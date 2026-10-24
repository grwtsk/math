# skipSuffixWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85a63b8f369f647d66634d4e16d39e38a4781bb45573141f99eb228e250bbc4e",
  "kind": "def",
  "lexical_name": "skipSuffixWhile",
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
  "slug": "skipsuffixwhile--8e80beffa1e5db7a75f30a34",
  "source": {
    "blob": "13fb4183504a6263ed40f5bfcdad5402e4148056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 787,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e80beffa1e5db7a75f30a34542479a569412e2b2982945bb309f83412c905dd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85a63b8f369f647d66634d4e16d39e38a4781bb45573141f99eb228e250bbc4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–816.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skipSuffixWhile (s : Slice) (pat : ρ) [BackwardPattern pat] : s.Pos :=
  s.endPos.revSkipWhile pat

/--
Checks whether a slice only consists of matches of the pattern {name}`pat`, starting from the back
of the string.

Short-circuits at the first pattern mis-match.

This function is generic over all currently supported patterns.

For many types of patterns, this function can be expected to return the same result as
{name}`Slice.all`. If mismatches are expected to occur close to the end of the string, this function
might be more efficient.

For some types of patterns, this function will return a different result than {name}`Slice.all`.
Consider, for example, a pattern that matches the longest string at the given position that matches
the regular expression {lean}`"a|aa|ab"`. Then, given the input string {lean}`"aab"`, performing
{name}`Slice.all` will greedily match the prefix {lean}`"aa"` and then get stuck on the remainder
{lean}`"b"`, causing it to return {lean}`false`. On the other hand, {name}`Slice.revAll` will match
the suffix {lean}`"ab"` and then match the remainder {lean}`"a"`, so it will return {lean}`true`.

Examples:
 * {lean}`"brown".toSlice.revAll Char.isLower = true`
 * {lean}`"brown and orange".toSlice.revAll Char.isLower = false`
 * {lean}`"aaaaaa".toSlice.revAll 'a' = true`
 * {lean}`"aaaaaa".toSlice.revAll "aa" = true`
 * {lean}`"aaaaaaa".toSlice.revAll "aa" = false`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13fb4183504a6263ed40f5bfcdad5402e4148056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
