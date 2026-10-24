# composableArrows₃Functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95ea871ce08373d75f2fdaa170fae72bb83c11307f3808057fdaee5560a4843b",
  "kind": "def",
  "lexical_name": "composableArrows₃Functor",
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
  "slug": "composablearrows-functor--4e2d4c07f2a34aa43373339f",
  "source": {
    "blob": "52cd76236f12412437d134fe5b5ba1eec7145a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e2d4c07f2a34aa43373339fbeea9eec23a2d34dcea7313e35e63cb610402589",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95ea871ce08373d75f2fdaa170fae72bb83c11307f3808057fdaee5560a4843b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def composableArrows₃Functor [CategoryWithHomology C] :
    HomologicalComplex C c ⥤ ComposableArrows C 3 where
  obj K := composableArrows₃ K i j
  map {K L} φ := ComposableArrows.homMk₃ (homologyMap φ i) (opcyclesMap φ i) (cyclesMap φ j)
    -- Disable `Fin.reduceFinMk`, otherwise `Precomp.obj_succ` does not fire. (https://github.com/leanprover-community/mathlib4/issues/27382)
    (homologyMap φ j) (by simp) (by simp [-Fin.reduceFinMk]) (by simp [-Fin.reduceFinMk])

end HomologySequence

end Preadditive

section Abelian

variable {C ι : Type*} [Category* C] [Abelian C] {c : ComplexShape ι}

set_option backward.defeqAttrib.useBackward true in
/-- If `X₁ ⟶ X₂ ⟶ X₃ ⟶ 0` is an exact sequence of homological complexes, then
`X₁.opcycles i ⟶ X₂.opcycles i ⟶ X₃.opcycles i ⟶ 0` is exact. This lemma states
the exactness at `X₂.opcycles i`, while the fact that `X₂.opcycles i ⟶ X₃.opcycles i`
is an epi is an instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant44ce11def74fdfe6c26624b8d335ad49fff2d4440c6bed50c7601cbd9ccd59a7.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cd76236f12412437d134fe5b5ba1eec7145a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
