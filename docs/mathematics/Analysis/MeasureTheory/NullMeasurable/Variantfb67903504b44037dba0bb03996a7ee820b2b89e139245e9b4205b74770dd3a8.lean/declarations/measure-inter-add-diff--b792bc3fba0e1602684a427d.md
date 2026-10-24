# measure_inter_add_diff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b21a9ca-2874-655e-2ff3-9681b28cc7ed",
  "kind": "theorem",
  "lexical_name": "measure_inter_add_diff₀",
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
  "slug": "measure-inter-add-diff--b792bc3fba0e1602684a427d",
  "source": {
    "blob": "327229a3d2c15f376de1d05d97fbe1eb1f8bc5ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 265,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b792bc3fba0e1602684a427d1dddaa99e46af64ddc10cd0dfcaf13c14a532080",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b21a9ca-2874-655e-2ff3-9681b28cc7ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_inter_add_diff₀ (s : Set α) (ht : NullMeasurableSet t μ) :
    μ (s ∩ t) + μ (s \ t) = μ s := by
  refine le_antisymm ?_ (measure_le_inter_add_diff _ _ _)
  rcases exists_measurable_superset μ s with ⟨s', hsub, hs'm, hs'⟩
  replace hs'm : NullMeasurableSet s' μ := hs'm.nullMeasurableSet
  calc
    μ (s ∩ t) + μ (s \ t) ≤ μ (s' ∩ t) + μ (s' \ t) := by gcongr
    _ = μ (s' ∩ t ∪ s' \ t) :=
      (measure_union₀_aux (hs'm.inter ht) (hs'm.diff ht) <|
          (@disjoint_inf_sdiff _ s' t _).aedisjoint).symm
    _ = μ s' := congr_arg μ (inter_union_diff _ _)
    _ = μ s := hs'

/-- If `s` and `t` are null measurable sets of equal measure
and their intersection has finite measure,
then `s \ t` and `t \ s` have equal measures too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327229a3d2c15f376de1d05d97fbe1eb1f8bc5ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
