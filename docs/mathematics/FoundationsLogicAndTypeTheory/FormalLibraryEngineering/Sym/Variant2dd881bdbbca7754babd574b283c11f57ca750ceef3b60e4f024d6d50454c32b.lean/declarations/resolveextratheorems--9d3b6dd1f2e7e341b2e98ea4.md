# resolveExtraTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11027e84309e1b047378a364c24c3d12ecfb931adc75e717b727e8d2fb596eb9",
  "kind": "def",
  "lexical_name": "resolveExtraTheorems",
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
  "slug": "resolveextratheorems--9d3b6dd1f2e7e341b2e98ea4",
  "source": {
    "blob": "b11a26871c88b0afb4e35e9315ea5644cfb9a4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d3b6dd1f2e7e341b2e98ea4e3950806f694dfec9717e8fe00e49fef1a3f5e75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11027e84309e1b047378a364c24c3d12ecfb931adc75e717b727e8d2fb596eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveExtraTheorems (ids? :  Option (Array (TSyntax `ident))) : GrindTacticM (Array ExtraTheorem × Array Theorem) := do
  let some ids := ids? | return (#[], #[])
  let mut extras := #[]
  let mut thms := #[]
  let lctx ← getLCtx
  for id in ids do
    if let some decl := lctx.findFromUserName? id.getId then
      extras := extras.push <| .fvar decl.fvarId
      thms := thms.push (← mkTheoremFromExpr decl.toExpr)
    else
      let declName ← realizeGlobalConstNoOverload id
      extras := extras.push <| .const declName
      thms := thms.push (← mkTheoremFromDecl declName)
  return (extras, thms)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11a26871c88b0afb4e35e9315ea5644cfb9a4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
