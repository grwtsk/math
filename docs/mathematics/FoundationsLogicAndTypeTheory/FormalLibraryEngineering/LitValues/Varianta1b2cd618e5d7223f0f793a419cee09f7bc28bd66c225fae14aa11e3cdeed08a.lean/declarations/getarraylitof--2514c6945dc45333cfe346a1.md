# getArrayLitOf?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45e242f601715669609f4980f2349f296b339f6777d7bd738288311dcb4989bb",
  "kind": "def",
  "lexical_name": "getArrayLitOf?",
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
  "slug": "getarraylitof--2514c6945dc45333cfe346a1",
  "source": {
    "blob": "16bd158560248fde3c9ac6915e49a8356e934a39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 290,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2514c6945dc45333cfe346a171cc38c190784fd11a4ca2120b3d3ede3db2572f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45e242f601715669609f4980f2349f296b339f6777d7bd738288311dcb4989bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getArrayLitOf? (e : Expr) (f : Expr → MetaM (Option α)) : MetaM (Option (Array α)) := do
  let e ← instantiateMVars e.consumeMData
  match_expr e with
  | List.toArray _ as => getListLitOf? as f
  | _ => return none

/--
Check if an expression is an array literal
(i.e. `List.toArray` applied to a nested chain of `List.cons`, ending at a `List.nil`),
returning the array of `Expr` values.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Varianta1b2cd618e5d7223f0f793a419cee09f7bc28bd66c225fae14aa11e3cdeed08a.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16bd158560248fde3c9ac6915e49a8356e934a39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
