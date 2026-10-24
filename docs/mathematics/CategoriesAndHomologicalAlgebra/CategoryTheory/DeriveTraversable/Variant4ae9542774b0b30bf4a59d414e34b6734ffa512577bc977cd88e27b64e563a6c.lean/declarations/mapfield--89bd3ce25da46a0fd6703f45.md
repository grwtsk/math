# mapField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09ca4edb5a45497df5fa71036db0c70c239e0a6dd18d1b535d40e20a8788fb77",
  "kind": "def",
  "lexical_name": "mapField",
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
  "slug": "mapfield--89bd3ce25da46a0fd6703f45",
  "source": {
    "blob": "88f5712fd86939cf1ccac87905525dc2a52b22d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89bd3ce25da46a0fd6703f45961a4ddc4c8e80bd5fa5a8a11d93392ce73b4511",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09ca4edb5a45497df5fa71036db0c70c239e0a6dd18d1b535d40e20a8788fb77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapField (n : Name) (cl f α β e : Expr) : TermElabM Expr := do
  let t ← whnf (← inferType e)
  if t.getAppFn.constName = some n then
    throwError "recursive types not supported"
  else if α.eqv e then
    return β
  else if α.occurs t then
    let f' ← nestedMap f α t
    return f'.app e
  else if ←
      (match t with
        | .app t' _ => withNewMCtxDepth <| isDefEq t' cl
        | _ => return false) then
    mkAppM ``Comp.mk #[e]
  else
    return e

/-- Get the auxiliary local declaration corresponding to the current declaration. If there are
multiple declaraions it will throw. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant4ae9542774b0b30bf4a59d414e34b6734ffa512577bc977cd88e27b64e563a6c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88f5712fd86939cf1ccac87905525dc2a52b22d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
