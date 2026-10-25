# delabCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea4592446deee0114fd77587cd5fd3000d64448f8cbcc10e19c9cbf44d02c0a",
  "kind": "def",
  "lexical_name": "delabCore",
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
  "slug": "delabcore--091faf49529d7f81ab9fc94e",
  "source": {
    "blob": "283cf16e25e162ee5e354b95853b4d79f7b7835d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:091faf49529d7f81ab9fc94e88d623165b986e869e7a00bad341a98737b4386b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea4592446deee0114fd77587cd5fd3000d64448f8cbcc10e19c9cbf44d02c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabCore (e : Expr) (optionsPerPos : OptionsPerPos := {}) (delab : DelabM α) :
    MetaM (α × PosMap Elab.Info) := do
  /- Using `erasePatternAnnotations` here is a bit hackish, but we do it
     `Expr.mdata` affects the delaborator. TODO: should we fix that? -/
  let e ← Meta.erasePatternRefAnnotations e
  trace[PrettyPrinter.delab.input] "{Std.format e}"
  let mut opts ← getOptions
  -- default `pp.proofs` to `true` if `e` is a proof
  if pp.proofs.get? opts == none &&
      -- necessary for `delabConstWithSignature`, and harmless otherwise
      !e.isConst then
    try if ← Meta.isProof e then opts := pp.proofs.set opts true
    catch _ => pure ()
  withOptions (fun _ => opts) do
    let e ← if getPPInstantiateMVars opts then instantiateMVars e else pure e
    let e ← if getPPBeta opts then Core.betaReduce e else pure e
    let optionsPerPos ←
      if !getPPAll opts && getPPAnalyze opts && optionsPerPos.isEmpty then
        topDownAnalyze e
      else pure optionsPerPos
    let (stx, {infos := infos, ..}) ← catchInternalId Delaborator.delabFailureId
        -- Clear the ref to ensure that quotations in delaborators start with blank source info.
        (MonadRef.withRef .missing delab
          { optionsPerPos := optionsPerPos
            currNamespace := (← getCurrNamespace)
            openDecls := (← getOpenDecls)
            subExpr := SubExpr.mkRoot e
            inPattern := opts.getInPattern
            lctxInitIndices := (← getLCtx).numIndices }
          |>.run { : Delaborator.State })
        (fun _ => unreachable!)
    return (stx, infos)

/-- "Delaborate" the given term into surface-level syntax using the default and given subterm-specific options. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283cf16e25e162ee5e354b95853b4d79f7b7835d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
