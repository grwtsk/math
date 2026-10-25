# findMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ef7a01eb346353eb048abb5dcca5d7bb0383d47939f3d063b0b1f32c6daa4ac",
  "kind": "def",
  "lexical_name": "findMatches",
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
  "slug": "findmatches--a00707d67c505fbf9c14ac48",
  "source": {
    "blob": "5a343b75a4bd9f834b341bf20004763392ae4863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a00707d67c505fbf9c14ac4802013b503e0fc854200b65fa4fc6614fe5173213",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ef7a01eb346353eb048abb5dcca5d7bb0383d47939f3d063b0b1f32c6daa4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findMatches (ext : EnvExtension (IO.Ref (Option (RefinedDiscrTree α))))
    (addEntry : Name → ConstantInfo → MetaM (List (α × List (Key × LazyEntry))))
    (ty : Expr) (constantsPerTask : Nat := 1000) (capacityPerTask : Nat := 128) :
    MetaM (MatchResult α × MatchResult α) := do
  let moduleMatches ← findModuleMatches (← createModuleTreeRef addEntry) ty
  let importMatches ← findImportMatches ext addEntry ty constantsPerTask capacityPerTask
  return (moduleMatches, importMatches)

end Lean.Meta.RefinedDiscrTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RefinedDiscrTree/Variant8f6bdd6b2ab63c027f78d22973b344e31afd4f154ca361572d06ee021e7b03f2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a343b75a4bd9f834b341bf20004763392ae4863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
