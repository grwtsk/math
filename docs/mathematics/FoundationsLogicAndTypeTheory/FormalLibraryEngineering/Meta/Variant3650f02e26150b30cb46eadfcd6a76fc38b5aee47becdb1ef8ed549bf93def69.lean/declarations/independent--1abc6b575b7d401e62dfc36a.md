# independent?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be0fd740224972053f68008a6c71c47e17e15078bf26e8749cb24d5f0973e514",
  "kind": "def",
  "lexical_name": "independent?",
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
  "slug": "independent--1abc6b575b7d401e62dfc36a",
  "source": {
    "blob": "112efe7ec2daa3216f47fd5eec218eda016f896b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1abc6b575b7d401e62dfc36a009ac33fd824a213f26f19903f8e5d26f24a305f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be0fd740224972053f68008a6c71c47e17e15078bf26e8749cb24d5f0973e514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def independent? (L : List MVarId) (g : MVarId) : MetaM Bool := do
  let t ← instantiateMVars (← g.getType)
  if t.hasExprMVar then
    -- If the goal's type contains other meta-variables,
    -- we conservatively say that `g` is not independent.
    return false
  if t.isProp then
    -- If the goal is propositional,
    -- proof-irrelevance should ensure it is independent of any other goals.
    return true
  if ← g.subsingleton? then
    -- If the goal is a subsingleton, it should be independent of any other goals.
    return true
  -- Finally, we check if the goal `g` appears in the type of any of the goals `L`.
  L.allM fun g' => do
    let mvars ← Meta.getMVars (← g'.getType)
    pure <| !(mvars.contains g)

end Lean.MVarId

namespace Lean.Meta

/-- Return local hypotheses which are not "implementation detail", as `Expr`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112efe7ec2daa3216f47fd5eec218eda016f896b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
