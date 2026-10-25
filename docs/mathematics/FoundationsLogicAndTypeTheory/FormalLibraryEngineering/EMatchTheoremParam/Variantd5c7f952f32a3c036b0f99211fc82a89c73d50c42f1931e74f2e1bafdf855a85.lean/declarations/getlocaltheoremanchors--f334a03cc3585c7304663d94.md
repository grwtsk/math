# getLocalTheoremAnchors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7467cb37de63cb37efb2377e0d4d518d955dcf38617984e2a6c1dac784cfb819",
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
  "slug": "getlocaltheoremanchors--f334a03cc3585c7304663d94",
  "source": {
    "blob": "759b237d5704da687de6a8ddd442f3de0a42c73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f334a03cc3585c7304663d94466fcd949e8a2dead085ec528a7d420be75bdad9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7467cb37de63cb37efb2377e0d4d518d955dcf38617984e2a6c1dac784cfb819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–35.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheoremParam/Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `759b237d5704da687de6a8ddd442f3de0a42c73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
