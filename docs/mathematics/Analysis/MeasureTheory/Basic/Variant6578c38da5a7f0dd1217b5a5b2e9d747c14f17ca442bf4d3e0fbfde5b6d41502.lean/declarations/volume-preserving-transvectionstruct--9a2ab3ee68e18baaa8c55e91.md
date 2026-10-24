# volume_preserving_transvectionStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c421779c-e17e-2535-28a6-dab2b07e0c42",
  "kind": "theorem",
  "lexical_name": "volume_preserving_transvectionStruct",
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
  "slug": "volume-preserving-transvectionstruct--9a2ab3ee68e18baaa8c55e91",
  "source": {
    "blob": "3b07f9e776b5119e22ac0ac9c3289c3c6eda1e5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 391,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2ab3ee68e18baaa8c55e91c9b5561620f7168b9d9908b9956f96741fec8259",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c421779c-e17e-2535-28a6-dab2b07e0c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_preserving_transvectionStruct [DecidableEq ι] (t : TransvectionStruct ι ℝ) :
    MeasurePreserving (toLin' t.toMatrix) := by
  /- We use `lmarginal` to conveniently use Fubini's theorem.
    Along the coordinate where there is a shearing, it acts like a
    translation, and therefore preserves Lebesgue. -/
  have ht : Measurable (toLin' t.toMatrix) :=
    (toLin' t.toMatrix).continuous_of_finiteDimensional.measurable
  refine ⟨ht, ?_⟩
  refine (pi_eq fun s hs ↦ ?_).symm
  have h2s : MeasurableSet (univ.pi s) := .pi countable_univ fun i _ ↦ hs i
  simp_rw [← pi_pi, ← lintegral_indicator_one h2s]
  rw [lintegral_map (measurable_one.indicator h2s) ht, volume_pi]
  refine lintegral_eq_of_lmarginal_eq {t.i} ((measurable_one.indicator h2s).comp ht)
    (measurable_one.indicator h2s) ?_
  simp_rw [lmarginal_singleton]
  ext x
  cases t with | mk t_i t_j t_hij t_c =>
  simp [transvection, single_mulVec, t_hij.symm, ← Function.update_add,
    lintegral_add_right_eq_self fun xᵢ ↦ indicator (univ.pi s) 1 (Function.update x t_i xᵢ)]

/-- Any invertible matrix rescales Lebesgue measure through the absolute value of its
determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant6578c38da5a7f0dd1217b5a5b2e9d747c14f17ca442bf4d3e0fbfde5b6d41502.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b07f9e776b5119e22ac0ac9c3289c3c6eda1e5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
