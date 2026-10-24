# parseRequestTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb75ca48ce8759a17ac031c126cc001bdc021434a3b536a5d1c3995170fb2b7a",
  "kind": "def",
  "lexical_name": "parseRequestTarget",
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
  "slug": "parserequesttarget--6d4398199fca4567b8d6a182",
  "source": {
    "blob": "d874748b11e27c0d4d0ca150008a9797955adb80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 358,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d4398199fca4567b8d6a1821193f558c6ed3f7207192ea8c5359dd5c1c9c20d",
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

Occurrence: `declaration:bb75ca48ce8759a17ac031c126cc001bdc021434a3b536a5d1c3995170fb2b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseRequestTarget (config : URI.Config := {}) : Parser RequestTarget :=
  asterisk <|> origin <|> absoluteHttp <|> authority <|> absolute
where
  -- The asterisk form
  asterisk : Parser RequestTarget := do
    skipByte '*'.toUInt8
    return .asteriskForm

  -- origin-form = absolute-path [ "?" query ]
  -- absolute-path = 1*( "/" segment )
  origin : Parser RequestTarget := attempt do
    if ← peekIs (· == '/'.toUInt8) then
      let path ← parsePath config true true
      let query ← optional (skipByte '?'.toUInt8 *> parseQuery config)

      return .originForm path query
    else
      fail "not origin"

  absoluteFromScheme (scheme : URI.Scheme) : Parser RequestTarget := do
    skipByte ':'.toUInt8
    let (auth, path) ← parseHierPart config
    let query ← optional (skipByteChar '?' *> parseQuery config)
    let query := query.getD URI.Query.empty

    return .absoluteForm { path, scheme, authority := auth, query, fragment := none }

  -- Prefer absolute-form for explicit HTTP(S) scheme targets with a path or authority.
  -- This avoids misclassifying `http://host/path` as authority-form while still
  -- letting `http:80` fall through to authority-form parsing.
  absoluteHttp : Parser RequestTarget := attempt do
    let scheme ← parseScheme config
    if scheme.val = "http" || scheme.val = "https" then
      skipByte ':'.toUInt8
      if ← peekIs (· == '/'.toUInt8) then
        let (authority, path) ← parseHierPart config
        let query ← optional (skipByteChar '?' *> parseQuery config)
        let query := query.getD .empty
        return .absoluteForm { scheme, path, authority, query, fragment := none }
      else
        fail "not http absolute uri with path"
    else
      fail "not http absolute uri"

  -- absolute-URI  = scheme ":" hier-part [ "?" query ]
  absolute : Parser RequestTarget := attempt do
    let scheme ← parseScheme config
    absoluteFromScheme scheme

  -- authority-form = host ":" port
  authority : Parser RequestTarget := attempt do
    let host ← parseHost config
    skipByteChar ':'
    let port ← parsePortNumber
    return .authorityForm { host, port := .value port }

/--
Parses an HTTP `Host` header value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant8628f629e859b755d2ff327718a23ec8c39966a39d27cc0ad591a83a8cf4c9a4.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d874748b11e27c0d4d0ca150008a9797955adb80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
