# parsePath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9dca10fa9fe4089753f9c7ebcc765d700d3aa55bcddb1006bc3c70be3c93611",
  "kind": "def",
  "lexical_name": "parsePath",
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
  "slug": "parsepath--081346dde28869df6fd33ceb",
  "source": {
    "blob": "d874748b11e27c0d4d0ca150008a9797955adb80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:081346dde28869df6fd33ceb0e492ae86fe20badbc39a16784483863bfce0a2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9dca10fa9fe4089753f9c7ebcc765d700d3aa55bcddb1006bc3c70be3c93611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parsePath (config : URI.Config) (forceAbsolute : Bool) (allowEmpty : Bool) : Parser URI.Path := do
  let isPathDelimiter : UInt8 → Bool := fun c => c = '?'.toUInt8 ∨ c = '#'.toUInt8
  let mut isAbsolute := false
  let mut segments : Array _ := #[]
  let mut totalLength := 0

  let isSegmentOrSlash ←
    peekIs (fun c => isPChar c ∨ c = '%'.toUInt8 ∨ c = '/'.toUInt8)

  if ¬allowEmpty ∧ ((← isEof) ∨ ¬isSegmentOrSlash) then
    fail "need a path"

  -- Check if path is absolute
  if ← peekIs (· == '/'.toUInt8) then
    isAbsolute := true
    totalLength := totalLength + 1
    skip
  else if forceAbsolute then
    if allowEmpty ∧ ((← isEof) ∨ ¬isSegmentOrSlash) then
      return { segments := segments, absolute := isAbsolute }
    else
      fail "require '/' in path"
  else
    pure ()

  -- Parse segments
  while (← peek?).isSome do
    let some next := (← peek?) | break
    if isPathDelimiter next then
      break

    if ¬(next = '/'.toUInt8 ∨ isPChar next ∨ next = '%'.toUInt8) then
      break

    if segments.size >= config.maxPathSegments then
      fail s!"too many path segments (limit: {config.maxPathSegments})"

    let segmentBytes ← parseSegment config
    let some segmentStr := URI.EncodedSegment.ofByteArray? segmentBytes.toByteArray
      | fail "invalid percent encoding in path segment"

    totalLength := totalLength + segmentBytes.size
    if totalLength > config.maxTotalPathLength then
      fail s!"path too long (limit: {config.maxTotalPathLength} bytes)"

    segments := segments.push segmentStr

    if (← peek?).any (· == '/'.toUInt8) then
      totalLength := totalLength + 1
      if totalLength > config.maxTotalPathLength then
        fail s!"path too long (limit: {config.maxTotalPathLength} bytes)"
      skip
      -- If path ends with '/', add empty segment
      let next ← peek?
      if next.isNone || next.any isPathDelimiter then
        if segments.size >= config.maxPathSegments then
          fail s!"too many path segments (limit: {config.maxPathSegments})"
        segments := segments.push (URI.EncodedString.empty)
    else
      break

  return { segments := segments, absolute := isAbsolute }

-- query = *( pchar / "/" / "?" )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d874748b11e27c0d4d0ca150008a9797955adb80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
