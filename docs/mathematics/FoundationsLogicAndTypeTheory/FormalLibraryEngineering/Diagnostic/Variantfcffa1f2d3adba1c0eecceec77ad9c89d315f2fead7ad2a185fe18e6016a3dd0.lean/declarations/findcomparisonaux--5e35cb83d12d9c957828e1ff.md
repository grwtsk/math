# findComparisonAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e29bb9ddbfebb2be9115e69a5a89bbb1f35048c047db77ed8d6c3c3bd0e75bb2",
  "kind": "def",
  "lexical_name": "findComparisonAux",
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
  "slug": "findcomparisonaux--5e35cb83d12d9c957828e1ff",
  "source": {
    "blob": "05cb8a0d102dbb68610315d3345661d41d3503fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e35cb83d12d9c957828e1ff7b9139de116e6eda6b84524ab82cd70c655cafa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e29bb9ddbfebb2be9115e69a5a89bbb1f35048c047db77ed8d6c3c3bd0e75bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findComparisonAux (e : Lean.Expr) : MetaM (Option String) := do
  let e ← whnf e
  if e.isForall then
    let .forallE _ _ body _ := e | return none
    findComparisonAux body
  else
    let fn := e.getAppFn
    if fn.isConstOf ``LE.le then return some "≤"
    if fn.isConstOf ``GE.ge then return some "≥"
    if fn.isConstOf ``LT.lt then return some "<"
    if fn.isConstOf ``GT.gt then return some ">"
    return none

/-- Analyze goal structure for diagnostics -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05cb8a0d102dbb68610315d3345661d41d3503fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
