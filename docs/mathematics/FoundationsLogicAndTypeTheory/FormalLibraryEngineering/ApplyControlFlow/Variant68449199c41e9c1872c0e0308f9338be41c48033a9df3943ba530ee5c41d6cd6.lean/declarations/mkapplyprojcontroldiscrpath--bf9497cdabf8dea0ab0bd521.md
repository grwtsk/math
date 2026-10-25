# mkApplyProjControlDiscrPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9dcec5f51d2344c3dc5122c55ab249d09ec2a145b5d659f3f845e34b9d20712",
  "kind": "def",
  "lexical_name": "mkApplyProjControlDiscrPath",
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
  "slug": "mkapplyprojcontroldiscrpath--bf9497cdabf8dea0ab0bd521",
  "source": {
    "blob": "85832ac460ae1baa58c816b019903544b29a22c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf9497cdabf8dea0ab0bd521a8262b0483cd56c10e7619db2a8ec9f19978c75d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9dcec5f51d2344c3dc5122c55ab249d09ec2a145b5d659f3f845e34b9d20712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkApplyProjControlDiscrPath (struct : Name) (structParams : Nat) (projIdx : Nat)
    (controlFlow : Name) (controlFlowParams : Nat) : Array DiscrTree.Key := Id.run do
  let stars := structParams + controlFlowParams - 1
  let mut path : Array DiscrTree.Key := Array.mkEmpty (3 + stars)
  path := path.push <| .proj struct projIdx 0
  path := path.push <| .const controlFlow controlFlowParams
  path := path.push <| .const struct structParams
  path := Nat.fold (init := path) stars (fun _ _ acc => acc.push .star)
  return path

/--
For `f`, `SomeType α β` and `ite` this function creates the path: `f (ite (SomeType _ _) _ _ _ _)`.
This path can be used to match on applications of unary functions onto control flow primitives.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85832ac460ae1baa58c816b019903544b29a22c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
