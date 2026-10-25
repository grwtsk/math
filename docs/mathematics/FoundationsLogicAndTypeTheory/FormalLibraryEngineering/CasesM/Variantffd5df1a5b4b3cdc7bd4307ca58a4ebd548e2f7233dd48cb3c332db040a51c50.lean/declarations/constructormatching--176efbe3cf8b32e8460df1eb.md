# constructorMatching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2780ce2b61431bc0584305a78914beb1d86249468861dad6f3cb19611bb68e0",
  "kind": "def",
  "lexical_name": "constructorMatching",
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
  "slug": "constructormatching--176efbe3cf8b32e8460df1eb",
  "source": {
    "blob": "ffe787b93127bbea2c99f32146f35183e4b413e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variantffd5df1a5b4b3cdc7bd4307ca58a4ebd548e2f7233dd48cb3c332db040a51c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176efbe3cf8b32e8460df1ebea13b7cc14ff8fbe502114d173a1264d5812b8cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variantffd5df1a5b4b3cdc7bd4307ca58a4ebd548e2f7233dd48cb3c332db040a51c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2780ce2b61431bc0584305a78914beb1d86249468861dad6f3cb19611bb68e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def constructorMatching (g : MVarId) (matcher : Expr → MetaM Bool)
    (recursive := false) (throwOnNoMatch := true) : MetaM (List MVarId) := do
  let result ←
    (if recursive then (do
      let result ← go g
      pure result.toList)
     else
      (g.withContext do
          if ← matcher (← g.getType) then g.constructor else pure [g]))
  if throwOnNoMatch && [g] == result then
    throwError "no match"
  else
    return result
where
  /-- Auxiliary for `constructorMatching`. Accumulates generated subgoals in `acc`. -/
  go (g : MVarId) (acc : Array MVarId := #[]) : MetaM (Array MVarId) :=
    g.withContext do
      if ← matcher (← g.getType) then
        let mut acc := acc
        for g' in ← g.constructor do
          acc ← go g' acc
        return acc
      return (acc.push g)

/--
* `constructorm p_1, ..., p_n` applies the `constructor` tactic to the main goal
  if `type` matches one of the given patterns.
* `constructorm* p` is a more efficient and compact version of `· repeat constructorm p`.
  It is more efficient because the pattern is compiled once.

Example: The following tactic proves any theorem like `True ∧ (True ∨ True)` consisting of
and/or/true:
```
constructorm* _ ∨ _, _ ∧ _, True
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variantffd5df1a5b4b3cdc7bd4307ca58a4ebd548e2f7233dd48cb3c332db040a51c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variantffd5df1a5b4b3cdc7bd4307ca58a4ebd548e2f7233dd48cb3c332db040a51c50.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffe787b93127bbea2c99f32146f35183e4b413e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
