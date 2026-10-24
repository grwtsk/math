# delabAEEventuallyEqSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f88c4647503b48ffbd5b779554aa1ec1924ef8c2863f19cbd4f62b17d266c7e3",
  "kind": "def",
  "lexical_name": "delabAEEventuallyEqSet",
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
  "slug": "delabaeeventuallyeqset--84d4ca34aa18a748ed5f49a9",
  "source": {
    "blob": "1802fcab91bae1a8537d57413d45b28628d6d5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84d4ca34aa18a748ed5f49a9f21d4f83504051353058f435a0e2bb98a352f3c0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f88c4647503b48ffbd5b779554aa1ec1924ef8c2863f19cbd4f62b17d266c7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def delabAEEventuallyEqSet : Delab :=
  whenNotPPOption getPPExplicit <| whenPPOption getPPNotation do
    let e ← SubExpr.getExpr
    guard <| e.isAppOfArity ``Filter.EventuallyEqSet 4
    guard <| (e.getArg! 1).isAppOfArity ``MeasureTheory.ae 5
    let μ ← SubExpr.withNaryArg 1 <| SubExpr.withNaryArg 4 delab
    let s ← SubExpr.withNaryArg 2 delab
    let t ← SubExpr.withNaryArg 3 delab
    `($s =ᵐ[$μ] $t)

/-- Delaborator printing `Filter.EventuallyLE (MeasureTheory.ae μ) f g` as `f ≤ᵐ[μ] g`. -/
@[app_delab Filter.EventuallyLE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AE/Variantde58d3b2aa42d801e9a268df285c32e5aa6ca7ffc5b42bf5eff8f12bda87a00d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1802fcab91bae1a8537d57413d45b28628d6d5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
