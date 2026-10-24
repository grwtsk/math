# delabPrefunctorObjExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73e3cc6d8a96979440c14ed20f37d827f8463cdc6dbe48551d2209372539bf43",
  "kind": "def",
  "lexical_name": "delabPrefunctorObjExp",
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
  "slug": "delabprefunctorobjexp--09b5b8b53654ca8c1e7540f9",
  "source": {
    "blob": "5e2c34ace5439a46095aa40f18bf825ac63434f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09b5b8b53654ca8c1e7540f9d00a37fda974b557ee96a7a612eae46ba62ca6b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73e3cc6d8a96979440c14ed20f37d827f8463cdc6dbe48551d2209372539bf43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabPrefunctorObjExp : Delab := whenPPOption getPPNotation <| withOverApp 6 <| do
  let e ← getExpr
  guard <| e.isAppOfArity' ``Prefunctor.obj 6
  let A ← withNaryArg 4 do
    let e ← getExpr
    guard <| e.isAppOfArity' ``Functor.toPrefunctor 5
    withNaryArg 4 do
      let e ← getExpr
      guard <| e.isAppOfArity' ``exp 5
      withNaryArg 2 delab
  let B ← withNaryArg 5 delab
  `($A ⟹ $B)

-- Porting note: notation fails to elaborate with `quotPrecheck` on.
set_option quotPrecheck false in
/-- Morphisms from an exponentiable object. -/
notation:30 B " ^^ " A:30 => (exp A).obj B

-- Not simp as it can already prove it.
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2c34ace5439a46095aa40f18bf825ac63434f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
