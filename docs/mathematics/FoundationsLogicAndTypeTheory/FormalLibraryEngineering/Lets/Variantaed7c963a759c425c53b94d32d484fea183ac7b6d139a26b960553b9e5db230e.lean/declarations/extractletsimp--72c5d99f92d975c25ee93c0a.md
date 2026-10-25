# extractLetsImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:854542313ed849eba00db1c7dbdc3af503ff2242f60acb446b2b2c22e98d282b",
  "kind": "def",
  "lexical_name": "extractLetsImp",
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
  "slug": "extractletsimp--72c5d99f92d975c25ee93c0a",
  "source": {
    "blob": "f74e98679e7a7eec0aab656beedf23975b71437d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c5d99f92d975c25ee93c0a73d88d7c3c1d3bb3d274ff2e9f1331c9bee65fb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:854542313ed849eba00db1c7dbdc3af503ff2242f60acb446b2b2c22e98d282b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def extractLetsImp (es : Array Expr) (givenNames : List Name)
    (k : Array FVarId → Array Expr → List Name → MetaM α) (config : ExtractLetsConfig) : MetaM α := do
  let (es, st) ← ExtractLets.extract es |>.run config |>.run' {} |>.run { givenNames }
  let givenNames' := st.givenNames
  let decls := st.decls.map (·.decl)
  withExistingLocalDecls decls.toList <| k (decls.map (·.fvarId)) es givenNames'

/--
Extracts `let` and `have` expressions into local definitions,
evaluating `k` at the post-extracted expressions and the extracted fvarids, within a context containing those local declarations.
- The `givenNames` is a list of explicit names to use for extracted local declarations.
  If a name is `_` (or if there is no provided given name and `config.onlyGivenNames` is true) then uses a hygienic name
  based on the existing binder name.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74e98679e7a7eec0aab656beedf23975b71437d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
