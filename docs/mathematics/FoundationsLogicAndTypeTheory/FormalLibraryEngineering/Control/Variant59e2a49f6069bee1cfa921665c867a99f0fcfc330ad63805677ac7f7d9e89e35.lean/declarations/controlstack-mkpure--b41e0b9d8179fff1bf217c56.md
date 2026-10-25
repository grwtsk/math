# ControlStack.mkPure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6038ff15983f9088ab754f677f002b3d1de0099b95d3164da54db52da9b6e1a9",
  "kind": "def",
  "lexical_name": "ControlStack.mkPure",
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
  "slug": "controlstack-mkpure--b41e0b9d8179fff1bf217c56",
  "source": {
    "blob": "afef07b33d862c522e2396634e5e2d4bf5e10da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b41e0b9d8179fff1bf217c56f10378d88fb6d4d7a64825fb0ea91f51ac5c1c31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6038ff15983f9088ab754f677f002b3d1de0099b95d3164da54db52da9b6e1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ControlStack.mkPure (base : ControlStack) (resultName : Name) : DoElabM Expr := do
  let mi := { (← read).monadInfo with m := (← base.m) }
  let instMonad ← mkInstMonad mi
  let instPure := instMonad |> mkApp2 (mkConst ``Monad.toApplicative [mi.u, mi.v]) mi.m
                            |> mkApp2 (mkConst ``Applicative.toPure [mi.u, mi.v]) mi.m
  let r ← getFVarFromUserName resultName
  base.runInBase <| mkApp4 (mkConst ``Pure.pure [mi.u, mi.v]) mi.m instPure (← inferType r) r

/-- Plan for embedding a non-tail-resumptive body inside `origCont` via a monad-transformer stack. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afef07b33d862c522e2396634e5e2d4bf5e10da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
