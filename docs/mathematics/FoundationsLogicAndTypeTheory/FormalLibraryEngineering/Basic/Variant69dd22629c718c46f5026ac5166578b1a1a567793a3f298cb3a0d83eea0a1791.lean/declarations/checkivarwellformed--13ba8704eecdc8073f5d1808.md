# checkIVarWellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc6462959a74dd7081f4a1742475880f7feb41b2174721340d51ed9ed2fca635",
  "kind": "def",
  "lexical_name": "checkIVarWellFormed",
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
  "slug": "checkivarwellformed--13ba8704eecdc8073f5d1808",
  "source": {
    "blob": "ab27c7bc76c79d493606228a4548f47711120e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13ba8704eecdc8073f5d1808d31e7b1f5c6510f9665c7665e9221a2df818236e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc6462959a74dd7081f4a1742475880f7feb41b2174721340d51ed9ed2fca635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkIVarWellFormed (localContext : LocalContext) (iExpr : IExpr) : MetaM Unit := do
  let ⟨iType, e⟩ := iExpr
  unless ← MetavarContext.isWellFormed localContext e do
    throwError "Cannot create an inclusion variable for {e} because it depends on variables \
      introduced while constructing the inclusion"
  unless ← MetavarContext.isWellFormed localContext iType.elemType do
    throwError "Cannot create an inclusion variable for {e} because its type depends on \
      variables introduced while constructing the inclusion"
  unless ← MetavarContext.isWellFormed localContext iType.setType do
    throwError "Cannot use set type {iType.setType} for {e} because it depends on \
      variables introduced while constructing the inclusion"

open PrettyPrinter Delaborator SubExpr in
/-- Delaborate an inclusion set variable as `I[e]`. -/
@[delab mdata.Inclusion.Internal.iVarDisplay]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab27c7bc76c79d493606228a4548f47711120e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
