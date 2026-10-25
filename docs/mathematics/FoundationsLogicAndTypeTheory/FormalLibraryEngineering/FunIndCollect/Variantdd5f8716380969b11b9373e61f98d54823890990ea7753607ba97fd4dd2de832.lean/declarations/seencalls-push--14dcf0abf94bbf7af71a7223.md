# SeenCalls.push

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8df3d41ec64b950ba0ed51bd51769539d8101e57955a2dd4e2f1139f4b77e2b7",
  "kind": "def",
  "lexical_name": "SeenCalls.push",
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
  "slug": "seencalls-push--14dcf0abf94bbf7af71a7223",
  "source": {
    "blob": "b55d3afd640fada1dbf81cd8685ef926ebbcf7f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndCollect/Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14dcf0abf94bbf7af71a72230a2b37b92a7e22b0815d9dc6b2d4d051035d0b49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndCollect/Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8df3d41ec64b950ba0ed51bd51769539d8101e57955a2dd4e2f1139f4b77e2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SeenCalls.push (e : Expr) (funIndInfo : FunIndInfo) (args : Array Expr) (calls : SeenCalls) :
    MetaM SeenCalls := do
  if funIndInfo.params.size != args.size then return calls
  let mut keys := #[]
  for arg in args, kind in funIndInfo.params do
    if kind matches .target then
      if !arg.isFVar then return calls
    unless kind matches .dropped do
      keys := keys.push arg
  let key := (funIndInfo.funName, keys)
  if calls.seen.contains key then return calls
  return { calls := calls.calls.push e, seen := calls.seen.insert key }

/--
Which functions have exactly one candidate application. Used by `try?` to determine whether
we can use `fun_induction foo` or need `fun_induction foo x y z`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndCollect/Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunIndCollect/Variantdd5f8716380969b11b9373e61f98d54823890990ea7753607ba97fd4dd2de832.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b55d3afd640fada1dbf81cd8685ef926ebbcf7f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
