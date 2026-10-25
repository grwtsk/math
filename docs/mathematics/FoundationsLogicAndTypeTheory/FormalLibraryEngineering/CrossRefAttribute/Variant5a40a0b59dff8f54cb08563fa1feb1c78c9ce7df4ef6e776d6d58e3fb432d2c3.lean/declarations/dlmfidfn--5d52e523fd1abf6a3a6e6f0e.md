# dlmfIdFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7616605d499eeb8335f66f7292f75a0a60536eef6d30cb540732aaac3631c4d5",
  "kind": "def",
  "lexical_name": "dlmfIdFn",
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
  "slug": "dlmfidfn--5d52e523fd1abf6a3a6e6f0e",
  "source": {
    "blob": "d0d3824e33ba434ed33cc7d6f7e5ff91baa799f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d52e523fd1abf6a3a6e6f0eb8ef295334ca5132572dcec6974770abbb27229d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7616605d499eeb8335f66f7292f75a0a60536eef6d30cb540732aaac3631c4d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dlmfIdFn : ParserFn := fun c s =>
  let i := s.pos
  let s := takeWhileFn (fun c => c.isAlphanum || c == '.' || c == '_') c s
  if s.hasError then
    s
  else if s.pos == i then
    ParserState.mkError s "dlmf id"
  else
    if !(c.extract i s.pos).toList.all
      (fun c => c ∈ ['i', 'v', 'x', 'l', 'c', 'd', 'm', 'E', 'F', 'T', '.', '_'] || c.isDigit) then
      ParserState.mkUnexpectedError s
        "DLMF references must consist only of (lowercase) roman numerals, the letters E/T/F, \
         digits, periods, and underscores."
    else
      mkNodeToken dlmfIdKind i true c s

@[inherit_doc dlmfIdFn]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossRefAttribute/Variant5a40a0b59dff8f54cb08563fa1feb1c78c9ce7df4ef6e776d6d58e3fb432d2c3.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d3824e33ba434ed33cc7d6f7e5ff91baa799f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
