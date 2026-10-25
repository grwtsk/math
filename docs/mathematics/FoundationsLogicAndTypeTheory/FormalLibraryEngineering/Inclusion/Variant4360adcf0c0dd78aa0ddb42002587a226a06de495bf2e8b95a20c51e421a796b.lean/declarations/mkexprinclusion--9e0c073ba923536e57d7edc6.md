# mkExprInclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40b9f300f415ef2bda9583c4de02e87dba786daec2ba9ddc1bbb22db3f21ae9",
  "kind": "def",
  "lexical_name": "mkExprInclusion",
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
  "slug": "mkexprinclusion--9e0c073ba923536e57d7edc6",
  "source": {
    "blob": "1223cad97273ea2cc900b99641fabcce85447fff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variant4360adcf0c0dd78aa0ddb42002587a226a06de495bf2e8b95a20c51e421a796b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e0c073ba923536e57d7edc648940b90a265421d3e7db69ea0e8c19bb3eb6bbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variant4360adcf0c0dd78aa0ddb42002587a226a06de495bf2e8b95a20c51e421a796b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40b9f300f415ef2bda9583c4de02e87dba786daec2ba9ddc1bbb22db3f21ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkExprInclusion (output : IExpr) (body : ExprInclusionBody) : HypothesisM ExprInclusion := do
  collectHyps
  let context ← read
  let state ← get
  let coarsen? ← match context.iVars.any (·.cover?.isSome) with
    | true => some <$> output.iType.synthCoarsen
    | false => pure none
  let body ← context.iVars.foldrM (init := body) fun iVar body => do
    let hypBody ← combineHypBodies iVar.iExpr (state.inclusions[iVar.expr]?.getD #[])
    let inclusion ← mkLambdaFVars #[iVar.setVar] body.inclusionBody
      (binderInfoForMVars := .default)
    let proof ← mkLambdaFVars #[iVar.setVar, iVar.hypVar] body.proofBody
      (binderInfoForMVars := .default)
    match iVar.cover? with
    | none =>
      let inclusionBody := mkApp inclusion hypBody.inclusionBody
      let proofBody := mkAppN proof #[hypBody.inclusionBody, hypBody.proofBody]
      return { inclusionBody, proofBody }
    | some cover =>
      let coarsen := coarsen?.get!
      let inclusionBody ← iVar.mkCoverMap output.iType hypBody.inclusionBody cover coarsen inclusion
      let proofBody ← iVar.mkCoverMapProof output hypBody cover coarsen inclusion proof
      return { inclusionBody, proofBody }
  return ⟨body.inclusionBody, body.proofBody⟩

/-- Construct an `ExprInclusion` for `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variant4360adcf0c0dd78aa0ddb42002587a226a06de495bf2e8b95a20c51e421a796b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inclusion/Variant4360adcf0c0dd78aa0ddb42002587a226a06de495bf2e8b95a20c51e421a796b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1223cad97273ea2cc900b99641fabcce85447fff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
