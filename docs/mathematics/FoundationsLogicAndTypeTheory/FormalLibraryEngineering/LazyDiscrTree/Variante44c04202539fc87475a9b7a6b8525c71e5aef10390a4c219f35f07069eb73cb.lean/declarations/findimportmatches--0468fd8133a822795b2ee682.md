# findImportMatches

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b012948a929c130d2c2b53b26e3393aa52459c99caf018d396f6c6e56565913c",
  "kind": "def",
  "lexical_name": "findImportMatches",
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
  "slug": "findimportmatches--0468fd8133a822795b2ee682",
  "source": {
    "blob": "c26b2f62a5e0c9a3df2b82e57609fa8c991a160f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1091,
    "line": 1057,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0468fd8133a822795b2ee682c636b4586291e47b6ee6a7f243562e1d39f03ac3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b012948a929c130d2c2b53b26e3393aa52459c99caf018d396f6c6e56565913c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1091.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findImportMatches
      (ref : IO.Ref (Option (LazyDiscrTree α)))
      (addEntry : Name → AsyncConstantInfo → MetaM (Array (InitEntry α)))
      (droppedKeys : List (List LazyDiscrTree.Key) := [])
      (constantsPerTask : Nat := 1000)
      (droppedEntriesRef : Option (IO.Ref (Option (Array α))) := none)
      (ty : Expr) : MetaM (MatchResult α) := do
  let cctx ← (read : CoreM Core.Context)
  let ngen ← getNGen
  let (cNGen, ngen) := ngen.mkChild
  setNGen ngen
  let importTree ← (←ref.get).getDM $ do
    profileitM Exception  "lazy discriminator import initialization" (←getOptions) $ do
      let t ← createImportedDiscrTree (createTreeCtx cctx) cNGen (←getEnv) addEntry
                (constantsPerTask := constantsPerTask)
      -- If a reference is provided, extract and append dropped entries
      if let some droppedRef := droppedEntriesRef then
        let (extracted, t) ← extractKeys t droppedKeys
        -- Append to existing dropped entries (e.g., from module tree)
        let existing := (← droppedRef.get).getD #[]
        droppedRef.set (some (existing ++ extracted))
        pure t
      else
        dropKeys t droppedKeys
  let (importCandidates, importTree) ← importTree.getMatch ty
  ref.set (some importTree)
  pure importCandidates

/--
A discriminator tree for the current module's declarations only.

Note. We use different discriminator trees for imported and current module
declarations since imported declarations are typically much more numerous but
not changed after the environment is created.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variante44c04202539fc87475a9b7a6b8525c71e5aef10390a4c219f35f07069eb73cb.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26b2f62a5e0c9a3df2b82e57609fa8c991a160f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
