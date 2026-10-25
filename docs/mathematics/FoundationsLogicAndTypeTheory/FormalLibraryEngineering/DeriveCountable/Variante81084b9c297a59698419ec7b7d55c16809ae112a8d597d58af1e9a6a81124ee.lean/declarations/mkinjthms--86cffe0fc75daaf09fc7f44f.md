# mkInjThms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86106775a82c6a0defbf15650afb932f6a0f0161912b818f87e5ec8813a53486",
  "kind": "def",
  "lexical_name": "mkInjThms",
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
  "slug": "mkinjthms--86cffe0fc75daaf09fc7f44f",
  "source": {
    "blob": "3b9e61bd1056e534bf5dfcbd97dd94b027ace064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86cffe0fc75daaf09fc7f44f70ebb3d87ade533bd0bf9d3e54a6856d18db9d02",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86106775a82c6a0defbf15650afb932f6a0f0161912b818f87e5ec8813a53486`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInjThms (ctx : Deriving.Context) (toNatFnNames : Array Name) :
    TermElabM (TSyntax `command) := do
  let mut res : Array (TSyntax `command) := #[]
  for i in [:toNatFnNames.size] do
    let toNatFnName := toNatFnNames[i]!
    let injThmName := ctx.auxFunNames[i]!
    let indVal := ctx.typeInfos[i]!
    let header ← mkHeader ``Countable 2 indVal
    let body ← mkInjThmMatch ctx header indVal
    let f := mkIdent toNatFnName
    let t1 := mkIdent header.targetNames[0]!
    let t2 := mkIdent header.targetNames[1]!
    res := res.push <| ← `(
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variante81084b9c297a59698419ec7b7d55c16809ae112a8d597d58af1e9a6a81124ee.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9e61bd1056e534bf5dfcbd97dd94b027ace064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
