# mapExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27f1386a787adc5294b2c03f0868821e1b03e510cd035177ede985e3f3a3a0d5",
  "kind": "def",
  "lexical_name": "mapExpr",
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
  "slug": "mapexpr--d02af77b3434a362a35ae6e9",
  "source": {
    "blob": "59a4c379fc571ba2a5b71b3f221c31ab27752b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantf56c565163049cc378aadec8983daf73aba4469e91bf5fac2a21f37bb42db8f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d02af77b3434a362a35ae6e972e058e5d0e0a5a4d1713dcc7d3f82d040a9b984",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantf56c565163049cc378aadec8983daf73aba4469e91bf5fac2a21f37bb42db8f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27f1386a787adc5294b2c03f0868821e1b03e510cd035177ede985e3f3a3a0d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapExpr (f : VarId → VarId) : Expr → Expr
  | Expr.ctor c ys      => Expr.ctor c (mapArgs f ys)
  | Expr.reset n x      => Expr.reset n (f x)
  | Expr.reuse x c u ys => Expr.reuse (f x) c u (mapArgs f ys)
  | Expr.proj i x       => Expr.proj i (f x)
  | Expr.uproj i x      => Expr.uproj i (f x)
  | Expr.sproj n o x    => Expr.sproj n o (f x)
  | Expr.fap c ys       => Expr.fap c (mapArgs f ys)
  | Expr.pap c ys       => Expr.pap c (mapArgs f ys)
  | Expr.ap x ys        => Expr.ap (f x) (mapArgs f ys)
  | Expr.box t x        => Expr.box t (f x)
  | Expr.unbox x        => Expr.unbox (f x)
  | Expr.isShared x     => Expr.isShared (f x)
  | e@(Expr.lit _)      =>  e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantf56c565163049cc378aadec8983daf73aba4469e91bf5fac2a21f37bb42db8f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormIds/Variantf56c565163049cc378aadec8983daf73aba4469e91bf5fac2a21f37bb42db8f5.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a4c379fc571ba2a5b71b3f221c31ab27752b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
