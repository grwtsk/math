# measure_iUnion₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79059c0d-bb68-e54a-ccc6-9592b3834de0",
  "kind": "theorem",
  "lexical_name": "measure_iUnion₀",
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
  "slug": "measure-iunion--3ebc0b59a4354e2bb04797eb",
  "source": {
    "blob": "327229a3d2c15f376de1d05d97fbe1eb1f8bc5ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 250,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ebc0b59a4354e2bb04797eb8975b3416d66c40aa975a7dc0678dc77b62da64f",
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

Occurrence: `result:79059c0d-bb68-e54a-ccc6-9592b3834de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_iUnion₀ [Countable ι] {f : ι → Set α} (hd : Pairwise (AEDisjoint μ on f))
    (h : ∀ i, NullMeasurableSet (f i) μ) : μ (⋃ i, f i) = ∑' i, μ (f i) := by
  rcases exists_subordinate_pairwise_disjoint h hd with ⟨t, _ht_sub, ht_eq, htm, htd⟩
  calc
    μ (⋃ i, f i) = μ (⋃ i, t i) := measure_congr (EventuallyEq.countable_iUnion ht_eq)
    _ = ∑' i, μ (t i) := measure_iUnion htd htm
    _ = ∑' i, μ (f i) := tsum_congr fun i => measure_congr (ht_eq _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variantfb67903504b44037dba0bb03996a7ee820b2b89e139245e9b4205b74770dd3a8.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `327229a3d2c15f376de1d05d97fbe1eb1f8bc5ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
