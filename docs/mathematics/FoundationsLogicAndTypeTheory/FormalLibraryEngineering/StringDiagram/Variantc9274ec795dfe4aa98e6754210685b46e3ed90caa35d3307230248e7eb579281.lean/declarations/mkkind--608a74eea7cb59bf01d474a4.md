# mkKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32109a840d0907489e8d28eafe9bb56f8dcd91fe8f407906cabab58a41defd8d",
  "kind": "def",
  "lexical_name": "mkKind",
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
  "slug": "mkkind--608a74eea7cb59bf01d474a4",
  "source": {
    "blob": "9d30be8e22f17eabecd45f9158b593aa56147ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:608a74eea7cb59bf01d474a4d4165e895122d78c2ba616fccf565b603877116f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32109a840d0907489e8d28eafe9bb56f8dcd91fe8f407906cabab58a41defd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkKind (e : Expr) : MetaM Kind := do
  let e ← instantiateMVars e
  let e ← (match (← whnfR e).eq? with
    | some (_, lhs, _) => return lhs
    | none => return e)
  let ctx? ← BicategoryLike.mkContext? (ρ := Bicategory.Context) e
  match ctx? with
  | .some _ => return .bicategory
  | .none =>
    let ctx? ← BicategoryLike.mkContext? (ρ := Monoidal.Context) e
    match ctx? with
    | .some _ => return .monoidal
    | .none => return .none

open scoped Jsx in
/-- Given a 2-morphism, return a string diagram. Otherwise `none`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StringDiagram/Variantc9274ec795dfe4aa98e6754210685b46e3ed90caa35d3307230248e7eb579281.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d30be8e22f17eabecd45f9158b593aa56147ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
