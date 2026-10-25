# argsToMonoWithFnType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa0d11b988272a93270980eaef5119eb2caa3fbd582d2efbb5131425873e541",
  "kind": "def",
  "lexical_name": "argsToMonoWithFnType",
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
  "slug": "argstomonowithfntype--e3c6df4ba74bdaeecfc9872e",
  "source": {
    "blob": "e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3c6df4ba74bdaeecfc9872e58f2919e3dbe3a4ca82b0a4c2f72d3417186ca08",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa0d11b988272a93270980eaef5119eb2caa3fbd582d2efbb5131425873e541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def argsToMonoWithFnType (args : Array (Arg .pure)) (type : Expr)
    : ToMonoM (Array (Arg .pure)) := do
  let mut remainingType : Option Expr := some type
  let mut result := Array.emptyWithCapacity args.size
  for arg in args do
    let monoArg ← if let some (.forallE _ d b _ ) := remainingType then
      remainingType := some b
      if d.isErased then
        pure .erased
      else
        argToMono arg
    else
      remainingType := none
      argToMono arg
    result := result.push monoArg
  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToMono/Variantbbc759a89a607268cb2902faf4cf8d6c8fcd4023116466d0ce49ba1f8343a573.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bfd977f9bd3dd39aef2bd7c2bc9770c96a65c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
