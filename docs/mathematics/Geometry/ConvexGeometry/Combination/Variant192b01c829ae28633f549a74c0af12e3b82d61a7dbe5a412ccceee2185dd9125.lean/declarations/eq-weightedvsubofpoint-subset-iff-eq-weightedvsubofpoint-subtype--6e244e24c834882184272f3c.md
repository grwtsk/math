# eq_weightedVSubOfPoint_subset_iff_eq_weightedVSubOfPoint_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6b9e7bd-9564-b220-2f62-72ce9654ba14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dc2f2de-01d8-5d9d-2783-90a51629e529",
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
  "slug": "eq-weightedvsubofpoint-subset-iff-eq-weightedvsubofpoint-subtype--6e244e24c834882184272f3c",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 520,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e244e24c834882184272f3ce85157c32fd7327007f61ea7df22fd8082bc3ae5",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dc2f2de-01d8-5d9d-2783-90a51629e529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–543.

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

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
