# writeDag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4946c6f3b9725b15d5c176aa00e806d40096b719744313eabdcd39914f62da3d",
  "kind": "def",
  "lexical_name": "writeDag",
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
  "slug": "writedag--6e244b6e1fc255678eb74cd3",
  "source": {
    "blob": "965e212fb593e6d26a18d4e8741667c2d5404b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanExpressionDag.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e244b6e1fc255678eb74cd3acb26ca328528f780d508fc16004c0108219e44b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanExpressionDag.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4946c6f3b9725b15d5c176aa00e806d40096b719744313eabdcd39914f62da3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def writeDag (render : Expr → Json) (e : Expr) (path : System.FilePath) : IO Result := do
  let handle ← IO.FS.Handle.mk path .write
  let mut table : ExprStructMap Node := {}
  let mut stack : Array (Expr × Bool × Nat) := #[(e, false, 0)]
  let mut totalBytes := 0
  while !stack.isEmpty do
    let (current, ready, callDepth) := stack.back!
    stack := stack.pop
    if table.contains (⟨current⟩ : ExprStructEq) then continue
    if callDepth > maximumDepth then
      throw <| IO.userError "DAG_DEPTH_4096"
    if table.size + stack.size ≥ maximumNodes then
      throw <| IO.userError "DAG_NODE_OR_PENDING_ENVELOPE_1000000"
    let cs := children current
    if !ready && !cs.isEmpty then
      stack := stack.push (current, true, callDepth)
      for (_, child) in cs.reverse do
        if !table.contains (⟨child⟩ : ExprStructEq) then
          stack := stack.push (child, false, callDepth + 1)
      continue
    let mut ids : Array Nat := #[]
    let mut refs : List (String × Json) := []
    let mut depth := 0
    for (field, child) in cs do
      let some node := table[(⟨child⟩ : ExprStructEq)]? | throw <| IO.userError "DAG_CHILD_NOT_READY"
      ids := ids.push node.id
      refs := refs ++ [(field, toJson node.id)]
      depth := max depth (node.depth + 1)
    if depth > maximumDepth then throw <| IO.userError "DAG_DEPTH_4096"
    let id := table.size
    let row := Json.mkObj [("id", toJson id), ("payload", render (shallow current ids)),
      ("children", Json.mkObj refs)]
    let text := row.compress ++ "\n"
    if text.utf8ByteSize > maximumRowBytes then throw <| IO.userError "DAG_ROW_BYTES_4_MIB"
    totalBytes := totalBytes + text.utf8ByteSize
    if totalBytes > maximumArtifactBytes then throw <| IO.userError "DAG_ARTIFACT_BYTES_1_GIB"
    handle.putStr text
    table := table.insert (⟨current⟩ : ExprStructEq) { id, depth }
  handle.flush
  let some root := table[(⟨e⟩ : ExprStructEq)]? | throw <| IO.userError "DAG_ROOT_UNAVAILABLE"
  return { root := root.id, nodes := table.size, depth := root.depth, bytes := totalBytes }

end LeanExpressionDag
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanExpressionDag.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanExpressionDag.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e212fb593e6d26a18d4e8741667c2d5404b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
