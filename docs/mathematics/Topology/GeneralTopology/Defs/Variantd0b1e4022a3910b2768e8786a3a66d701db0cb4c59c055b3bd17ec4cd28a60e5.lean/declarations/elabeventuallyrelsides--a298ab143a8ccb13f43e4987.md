# elabEventuallyRelSides

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a2bb3eb774d2e6e87d159394fefc40d5a9b4232ac8185790eb39fd9c34c36fc",
  "kind": "def",
  "lexical_name": "elabEventuallyRelSides",
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
  "slug": "elabeventuallyrelsides--a298ab143a8ccb13f43e4987",
  "source": {
    "blob": "760285d16af8795fa73313254a28aa651c9d0883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 339,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a298ab143a8ccb13f43e498771900907e2a9b9d9ba8e6db2852a4464f85f139e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a2bb3eb774d2e6e87d159394fefc40d5a9b4232ac8185790eb39fd9c34c36fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def elabEventuallyRelSides (x y : Term) : TermElabM (Term × Term × Bool) := do
  -- Elaborate a side on its own, and return its type in whnf together with the elaborated term
  -- turned back into syntax.
  let elabSide (e : Term) : TermElabM (Expr × Term) := do
    let e ← elabTerm e none
    return (← whnfR (← instantiateMVars (← inferType e)), ← exprToSyntax e)
  let (tyx, x) ← elabSide x
  if tyx.getAppFn.isMVar then
    let (tyy, y) ← elabSide y
    return (x, y, tyy.isAppOfArity ``Set 1)
  else
    return (x, y, tyx.isAppOfArity ``Set 1)

open Lean Elab Term in
/-- Elaborator for `x =ᶠ[l] y`, dispatching on the type of `x` (or of `y` if the type of `x` is not
yet known): `Filter.EventuallyEqSet` for sets, `Filter.EventuallyEq` for functions. -/
@[term_elab eventuallyEqStx]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd0b1e4022a3910b2768e8786a3a66d701db0cb4c59c055b3bd17ec4cd28a60e5.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760285d16af8795fa73313254a28aa651c9d0883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
