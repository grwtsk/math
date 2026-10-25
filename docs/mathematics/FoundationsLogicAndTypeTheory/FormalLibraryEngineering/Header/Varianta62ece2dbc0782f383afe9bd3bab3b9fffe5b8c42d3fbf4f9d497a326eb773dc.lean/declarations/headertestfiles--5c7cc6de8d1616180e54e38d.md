# headerTestFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36cdb1d68201b5cdbd1e4a3fd8e9a25c0d9213a492ea4627048fbc0c3fd3a138",
  "kind": "def",
  "lexical_name": "headerTestFiles",
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
  "slug": "headertestfiles--5c7cc6de8d1616180e54e38d",
  "source": {
    "blob": "abd960abeda6005b98bdb695ea71798fb6d11fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 283,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c7cc6de8d1616180e54e38d004541fc965b42c7993674fd69b5c22e6d90f390",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36cdb1d68201b5cdbd1e4a3fd8e9a25c0d9213a492ea4627048fbc0c3fd3a138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def headerTestFiles : NameSet := .ofList [
  `MathlibTest.Linter.Header.Basic,
  `MathlibTest.Linter.Header.Fail,
  `MathlibTest.Linter.Header.Verso,
  `MathlibTest.DirectoryDependencyLinter.Test]

/-- Check the `Syntax` `imports` for broad imports:
`Mathlib.Tactic`, any import starting with `Lake`, or `Mathlib.Tactic.{Have,Replace}`.

This currently returns without logging if `mainModule` is not in `Mathlib` (nor the linter's test
files). TODO: make this extensible for use in other libraries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Varianta62ece2dbc0782f383afe9bd3bab3b9fffe5b8c42d3fbf4f9d497a326eb773dc.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd960abeda6005b98bdb695ea71798fb6d11fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
