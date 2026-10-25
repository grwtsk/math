# collideThreads

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c7b8ffb1e8e7a91ad8ac6b13ebd3b25b955cc72b0122bbaeb3db555aa9fce79",
  "kind": "def",
  "lexical_name": "collideThreads",
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
  "slug": "collidethreads--76dc0a91414591a584c8c4ff",
  "source": {
    "blob": "cd0d7668cdb9b297b9b9ea1d793b4ce4e993e55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76dc0a91414591a584c8c4fff1186cff04a1d72997e973aa212452dd606784a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c7b8ffb1e8e7a91ad8ac6b13ebd3b25b955cc72b0122bbaeb3db555aa9fce79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collideThreads (thread : ThreadWithCollideMaps) (add : Thread) :
    ThreadWithCollideMaps :=
  StateT.run collideSamples thread |>.2
where
  collideSamples : StateM ThreadWithCollideMaps Unit := do
    for oldSampleIdx in *...add.samples.length do
      let oldStackIdx := add.samples.stack[oldSampleIdx]!
      let stackIdx ← collideStacks oldStackIdx
      modify fun thread =>
        if let some idx := thread.sampleMap[stackIdx]? then
          -- imperative to preserve linear use of arrays here!
          let ⟨⟨⟨t1, t2, t3, samples, t5, t6, t7, t8, t9, t10, t11⟩, o2, o3, o4, o5⟩, o6⟩ := thread
          let ⟨s1, s2, weight, s3, s4, s5⟩ := samples
          let weight := weight.set! idx <| weight[idx]! + add.samples.weight[oldSampleIdx]!
          let samples := ⟨s1, s2, weight, s3, s4, s5⟩
          ⟨⟨⟨t1, t2, t3, samples, t5, t6, t7, t8, t9, t10, t11⟩, o2, o3, o4, o5⟩, o6⟩
        else
          -- imperative to preserve linear use of arrays here!
          let ⟨⟨⟨t1, t2, t3, samples, t5, t6, t7, t8, t9, t10, t11⟩, o2, o3, o4, o5⟩, sampleMap⟩ :=
            thread
          let ⟨stack, time, weight, _, threadCPUDelta, length⟩ := samples
          let samples := {
              stack := stack.push stackIdx
              time := time.push time.size.toFloat
              weight := weight.push add.samples.weight[oldSampleIdx]!
              threadCPUDelta := threadCPUDelta.push 1.0
              length := length + 1
            }
          let sampleMap := sampleMap.insert stackIdx sampleMap.size
          ⟨⟨⟨t1, t2, t3, samples, t5, t6, t7, t8, t9, t10, t11⟩, o2, o3, o4, o5⟩, sampleMap⟩
  collideStacks oldStackIdx : StateM ThreadWithCollideMaps Nat := do
    let oldParentStackIdx? := add.stackTable.prefix[oldStackIdx]!
    let parentStackIdx? ← oldParentStackIdx?.mapM (collideStacks ·)
    let oldFrameIdx := add.stackTable.frame[oldStackIdx]!
    let oldFuncIdx := add.frameTable.func[oldFrameIdx]!
    let oldStrIdx := add.funcTable.name[oldFuncIdx]!
    let strIdx ← getStrIdx add.stringArray[oldStrIdx]!
    let funcIdx ← modifyGet fun thread =>
      if let some idx := thread.funcMap[strIdx]? then
        (idx, thread)
      else
        (thread.funcMap.size, { thread with
          funcTable := {
            name := thread.funcTable.name.push strIdx
            resource := thread.funcTable.resource.push (-1)
            fileName := thread.funcTable.fileName.push none
            lineNumber := thread.funcTable.lineNumber.push none
            columnNumber := thread.funcTable.columnNumber.push none
            length := thread.funcTable.length + 1
          }
          frameTable := thread.frameTable.push {
            func := thread.funcMap.size
          }
          funcMap := thread.funcMap.insert strIdx thread.funcMap.size })
    let frameIdx := funcIdx
    modifyGet fun thread =>
      if let some idx := thread.stackMap[(frameIdx, parentStackIdx?)]? then
        (idx, thread)
      else
        (thread.stackMap.size,
          let ⟨⟨⟨t1,t2, t3, t4, t5, stackTable, t7, t8, t9, t10, t11⟩, o2, o3, stackMap, o5⟩, o6⟩ :=
            thread
          let { frame, «prefix», category, subcategory, length } := stackTable
          let stackTable := {
            frame := frame.push frameIdx
            «prefix» := prefix.push parentStackIdx?
            category := category.push add.stackTable.category[oldStackIdx]!
            subcategory := subcategory.push add.stackTable.subcategory[oldStackIdx]!
            length := length + 1
          }
          let stackMap := stackMap.insert (frameIdx, parentStackIdx?) stackMap.size
          ⟨⟨⟨t1,t2, t3, t4, t5, stackTable, t7, t8, t9, t10, t11⟩, o2, o3, stackMap, o5⟩, o6⟩)
  getStrIdx (s : String) :=
    modifyGet fun thread =>
      if let some idx := thread.stringMap[s]? then
        (idx, thread)
      else
        (thread.stringMap.size, { thread with
          stringArray := thread.stringArray.push s
          stringMap := thread.stringMap.insert s thread.stringMap.size })

/--
Merges given profiles such that samples with identical stacks are deduplicated by adding up their
weights. Minimizes profile size while preserving per-stack timing information.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profiler/Variant4a52c749aaf11c299d5e8a9b390ff5aa8191471ed23fe4645e052ce9a21a37a8.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd0d7668cdb9b297b9b9ea1d793b4ce4e993e55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
