# getProduceMotiveAndRecursive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f2f2e16142cfcb9fe15043dd5eca187b349c24c958e8a43ab3bf1d8e2dc9fab",
  "kind": "def",
  "lexical_name": "getProduceMotiveAndRecursive",
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
  "slug": "getproducemotiveandrecursive--468283253221888135b90d43",
  "source": {
    "blob": "de349fb7bbf8c5f72c73724ba0e3ffd52420de08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:468283253221888135b90d43f74146d100a5394cb02b221824ad018c56014b83",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f2f2e16142cfcb9fe15043dd5eca187b349c24c958e8a43ab3bf1d8e2dc9fab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getProduceMotiveAndRecursive (xs : Array Expr) (numParams numIndices majorPos : Nat) (motive : Expr) : MetaM (List Bool × Bool) := do
  let mut produceMotive := #[]
  let mut recursor      := false
  for h : i in *...xs.size do
    if i < numParams + 1 then
      continue --skip parameters and motive
    if majorPos - numIndices ≤ i && i ≤ majorPos then
      continue -- skip indices and major premise
    -- process minor premise
    let x := xs[i]
    let xType ← inferType x
    (produceMotive, recursor) ← forallTelescopeReducing xType fun minorArgs minorResultType => minorResultType.withApp fun res _ => do
      let produceMotive := produceMotive.push (res == motive)
      let recursor ← if recursor then pure recursor else minorArgs.anyM fun minorArg => do
        let minorArgType ← inferType minorArg
        pure (minorArgType.find? fun e => e == motive).isSome
      pure (produceMotive, recursor)
  pure (produceMotive.toList, recursor)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variantc2f8b8eec2ef58dacc12caaff252261bf5d3623ac9eef1bd0e255aee290ebd95.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de349fb7bbf8c5f72c73724ba0e3ffd52420de08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
