# mkBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33ccd7c9a8106aae6f0fac8b8453a92ef415ca14a9fa9e68352e168e27db5855",
  "kind": "def",
  "lexical_name": "mkBelow",
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
  "slug": "mkbelow--bef171dd54202c33cfceb920",
  "source": {
    "blob": "a6524946d69761b748e70697dca6f2be6ca67c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bef171dd54202c33cfceb920dee3589dfc0693f7ae669e39d4e5d9240632e593",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33ccd7c9a8106aae6f0fac8b8453a92ef415ca14a9fa9e68352e168e27db5855`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBelow (indName : Name) : MetaM Unit :=
  withTraceNode `Meta.IndPredBelow (fun _ => return m!"{indName}") do
  unless (← isInductivePredicate indName) do return
  let indVal ← getConstInfoInduct indName
  if indVal.isUnsafe || !indVal.isRec then return
  let levelParams := indVal.levelParams
  let recVal ← getConstInfoRec (indName ++ `rec)
  let largeElim := recVal.levelParams.length > levelParams.length
  let t := if largeElim then recVal.instantiateTypeLevelParams [.zero] else recVal.type
  let n := recVal.numParams + recVal.numMotives + recVal.numMinors
  forallBoundedTelescope t (some n) fun as _ => do
    let params := as.extract 0 recVal.numParams
    let motives := as.extract recVal.numParams (recVal.numParams + recVal.numMotives)
    let minors := as.extract (recVal.numParams + recVal.numMotives)
    let motiveToIdx := motives.zipIdx.foldl (init := ∅) fun a (e, n) => a.insert e.fvarId! n
    let recNames := indVal.all.toArray.map (· ++ `rec) ++
      (Array.range' 1 indVal.numNested).map (indVal.all.head! ++ `rec).appendIndexAfter
    let belowNames := indVal.all.toArray.map (· ++ `below) ++
      (Array.range' 1 indVal.numNested).map (indVal.all.head! ++ `below).appendIndexAfter
    let brecOnNames := indVal.all.toArray.map (· ++ `brecOn) ++
      (Array.range' 1 indVal.numNested).map (indVal.all.head! ++ `brecOn).appendIndexAfter
    let ctx := { levelParams, largeElim, params, motives, motiveToIdx, minors, recNames, belowNames, brecOnNames }
    mkBelowInductives ctx
    mkBRecOn ctx

/--
Given `val` which corresponds to a constructor of a below inductive,
and `paramCount` which is the number of parameters in the real inductive,
return the indices of the fields corresponding to recursive calls.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant54a76e194033535768cae5403b2097fa22e60399f53b80397ea204ee3ca570e0.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6524946d69761b748e70697dca6f2be6ca67c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
