# collectGoalStatsIfEnabled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e00b710ae358012179aec7b698fcdb419a6010b485b0d6437515d5216e21b797",
  "kind": "def",
  "lexical_name": "collectGoalStatsIfEnabled",
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
  "slug": "collectgoalstatsifenabled--0739acd843d6ee176dd747e7",
  "source": {
    "blob": "14c4b61d662a64b7efb36da842e1940954cb3dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stats/Variant462bf33d308c4e2bffa7278f9ee54bdace966e71436ecd96af41437de73e4cec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0739acd843d6ee176dd747e78d0c4a7f5b6e72b9dfdec0c42f6a14452d56ccc0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stats/Variant462bf33d308c4e2bffa7278f9ee54bdace966e71436ecd96af41437de73e4cec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e00b710ae358012179aec7b698fcdb419a6010b485b0d6437515d5216e21b797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectGoalStatsIfEnabled : TreeM Unit := do
  if ← enableStats then
    let go : StateRefT (Array GoalStats) TreeM Unit :=
      postTraverseDown
        (fun gref => do
          let stats ← (← gref.get).stats
          modify (·.push stats))
        (fun _rref => return)
        (fun _cref => return)
        (.mvarCluster (← getThe Tree).root)
    let goalStats ← (·.2) <$> go.run #[]
    modifyStats ({ · with goalStats })

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stats/Variant462bf33d308c4e2bffa7278f9ee54bdace966e71436ecd96af41437de73e4cec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stats/Variant462bf33d308c4e2bffa7278f9ee54bdace966e71436ecd96af41437de73e4cec.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14c4b61d662a64b7efb36da842e1940954cb3dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
