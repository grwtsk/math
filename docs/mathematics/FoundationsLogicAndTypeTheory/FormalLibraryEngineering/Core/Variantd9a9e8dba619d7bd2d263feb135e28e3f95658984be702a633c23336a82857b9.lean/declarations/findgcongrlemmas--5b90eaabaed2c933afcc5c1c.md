# findGCongrLemmas?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d51419586be0e35cd6c3d314ee913c3d4e633ee908a9ee412d8c2cc99722646",
  "kind": "def",
  "lexical_name": "findGCongrLemmas?",
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
  "slug": "findgcongrlemmas--5b90eaabaed2c933afcc5c1c",
  "source": {
    "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b90eaabaed2c933afcc5c1c43bdd523fad39a499143496df934a2a2b29ad0a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d51419586be0e35cd6c3d314ee913c3d4e633ee908a9ee412d8c2cc99722646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findGCongrLemmas? (relName lhs rhs : Name) (arity : Nat) : CoreM (List GCongrLemma) := do
  let lemmas := gcongrExt.getState (← getEnv)
  let key := { relName, head := lhs, arity }
  let some lemmas := lemmas.get? key | return []
  let keys := if lhs == rhs then [key] else [key, { key with head := rhs }]
  return lemmas.filter (·.keys == keys)

/-- Get the `gcongr` lemmas whose conclusion has the shape
`relName (head ..) _`, if `forward := true`, or `rel _ (head ..)`, if `forward := false`.
`arity` is the number of arguments in `..`. This is used by the `grw` tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d699139254f5b9e8aca76feedf3c9ea7c32fc88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
