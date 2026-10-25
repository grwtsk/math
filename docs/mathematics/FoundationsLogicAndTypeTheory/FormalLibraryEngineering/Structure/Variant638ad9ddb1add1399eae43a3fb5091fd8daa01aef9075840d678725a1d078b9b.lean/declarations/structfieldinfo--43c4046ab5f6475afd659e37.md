# StructFieldInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56508017dc93038d9d2f93b8e9adf8565c2936f84ed2106e169fc9857aed7413",
  "kind": "structure",
  "lexical_name": "StructFieldInfo",
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
  "slug": "structfieldinfo--43c4046ab5f6475afd659e37",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43c4046ab5f6475afd659e37df8bf5e8a61e34dfbcb47f727e2681b465c49abd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56508017dc93038d9d2f93b8e9adf8565c2936f84ed2106e169fc9857aed7413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructFieldInfo where
  ref      : Syntax
  name     : Name
  kind     : StructFieldKind
  /-- Name of projection function.
  Remark: for fields that don't get projection functions (like `fromSubobject` fields), only relevant for the auxiliary "default value" functions. -/
  declName : Name
  /-- Binder info to use when making the constructor. Only applies to those fields that will appear in the constructor. -/
  binfo    : BinderInfo
  /-- Overrides for the parameters' binder infos when making the projections. The first component is a ref for the binder. -/
  paramInfoOverrides : ExprMap (Syntax × BinderInfo) := {}
  /-- Number of binders for the field's type, used for elaborating the default value for the field (if present). -/
  numBinders : Nat := 0
  /--
  Structure names that are responsible for this field being here.
  - Empty if the field is a `newField`.
  - Otherwise, it is a stack with the last element being a parent in the `extends` clause.
    The first element is the (indirect) parent that is responsible for this field.
  -/
  sourceStructNames : List Name
  /-- Local variable for the field.
  All fields (both real fields and parent projection fields) get a local variable.
  Parent fields are ldecls constructed from non-parent fields. -/
  fvar     : Expr
  /-- An expression representing a `.fromSubobject` field as a projection of a `.subobject` field.
  Used when making the constructor.
  Note: `.otherParent` fields are let decls, there is no need for `projExpr?`. -/
  projExpr? : Option Expr := none
  /-- The default value, as explicitly given in this `structure`. -/
  default?  : Option StructFieldDefault := none
  /-- If this is an inherited field, the name of the projection function.
  Used for adding terminfo for fields with overridden default values. -/
  projFn?   : Option Name := none
  /-- The inherited default values, as parent structure / value pairs. -/
  inheritedDefaults : Array (Name × StructFieldDefault) := #[]
  /-- The default that will be used for this structure. -/
  resolvedDefault?  : Option StructFieldDefault := none
  deriving Inhabited

/-!
### View construction
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
