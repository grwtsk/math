# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:479ed3bcb06db924d278ecee3f5a65e32d3ea712b3d2e938fdf93da9b9539913",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6b6c4a428296e8bc8dd41b70",
  "source": {
    "blob": "87524fa8fdb455f158b506c759ddeca942305c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b6c4a428296e8bc8dd41b705c654cbb5d4d3df4f6cb95cd4a42a4bf78e5f5bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:479ed3bcb06db924d278ecee3f5a65e32d3ea712b3d2e938fdf93da9b9539913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [ToExpr α] : ToExpr (BoolExpr α) where
  toExpr x := go x
  toTypeExpr := mkApp (mkConst ``BoolExpr) (toTypeExpr α)
where
  go : (BoolExpr α) → Expr
    | .literal lit => mkApp2 (mkConst ``BoolExpr.literal) (toTypeExpr α) (toExpr lit)
    | .const b => mkApp2 (mkConst ``BoolExpr.const) (toTypeExpr α) (toExpr b)
    | .not x => mkApp2 (mkConst ``BoolExpr.not) (toTypeExpr α) (go x)
    | .gate g x y => mkApp4 (mkConst ``BoolExpr.gate) (toTypeExpr α) (toExpr g) (go x) (go y)
    | .ite d l r => mkApp4 (mkConst ``BoolExpr.ite) (toTypeExpr α) (go d) (go l) (go r)


open Lean.Meta

/--
A `BitVec` atom.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1e287a6bd64e6412e70eecd9072fb4bcab3ac34fc010498b686a742f2fb6b4ef.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87524fa8fdb455f158b506c759ddeca942305c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
