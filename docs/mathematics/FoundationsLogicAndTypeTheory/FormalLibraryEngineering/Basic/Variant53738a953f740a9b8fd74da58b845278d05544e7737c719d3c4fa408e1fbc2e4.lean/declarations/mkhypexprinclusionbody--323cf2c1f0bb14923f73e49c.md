# mkHypExprInclusionBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72da2d39c902f6827290537fa34c93f2d36bf993b431ecb3497c490a5925f156",
  "kind": "def",
  "lexical_name": "mkHypExprInclusionBody",
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
  "slug": "mkhypexprinclusionbody--323cf2c1f0bb14923f73e49c",
  "source": {
    "blob": "a21596c5fd171d93ebb749eefa4d31c2a0e24138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:323cf2c1f0bb14923f73e49cf5f7f720857a717eb99d150f5dfcf51c923e9684",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72da2d39c902f6827290537fa34c93f2d36bf993b431ecb3497c490a5925f156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkHypExprInclusionBody (e : Expr) : HypothesisM ExprInclusionBody := do
  let ctx ← read
  let inclusionContext := { ctx.toContext with noIVars := true }
  let (body, inclusionState) ← (mkExprInclusionBody e).runWith inclusionContext
  unless inclusionState.iVars.isEmpty do
    throwError "The inclusion for {e} depends on inclusion variables"
  if body.inclusionBody.hasFVar then
    throwError "The inclusion hypothesis generated from {e} contains a free variable"
  if body.inclusionBody.hasMVar then
    throwError "The inclusion hypothesis generated from {e} contains a metavariable"
  return body

/-- Add the inclusion hypothesis `body` for `iExpr`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a21596c5fd171d93ebb749eefa4d31c2a0e24138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
