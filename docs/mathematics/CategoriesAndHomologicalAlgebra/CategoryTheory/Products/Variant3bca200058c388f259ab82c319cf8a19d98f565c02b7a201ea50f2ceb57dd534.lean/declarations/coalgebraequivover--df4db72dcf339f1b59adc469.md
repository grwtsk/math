# coalgebraEquivOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8744254ee1cd4c4c1ee7d3df51e011136a8c320fef707f3025a04ea55ed14295",
  "kind": "def",
  "lexical_name": "coalgebraEquivOver",
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
  "slug": "coalgebraequivover--df4db72dcf339f1b59adc469",
  "source": {
    "blob": "29f951a760c8b713846ee8a6d8f7993ba4177f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df4db72dcf339f1b59adc469ff311ef7ba59479285ea4a30a749ecd6faaa66e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8744254ee1cd4c4c1ee7d3df51e011136a8c320fef707f3025a04ea55ed14295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coalgebraEquivOver : Coalgebra (prodComonad X) ≌ Over X where
  functor := coalgebraToOver X
  inverse := overToCoalgebra X
  unitIso := NatIso.ofComponents fun A =>
    Coalgebra.isoMk (Iso.refl _) (Limits.prod.hom_ext (by simp) (by simpa using A.counit))
  counitIso := NatIso.ofComponents fun f => Over.isoMk (Iso.refl _)

end

section

open Monad

variable [HasBinaryCoproducts C]

/-- `X ⨿ -` has a monad structure. This is sometimes called the either monad. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f951a760c8b713846ee8a6d8f7993ba4177f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
