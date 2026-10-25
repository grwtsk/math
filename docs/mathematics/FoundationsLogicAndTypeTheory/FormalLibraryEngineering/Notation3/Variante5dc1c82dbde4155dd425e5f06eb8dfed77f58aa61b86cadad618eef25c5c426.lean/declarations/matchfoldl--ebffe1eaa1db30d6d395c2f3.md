# matchFoldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d312a7fe15ee734bc353b40e6c253d71bce75f6c68ce8fdf82abbf845a5d63e",
  "kind": "def",
  "lexical_name": "matchFoldl",
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
  "slug": "matchfoldl--ebffe1eaa1db30d6d395c2f3",
  "source": {
    "blob": "3d15d52cfba8de9c4ea41db34c6bf6b8df224524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 420,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebffe1eaa1db30d6d395c2f308460507ea37894627509d37530a93dd90485d3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d312a7fe15ee734bc353b40e6c253d71bce75f6c68ce8fdf82abbf845a5d63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def matchFoldl (lit x y : Name) (smatcher : Matcher) (sinit : Matcher) :
    Matcher := fun s => do
  s.withVar lit do
    let expr ← getExpr
    -- Clear x and y state before running smatcher so it can store new values
    let s := {s with vars := s.vars |>.erase x |>.erase y}
    let some s ← try some <$> smatcher s catch _ => pure none
      | -- We put this here rather than using a big try block to prevent backtracking.
        -- We have `smatcher` match greedily, and then require that `sinit` *must* succeed
        sinit s
    -- y gives the next element of the list
    let s := s.pushFold lit (← s.delabVar y expr)
    -- x gives the next lit
    let some newLit := s.vars[x]? | failure
    -- If progress was not made, fail
    if newLit.1.expr == expr then failure
    -- Progress was made, so recurse
    let s := {s with vars := s.vars.insert lit newLit}
    matchFoldl lit x y smatcher sinit s

/-- Create a `Term` that represents a matcher for `foldl` notation.
Reminder: `( lit ","* => foldl (x y => scopedTerm) init)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d15d52cfba8de9c4ea41db34c6bf6b8df224524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
