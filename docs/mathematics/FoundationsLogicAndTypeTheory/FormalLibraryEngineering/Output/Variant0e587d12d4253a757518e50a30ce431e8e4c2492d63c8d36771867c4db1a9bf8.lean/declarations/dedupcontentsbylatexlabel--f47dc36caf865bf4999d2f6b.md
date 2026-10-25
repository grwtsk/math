# dedupContentsByLatexLabel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ceb9b38863502177e5174e4ee0fdddb6693dfbd96867f5dd1deca87959b76d7",
  "kind": "def",
  "lexical_name": "dedupContentsByLatexLabel",
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
  "slug": "dedupcontentsbylatexlabel--f47dc36caf865bf4999d2f6b",
  "source": {
    "blob": "c2dd41557991459c33bf1547f751b0f92a286c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f47dc36caf865bf4999d2f6b24280204096429cc57bebc1f04ea7400f83051ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ceb9b38863502177e5174e4ee0fdddb6693dfbd96867f5dd1deca87959b76d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def dedupContentsByLatexLabel (contents : Array BlueprintContent) : Array BlueprintContent := Id.run do
  let mut seen : Std.HashSet String := ∅
  let mut result : Array BlueprintContent := #[]
  for content in contents do
    match content with
    | .node n =>
      if seen.contains n.latexLabel then
        continue
      seen := seen.insert n.latexLabel
      result := result.push content
    | .modDoc _ =>
      result := result.push content
  return result

/-- Convert a module to a header file and artifacts. The header file requires the path to the artifacts directory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2dd41557991459c33bf1547f751b0f92a286c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
