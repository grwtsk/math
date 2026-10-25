# internalizeLetDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0761d84ce8d3ff2420184c3eac831679f6a44b3f86526c753eaf162b136fd2f4",
  "kind": "def",
  "lexical_name": "internalizeLetDecl",
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
  "slug": "internalizeletdecl--c6d627600cc2b614cb1f26fb",
  "source": {
    "blob": "ccda293aa1f33c16dde8b68415cf180b211e789e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6d627600cc2b614cb1f26fbc761c4093c0f2076647d1c1f31466976153fd23d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0761d84ce8d3ff2420184c3eac831679f6a44b3f86526c753eaf162b136fd2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def internalizeLetDecl (decl : LetDecl pu) : InternalizeM pu (LetDecl pu) := do
  let binderName ← refreshBinderName decl.binderName
  let type ← internalizeExpr decl.type
  let value ← internalizeLetValue decl.value
  let fvarId ← mkNewFVarId decl.fvarId
  let decl := { decl with binderName, fvarId, type, value }
  modifyLCtx fun lctx => lctx.addLetDecl decl
  return decl

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant272c5c46b37b6fe5b39e43b9948f8192b5643fbe9d309a607a5f72e94b768e6e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccda293aa1f33c16dde8b68415cf180b211e789e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
