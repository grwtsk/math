# tryTheoremCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:651fb983b44375bd9767856b027a8840f8c9da87b245abd3c2e34de84f59c732",
  "kind": "def",
  "lexical_name": "tryTheoremCore",
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
  "slug": "trytheoremcore--d859b7fbd5bedd30bc844738",
  "source": {
    "blob": "1bca8cc5caaa3d03f0cf8aec450079f68c678083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d859b7fbd5bedd30bc8447389440573f60bf04e40186ad214baffa7236e7ca81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:651fb983b44375bd9767856b027a8840f8c9da87b245abd3c2e34de84f59c732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryTheoremCore (xs : Array Expr) (val : Expr) (type : Expr) (e : Expr)
    (thmId : Origin) (funProp : Expr → FunPropM (Option Result)) : FunPropM (Option Result) := do
  withTraceNode `Meta.Tactic.fun_prop
    (fun r => return s!"[{ExceptToEmoji.toEmoji r}] applying: {← ppOrigin' thmId}") do

  if (← isDefEq type e) then

    if ¬(← synthesizeArgs thmId xs funProp) then
      return none
    let proof ← instantiateMVars (mkAppN val xs)

    return .some { proof := proof }
  else
    trace[Meta.Tactic.fun_prop] "failed to unify {← ppOrigin thmId}\n{type}\nwith\n{e}"
    return none


/-- Try to apply a theorem provided some of the theorem arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca8cc5caaa3d03f0cf8aec450079f68c678083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
