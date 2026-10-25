# isLevelDefEqAuxImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d491d928b80cbd779178bf5fc7802af13c6f07e783ea51d69639b23dc9cdf4d",
  "kind": "def",
  "lexical_name": "isLevelDefEqAuxImpl",
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
  "slug": "isleveldefeqauximpl--a78f9be46e45b06ff256f715",
  "source": {
    "blob": "637f855c5e7ffc15a48f1e6c47d932f250e0dfa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a78f9be46e45b06ff256f715828935793059d8173516305dd2499efc2f702338",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d491d928b80cbd779178bf5fc7802af13c6f07e783ea51d69639b23dc9cdf4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def isLevelDefEqAuxImpl : Level → Level → MetaM Bool
    | Level.succ lhs, Level.succ rhs => isLevelDefEqAux lhs rhs
    | lhs, rhs => do
      withTraceNodeBefore `Meta.isLevelDefEq (fun _ =>
          withOptions (·.set `pp.instantiateMVars false) do addMessageContext m!"{lhs} =?= {rhs}") do
      if lhs.getLevelOffset == rhs.getLevelOffset then
        return lhs.getOffset == rhs.getOffset
      else
        let lhs' ← instantiateLevelMVars lhs
        let lhs' := lhs'.normalize
        let rhs' ← instantiateLevelMVars rhs
        let rhs' := rhs'.normalize
        if lhs != lhs' || rhs != rhs' then
          isLevelDefEqAux lhs' rhs'
        else
          let r ← solve lhs rhs;
          if r != LBool.undef then
            return r == LBool.true
          else
            let r ← solve rhs lhs;
            if r != LBool.undef then
              return r == LBool.true
            else if !(← hasAssignableLevelMVar lhs <||> hasAssignableLevelMVar rhs) then
              let cfg ← getConfig
              if cfg.isDefEqStuckEx && (lhs.isMVar || rhs.isMVar) then do
                trace[Meta.isLevelDefEq.stuck] "{lhs} =?= {rhs}"
                Meta.throwIsDefEqStuck
              else
                return false
            else
              postponeIsLevelDefEq lhs rhs
              return true
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelDefEq/Variantbf60149811359226d318e8b6522e7a35d93646c6f8e891ea589e48e0bfe8d227.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `637f855c5e7ffc15a48f1e6c47d932f250e0dfa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
