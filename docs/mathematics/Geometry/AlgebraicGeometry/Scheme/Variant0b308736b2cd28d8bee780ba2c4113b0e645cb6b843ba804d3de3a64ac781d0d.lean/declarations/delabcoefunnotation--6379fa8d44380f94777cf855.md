# delabCoeFunNotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad7dc7cd17b1e91214a257c04e128065f0e88ec1f32d2544c3118e8770d64c5f",
  "kind": "def",
  "lexical_name": "delabCoeFunNotation",
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
  "slug": "delabcoefunnotation--6379fa8d44380f94777cf855",
  "source": {
    "blob": "4bf2c601d78123399802cf91208f8f15cfbc2c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 122,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6379fa8d44380f94777cf85533eba9809894597cdb0df08301c0af9b6daf41af",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad7dc7cd17b1e91214a257c04e128065f0e88ec1f32d2544c3118e8770d64c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def delabCoeFunNotation : Delab := whenPPOption getPPNotation do
  guard <| (← getExpr).isAppOfArity ``DFunLike.coe 5
  withNaryArg 4 do
  guard <| (← getExpr).isAppOfArity ``CategoryTheory.ConcreteCategory.hom 9
  withNaryArg 8 do
  guard <| (← getExpr).isAppOfArity ``PresheafedSpace.Hom.base 5
  withNaryArg 4 do
  guard <| (← getExpr).isAppOfArity ``LocallyRingedSpace.Hom.toHom 3
  withNaryArg 2 do
  guard <| (← getExpr).isAppOfArity ``Scheme.Hom.toLRSHom' 3
  withNaryArg 2 do
  `(⇑$(← delab))

open Lean PrettyPrinter.Delaborator SubExpr in
/-- Pretty printer for applying morphisms of schemes to set-theoretic points. -/
@[app_delab DFunLike.coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant0b308736b2cd28d8bee780ba2c4113b0e645cb6b843ba804d3de3a64ac781d0d.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf2c601d78123399802cf91208f8f15cfbc2c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
