# mlBasicStringAuxFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5d35e64368bfc558789d601d00ed8b43af09eb8d9a5f4cd2d6bf4f0a79d6d75",
  "kind": "def",
  "lexical_name": "mlBasicStringAuxFn",
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
  "slug": "mlbasicstringauxfn--ec47cbe858fa65a3aec6168c",
  "source": {
    "blob": "583d41ebae995739c5b1d9aa489e17bb2361e870",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec47cbe858fa65a3aec6168c2fa0e9bbaa2569b20ee8a315b5e262c453cc1df1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5d35e64368bfc558789d601d00ed8b43af09eb8d9a5f4cd2d6bf4f0a79d6d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mlBasicStringAuxFn (startPos : String.Pos.Raw) (quoteDepth : Nat) : ParserFn := fun c s =>
  if h : c.atEnd s.pos then
    if quoteDepth ≥ 3 then
      s
    else
      s.mkUnexpectedErrorAt "unterminated multi-line basic string" startPos
  else
    let curr := c.get' s.pos h
    if curr == '\"' then
      let s := s.next' c s.pos h
      if quoteDepth ≥ 5 then
        s.mkUnexpectedError "too many quotes"
      else
        mlBasicStringAuxFn startPos (quoteDepth+1) c s
    else if quoteDepth ≥ 3 then
      s
    else if curr == '\n' then
      mlBasicStringAuxFn startPos 0 c (s.next' c s.pos h)
    else if curr == '\r' then
      (crlfAuxFn >> mlBasicStringAuxFn startPos 0) c (s.next' c s.pos h)
    else if curr == '\\' then
      (escapeSeqFn true >> mlBasicStringAuxFn startPos 0) c (s.next' c s.pos h)
    else if isControlChar curr then
      mkUnexpectedCharError s curr
    else
      mlBasicStringAuxFn startPos 0 c (s.next' c s.pos h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant028401f159164c441fc56ef38ff0d0d6b6fc281cabd583995809a1a897ea4626.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `583d41ebae995739c5b1d9aa489e17bb2361e870` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
