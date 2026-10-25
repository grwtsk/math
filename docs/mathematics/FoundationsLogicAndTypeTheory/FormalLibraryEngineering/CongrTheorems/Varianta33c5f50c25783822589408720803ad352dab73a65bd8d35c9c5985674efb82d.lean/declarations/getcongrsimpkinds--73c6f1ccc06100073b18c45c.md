# getCongrSimpKinds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:536c30019a84f8d406ed563bf9e23bfc3d219443e82e96c7c84877bd85ad4149",
  "kind": "def",
  "lexical_name": "getCongrSimpKinds",
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
  "slug": "getcongrsimpkinds--73c6f1ccc06100073b18c45c",
  "source": {
    "blob": "e593393d2884ed01fe5b1a6f3b325e9a9c76bd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73c6f1ccc06100073b18c45c1be920a02fc98d64b36e6fd405ef166a7cf113a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:536c30019a84f8d406ed563bf9e23bfc3d219443e82e96c7c84877bd85ad4149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCongrSimpKinds (f : Expr) (info : FunInfo) : MetaM (Array CongrArgKind) := do
  /-
  The default `CongrArgKind` is `eq`, which allows `simp` to rewrite this
  argument. However, if there are references from `i` to `j`, we cannot
  rewrite both `i` and `j`. So we must change the `CongrArgKind` at
  either `i` or `j`. In principle, if there is a dependency with `i`
  appearing after `j`, then we set `j` to `fixed` (or `cast`). But there is
  an optimization: if `i` is a subsingleton, we can fix it instead of
  `j`, since all subsingletons are equal anyway. The fixing happens in
  two loops: one for the special cases, and one for the general case.

  This method has special support for class constructors.
  For this kind of function, we treat subobject fields as regular parameters instead of instance implicit ones.
  We added this feature because of issue #1808
  -/
  let mut result := #[]
  let mask? ← getClassSubobjectMask? f
  for h : i in *...info.paramInfo.size do
    if info.resultDeps.contains i then
      result := result.push .fixed
    else if info.paramInfo[i].isProp then
      result := result.push .cast
    else if info.paramInfo[i].isInstance then
      if let some mask := mask? then
        if h2 : i < mask.size then
          if mask[i] then
            -- Parameter is a subobject field of a class constructor. See comment above.
            result := result.push .eq
            continue
      if shouldUseSubsingletonInst info result i then
        result := result.push .subsingletonInst
      else
        result := result.push .fixed
    else
      result := result.push .eq
  return fixKindsForDependencies info result

/--
Variant of `getCongrSimpKinds` for rewriting just argument 0.
If it is possible to rewrite, the 0th `CongrArgKind` is `.eq`,
and otherwise it is `.fixed`. This is used for the `arg` conv tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e593393d2884ed01fe5b1a6f3b325e9a9c76bd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
