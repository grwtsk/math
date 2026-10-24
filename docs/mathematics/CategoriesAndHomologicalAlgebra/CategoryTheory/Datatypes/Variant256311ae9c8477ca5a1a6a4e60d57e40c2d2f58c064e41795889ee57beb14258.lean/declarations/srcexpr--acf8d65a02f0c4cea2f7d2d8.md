# srcExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be29733d963e9eeabfc8299c89f7f7274a436dede8e983af9ed510468758df0a",
  "kind": "def",
  "lexical_name": "srcExpr",
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
  "slug": "srcexpr--acf8d65a02f0c4cea2f7d2d8",
  "source": {
    "blob": "4d9a7803081348a5ccfb313b381ec8936ca9f0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acf8d65a02f0c4cea2f7d2d82c1b916631e107abfd32ae839d2f195ca780e35c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be29733d963e9eeabfc8299c89f7f7274a436dede8e983af9ed510468758df0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def srcExpr (η : Expr) : MetaM Expr := do
  match (← whnfR (← inferType η)).getAppFnArgs with
  | (``Quiver.Hom, #[_, _, f, _]) => return f
  | _ => throwError m!"{η} is not a morphism"

/-- The codomain of a morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Datatypes/Variant256311ae9c8477ca5a1a6a4e60d57e40c2d2f58c064e41795889ee57beb14258.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d9a7803081348a5ccfb313b381ec8936ca9f0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
