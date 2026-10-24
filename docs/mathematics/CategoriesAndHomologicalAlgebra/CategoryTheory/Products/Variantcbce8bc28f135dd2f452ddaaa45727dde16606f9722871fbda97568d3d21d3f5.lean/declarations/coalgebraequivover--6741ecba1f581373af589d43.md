# coalgebraEquivOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f7b4a11ac33601251952201963664dea560eb6bff03124d6de3fce67a1c81d4",
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
  "slug": "coalgebraequivover--6741ecba1f581373af589d43",
  "source": {
    "blob": "6ccd9a96ddc5756b43da554fd5a09897355dde10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantcbce8bc28f135dd2f452ddaaa45727dde16606f9722871fbda97568d3d21d3f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6741ecba1f581373af589d4334a8273c95487c4a1c67851b8cedbaece9432648",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantcbce8bc28f135dd2f452ddaaa45727dde16606f9722871fbda97568d3d21d3f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f7b4a11ac33601251952201963664dea560eb6bff03124d6de3fce67a1c81d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–94.

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


variable [HasBinaryCoproducts C]

set_option backward.isDefEq.respectTransparency false in
/-- `X ⨿ -` has a monad structure. This is sometimes called the either monad. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantcbce8bc28f135dd2f452ddaaa45727dde16606f9722871fbda97568d3d21d3f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantcbce8bc28f135dd2f452ddaaa45727dde16606f9722871fbda97568d3d21d3f5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ccd9a96ddc5756b43da554fd5a09897355dde10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
