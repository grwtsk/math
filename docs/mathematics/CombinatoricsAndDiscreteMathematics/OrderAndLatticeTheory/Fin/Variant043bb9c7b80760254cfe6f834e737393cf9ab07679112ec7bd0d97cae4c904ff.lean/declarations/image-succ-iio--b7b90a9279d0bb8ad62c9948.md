# image_succ_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:166c9e3f-10f7-756e-b530-ecb34a9f6856",
  "kind": "theorem",
  "lexical_name": "image_succ_Iio",
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
  "slug": "image-succ-iio--b7b90a9279d0bb8ad62c9948",
  "source": {
    "blob": "810039dade4e47184ee4afde025931d641ad0848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 764,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant043bb9c7b80760254cfe6f834e737393cf9ab07679112ec7bd0d97cae4c904ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7b90a9279d0bb8ad62c99484628c9caf3e86e30c12770a1cd64ca43481d333d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant043bb9c7b80760254cfe6f834e737393cf9ab07679112ec7bd0d97cae4c904ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:166c9e3f-10f7-756e-b530-ecb34a9f6856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_succ_Iio (i : Fin n) : succ '' Iio i = Ioo 0 i.succ := by
  refine Subset.antisymm (image_subset_iff.mpr fun j hj ↦ ⟨j.succ_pos, succ_lt_succ_iff.2 hj⟩) ?_
  rintro j ⟨hj₀, hj⟩
  rcases exists_succ_eq_of_ne_zero hj₀.ne' with ⟨j, rfl⟩
  exact mem_image_of_mem _ <| succ_lt_succ_iff.mp hj

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant043bb9c7b80760254cfe6f834e737393cf9ab07679112ec7bd0d97cae4c904ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fin/Variant043bb9c7b80760254cfe6f834e737393cf9ab07679112ec7bd0d97cae4c904ff.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810039dade4e47184ee4afde025931d641ad0848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
