# getLocalTheoremAnchors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09a6048334c59e755d82ad6ec65f4c8f7ec771d3e492e24f3602acb25c3376ef",
  "kind": "def",
  "lexical_name": "getLocalTheoremAnchors",
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
  "slug": "getlocaltheoremanchors--f038c5986ac51489a051f17d",
  "source": {
    "blob": "8451a10a9f2881fdf1eaec98b40e03e877cd9568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variant9b0d4d21cca47b20ba7f4b2acce6436f472c9f8f59d5bb3f2b83d936c929fee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f038c5986ac51489a051f17d17c924204d9f651b68d7ccbf5cbe25505454f526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variant9b0d4d21cca47b20ba7f4b2acce6436f472c9f8f59d5bb3f2b83d936c929fee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09a6048334c59e755d82ad6ec65f4c8f7ec771d3e492e24f3602acb25c3376ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getLocalTheoremAnchors (goal : Goal) : GrindM (Array ExprWithAnchor) := do
  let (found, entries) ← go {} {} goal.ematch.thms
  let (_, entries) ← go found entries goal.ematch.newThms
  return entries
where
  go (found : Std.HashSet Grind.Origin) (result : Array ExprWithAnchor) (thms : PArray EMatchTheorem)
      : GrindM (Std.HashSet Grind.Origin × Array ExprWithAnchor) := do
    let mut found := found
    let mut result := result
    for thm in thms do
      if !thm.origin matches .decl _ then
      unless found.contains thm.origin do
        found := found.insert thm.origin
        let type ← inferType thm.proof
        let anchor ← getAnchor type
        result := result.push { anchor, e := type }
        pure ()
    return (found, result)

/--
Returns the number of digits needed to distinguish between different anchors.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variant9b0d4d21cca47b20ba7f4b2acce6436f472c9f8f59d5bb3f2b83d936c929fee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variant9b0d4d21cca47b20ba7f4b2acce6436f472c9f8f59d5bb3f2b83d936c929fee4.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8451a10a9f2881fdf1eaec98b40e03e877cd9568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
