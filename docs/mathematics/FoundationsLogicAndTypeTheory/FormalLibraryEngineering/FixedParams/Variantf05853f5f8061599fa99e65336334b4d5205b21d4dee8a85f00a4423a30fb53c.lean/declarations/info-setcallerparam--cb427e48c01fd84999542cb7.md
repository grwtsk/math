# Info.setCallerParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:454e027c9a18335a20a9f92cc172f5144e5514af6fe098b80121b28760ba230d",
  "kind": "def",
  "lexical_name": "Info.setCallerParam",
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
  "slug": "info-setcallerparam--cb427e48c01fd84999542cb7",
  "source": {
    "blob": "afeecda5628ed5e7fd48e4a45c2eabe4757a8f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb427e48c01fd84999542cb7d63cc5ae2000b6022dea0739b95a72df800a474c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:454e027c9a18335a20a9f92cc172f5144e5514af6fe098b80121b28760ba230d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Info.setCallerParam (calleeIdx argIdx callerIdx paramIdx : Nat) (info : Info) : Info :=
  if info.mayBeFixed calleeIdx argIdx then
    if info.mayBeFixed callerIdx paramIdx then
      if let some paramIdx' := info.getCallerParam? calleeIdx argIdx callerIdx then
      -- We already have an etry
      if paramIdx = paramIdx' then
        -- all good
        info
      else
        -- Inconsistent information
        info.setVarying calleeIdx argIdx
    else
      -- Set the new entry
      let info := { info with graph := info.graph.modify calleeIdx (·.modify argIdx (·.map (·.set! callerIdx (some paramIdx)))) }
      Id.run do
        -- Propagate information about the caller
        let mut info : Info := info
        if let some callerParamInfo := info.graph[callerIdx]![paramIdx]! then
          for h : otherFunIdx in *...callerParamInfo.size do
            if let some otherParamIdx := callerParamInfo[otherFunIdx] then
              info := info.setCallerParam calleeIdx argIdx otherFunIdx otherParamIdx
        -- Propagate information about the callee
        for otherFunIdx in *...info.graph.size do
          for otherArgIdx in *...info.graph[otherFunIdx]!.size do
            if let some otherArgsInfo := info.graph[otherFunIdx]![otherArgIdx]! then
              if let some paramIdx' := otherArgsInfo[calleeIdx]! then
                if paramIdx' = argIdx then
                  info := info.setCallerParam otherFunIdx otherArgIdx callerIdx paramIdx

        return info
    else
      -- Param not fixed, so argument isn't either
      info.setVarying calleeIdx argIdx
  else
    info

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variantf05853f5f8061599fa99e65336334b4d5205b21d4dee8a85f00a4423a30fb53c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afeecda5628ed5e7fd48e4a45c2eabe4757a8f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
