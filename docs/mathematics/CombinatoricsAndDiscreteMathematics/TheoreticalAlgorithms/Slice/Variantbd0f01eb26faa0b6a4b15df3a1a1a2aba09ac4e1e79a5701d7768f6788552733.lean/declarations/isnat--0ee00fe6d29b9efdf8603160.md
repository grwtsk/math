# isNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:645cf541f7ef5917fd42c08cc65c05b78f9c56aaffff2479e41e4795560f8fca",
  "kind": "def",
  "lexical_name": "isNat",
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
  "slug": "isnat--0ee00fe6d29b9efdf8603160",
  "source": {
    "blob": "13fb4183504a6263ed40f5bfcdad5402e4148056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1021,
    "line": 984,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ee00fe6d29b9efdf8603160ba693dda1373797e411974f658d3dcb1c20a73fd",
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

Occurrence: `declaration:645cf541f7ef5917fd42c08cc65c05b78f9c56aaffff2479e41e4795560f8fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 984–1021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isNat (s : Slice) : Bool := Id.run do
  let mut lastWasDigit := false

  for c in s do
    if c = '_' then
      if !lastWasDigit then
        return false
      lastWasDigit := false
    else if c.isDigit then
      lastWasDigit := true
    else
      return false

  return lastWasDigit

/--
Interprets a slice as the decimal representation of a natural number, returning it. Returns
{name}`none` if the slice does not contain a decimal natural number.

A slice can be interpreted as a decimal natural number if it is not empty and all the characters in
it are digits. Underscores ({lit}`_`) are allowed as digit separators and are ignored during parsing.

Use {name}`isNat` to check whether {name}`toNat?` would return {name}`some`.
{name (scope := "Init.Data.String.Slice")}`toNat!` is an alternative that panics instead of
returning {name}`none` when the slice is not a natural number.

Examples:
 * {lean}`"".toSlice.toNat? = none`
 * {lean}`"0".toSlice.toNat? = some 0`
 * {lean}`"5".toSlice.toNat? = some 5`
 * {lean}`"587".toSlice.toNat? = some 587`
 * {lean}`"1_000".toSlice.toNat? = some 1000`
 * {lean}`"100_000_000".toSlice.toNat? = some 100000000`
 * {lean}`"-587".toSlice.toNat? = none`
 * {lean}`" 5".toSlice.toNat? = none`
 * {lean}`"2+3".toSlice.toNat? = none`
 * {lean}`"0xff".toSlice.toNat? = none`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean#L984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13fb4183504a6263ed40f5bfcdad5402e4148056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
