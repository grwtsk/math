# eq_weightedVSubOfPoint_subset_iff_eq_weightedVSubOfPoint_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:609278d5-2e65-c721-00b7-ddd9815ab47f",
  "kind": "theorem",
  "lexical_name": "eq_weightedVSubOfPoint_subset_iff_eq_weightedVSubOfPoint_subtype",
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
  "slug": "eq-weightedvsubofpoint-subset-iff-eq-weightedvsubofpoint-subtype--1125d94938cefd56b785dbad",
  "source": {
    "blob": "065af88e6049f15a6c0c15394f42a0a8b9bfbd6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 528,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1125d94938cefd56b785dbad6d5814031354911469098c6f90523a5146e5ffeb",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:609278d5-2e65-c721-00b7-ddd9815ab47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_weightedVSubOfPoint_subset_iff_eq_weightedVSubOfPoint_subtype {v : V} {x : k} {s : Set ι}
    {p : ι → P} {b : P} :
    (∃ fs : Finset ι, ↑fs ⊆ s ∧ ∃ w : ι → k, ∑ i ∈ fs, w i = x ∧
        v = fs.weightedVSubOfPoint p b w) ↔
      ∃ (fs : Finset s) (w : s → k), ∑ i ∈ fs, w i = x ∧
        v = fs.weightedVSubOfPoint (fun i : s => p i) b w := by
  classical
    simp_rw [weightedVSubOfPoint_apply]
    constructor
    · rintro ⟨fs, hfs, w, rfl, rfl⟩
      exact ⟨fs.subtype (· ∈ s), fun i => w i, sum_subtype_of_mem _ hfs,
        (sum_subtype_of_mem _ hfs).symm⟩
    · rintro ⟨fs, w, rfl, rfl⟩
      refine ⟨fs.map (Function.Embedding.subtype _), map_subtype_subset _, fun i =>
        if h : i ∈ s then w ⟨i, h⟩ else 0, ?_, ?_⟩ <;> simp

variable (k)

/-- Suppose an indexed family of points is given, along with a subset
of the index type.  A vector can be expressed as `weightedVSub` using
a `Finset` lying within that subset and with sum of weights 0 if and
only if it can be expressed as `weightedVSub` with sum of weights 0
for the corresponding indexed family whose index type is the subtype
corresponding to that subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant392d785308a5822027e0004c1837c9fe03c655646893c76859c05aa6bc2900da.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065af88e6049f15a6c0c15394f42a0a8b9bfbd6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
