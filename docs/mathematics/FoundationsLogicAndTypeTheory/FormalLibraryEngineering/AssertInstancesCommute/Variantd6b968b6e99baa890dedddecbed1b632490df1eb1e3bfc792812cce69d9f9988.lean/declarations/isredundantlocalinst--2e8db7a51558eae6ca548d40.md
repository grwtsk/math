# isRedundantLocalInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b1464a5c14ea909fea987dc063670f55a2bdb60f5c3b2127a2b2573fb7b3a1a",
  "kind": "def",
  "lexical_name": "isRedundantLocalInst?",
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
  "slug": "isredundantlocalinst--2e8db7a51558eae6ca548d40",
  "source": {
    "blob": "25212d19c86424a4670f66ba9e8e4926bbf1a3f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e8db7a51558eae6ca548d4077bcf80d91ad4db060a6408697383743e2302d2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b1464a5c14ea909fea987dc063670f55a2bdb60f5c3b2127a2b2573fb7b3a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def isRedundantLocalInst? (inst : FVarId) : MetaM (Option Expr) := do
  let ldecl ← inst.getDecl
  if ldecl.hasValue then return none
  let rest := (← getLocalInstances).filter (·.fvar != .fvar inst)
  withLCtx (← getLCtx) rest do
  let some inst ← synthInstance? ldecl.type | return none
  return if (← makeDefEq ldecl.toExpr inst).isSome then inst else none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssertInstancesCommute/Variantd6b968b6e99baa890dedddecbed1b632490df1eb1e3bfc792812cce69d9f9988.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25212d19c86424a4670f66ba9e8e4926bbf1a3f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
