# dummyDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98d02aa4e7add3f21b87f28e18f3e6944e621247acdc073b4e501ce6e1a590df",
  "kind": "def",
  "lexical_name": "dummyDischarger",
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
  "slug": "dummydischarger--97fab1a74903c516bafe2f01",
  "source": {
    "blob": "2205871552965d94a311c90f45918d890e662711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97fab1a74903c516bafe2f01012dd1fbe896a6f0f20af89f0f17c29b5ebe47ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98d02aa4e7add3f21b87f28e18f3e6944e621247acdc073b4e501ce6e1a590df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def dummyDischarger (ref : IO.Ref (Array GrwPos)) (hyp? : Bool) (fvar : Expr)
    (goal : MVarId) : MetaM Bool := do
  let e ← instantiateMVars (← goal.getType)
  let mkApp2 relation lhs rhs := e | throwError "`{e}` is not a relation"
  let .const relName _ := relation.getAppFn | throwError "{e} is not a relation"
  if relName matches ``Eq | ``Iff then throwError "{e} is not a generalized relation"
  let symm ←
    if lhs.cleanupAnnotations == fvar then
      pure hyp?
    else if rhs.cleanupAnnotations == fvar then
      pure !hyp?
    else
      throwError "{e} doesn't have {fvar} on either side"
  ref.set (← gcongrBackward relName relation symm)
  throw <| .error default "dummyError"

/-- Determine possible ways in which a `grw` call could rewrite at the given subexpression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2205871552965d94a311c90f45918d890e662711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
