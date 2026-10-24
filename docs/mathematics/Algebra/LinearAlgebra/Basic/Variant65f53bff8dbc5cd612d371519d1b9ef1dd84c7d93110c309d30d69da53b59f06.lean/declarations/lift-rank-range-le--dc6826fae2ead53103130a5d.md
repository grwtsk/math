# lift_rank_range_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95e37fb2-22c2-c375-8491-4773136ce93f",
  "kind": "theorem",
  "lexical_name": "lift_rank_range_le",
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
  "slug": "lift-rank-range-le--dc6826fae2ead53103130a5d",
  "source": {
    "blob": "513347a9801998659f8f17c4f575144d128f82c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 296,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6826fae2ead53103130a5d784514705b478604aeea772d353be2948a90f185",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95e37fb2-22c2-c375-8491-4773136ce93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_rank_range_le (f : M →ₗ[R] M') : Cardinal.lift.{v}
    (Module.rank R (LinearMap.range f)) ≤ Cardinal.lift.{v'} (Module.rank R M) := by
  simp only [Module.rank_def]
  rw [Cardinal.lift_iSup (Cardinal.bddAbove_range _)]
  apply ciSup_le'
  rintro ⟨s, li⟩
  apply le_trans
  swap
  · apply Cardinal.lift_le.mpr
    refine le_ciSup (Cardinal.bddAbove_range _) ⟨rangeSplitting f '' s, ?_⟩
    apply LinearIndependent.of_comp f.rangeRestrict
    convert li.comp (Equiv.Set.rangeSplittingImageEquiv f s) (Equiv.injective _) using 1
  · exact (Cardinal.lift_mk_eq'.mpr ⟨Equiv.Set.rangeSplittingImageEquiv f s⟩).ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `513347a9801998659f8f17c4f575144d128f82c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
