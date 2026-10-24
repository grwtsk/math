# map_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e30bf6-e864-78ec-ddaa-21b532623e6d",
  "kind": "theorem",
  "lexical_name": "map_algebraMap",
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
  "slug": "map-algebramap--c2e45aa8feacf429bf6395a9",
  "source": {
    "blob": "e0707c831e6951196dacbd8cf8257a0a45c285e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 114,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e45aa8feacf429bf6395a98ec785a39f03ac70ea9374fa4b8b0d99b2dd5058",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e30bf6-e864-78ec-ddaa-21b532623e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_algebraMap {F E A : Type*} [Field F] [Field E] [CommRing A]
    [Algebra F E] [Algebra E A] [Algebra F A] [IsScalarTower F E A]
    {a : A} (ha : IsIntegral F a) (h : minpoly E a ∈ lifts (algebraMap F E)) :
    (minpoly F a).map (algebraMap F E) = minpoly E a := by
  refine eq_of_monic_of_dvd_of_natDegree_le (minpoly.monic ha.tower_top)
    ((algebraMap F E).injective.monic_map_iff.mp <| minpoly.monic ha)
    (minpoly.dvd E a (by simp)) ?_
  obtain ⟨g, hg, hgdeg, hgmon⟩ := lifts_and_natDegree_eq_and_monic h (minpoly.monic ha.tower_top)
  rw [natDegree_map, ← hgdeg]
  refine natDegree_le_of_dvd (minpoly.dvd F a ?_) hgmon.ne_zero
  rw [← aeval_map_algebraMap A, IsScalarTower.algebraMap_eq F E A, ← coe_mapRingHom,
    ← mapRingHom_comp, RingHom.comp_apply, coe_mapRingHom, coe_mapRingHom, hg,
    aeval_map_algebraMap, minpoly.aeval]

/-- See also `minpoly.ker_eval` which relaxes the assumptions on `A` in exchange for
stronger assumptions on `B`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0707c831e6951196dacbd8cf8257a0a45c285e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
