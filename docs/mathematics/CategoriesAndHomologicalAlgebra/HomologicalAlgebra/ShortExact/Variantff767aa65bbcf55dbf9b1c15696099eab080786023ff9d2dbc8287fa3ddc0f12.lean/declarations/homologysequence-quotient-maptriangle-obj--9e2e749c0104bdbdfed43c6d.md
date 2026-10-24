# homologySequenceδ_quotient_mapTriangle_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7f02cc-94f2-5100-4633-e74de301059e",
  "kind": "lemma",
  "lexical_name": "homologySequenceδ_quotient_mapTriangle_obj",
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
  "slug": "homologysequence-quotient-maptriangle-obj--9e2e749c0104bdbdfed43c6d",
  "source": {
    "blob": "140d3b80fdc3b90e81363f353554a4c67fc22d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2e749c0104bdbdfed43c6dd07d6ce7c4648a1c7e5a509fb3a32c3d4db46f19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7f02cc-94f2-5100-4633-e74de301059e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologySequenceδ_quotient_mapTriangle_obj
    (T : Triangle (CochainComplex C ℤ)) (n₀ n₁ : ℤ) (h : n₀ + 1 = n₁) :
    (homologyFunctor C (up ℤ) 0).homologySequenceδ
        ((quotient C (up ℤ)).mapTriangle.obj T) n₀ n₁ h =
      (homologyFunctorFactors C (up ℤ) n₀).hom.app _ ≫
        (HomologicalComplex.homologyFunctor C (up ℤ) 0).shiftMap T.mor₃ n₀ n₁ (by omega) ≫
        (homologyFunctorFactors C (up ℤ) n₁).inv.app _ := by
  apply homologyFunctor_shiftMap

namespace mappingCone

variable (S : ShortComplex (CochainComplex C ℤ)) (hS : S.ShortExact)

/-- The canonical morphism `mappingCone S.f ⟶ S.X₃` when `S` is a short complex
of cochain complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ShortExact/Variantff767aa65bbcf55dbf9b1c15696099eab080786023ff9d2dbc8287fa3ddc0f12.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `140d3b80fdc3b90e81363f353554a4c67fc22d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
