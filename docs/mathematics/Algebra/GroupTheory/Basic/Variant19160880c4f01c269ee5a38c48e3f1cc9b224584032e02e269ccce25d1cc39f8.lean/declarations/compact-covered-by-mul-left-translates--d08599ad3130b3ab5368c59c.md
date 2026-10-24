# compact_covered_by_mul_left_translates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f0080ff-0546-d148-b653-9be5f8e49049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89f4ecb8-b2c2-ac89-aac3-9c67501e7a69",
  "kind": "theorem",
  "lexical_name": "compact_covered_by_mul_left_translates",
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
  "slug": "compact-covered-by-mul-left-translates--d08599ad3130b3ab5368c59c",
  "source": {
    "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1676,
    "line": 1658,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08599ad3130b3ab5368c59cb96eb87dad2ef82ce15a7f601bd6a0442000c30d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89f4ecb8-b2c2-ac89-aac3-9c67501e7a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1658–1676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_covered_by_mul_left_translates {K V : Set G} (hK : IsCompact K)
    (hV : (interior V).Nonempty) : ∃ t : Finset G, K ⊆ ⋃ g ∈ t, (fun h => g * h) ⁻¹' V := by
  obtain ⟨t, ht⟩ : ∃ t : Finset G, K ⊆ ⋃ x ∈ t, interior ((· * ·) x ⁻¹' V) := by
    refine'
      hK.elim_finite_subcover (fun x => interior <| (· * ·) x ⁻¹' V) (fun x => isOpen_interior) _
    cases' hV with g₀ hg₀
    refine' fun g _ => mem_iUnion.2 ⟨g₀ * g⁻¹, _⟩
    refine' preimage_interior_subset_interior_preimage (continuous_const.mul continuous_id) _
    rwa [mem_preimage, id_def, inv_mul_cancel_right]
  exact ⟨t, Subset.trans ht <| iUnion₂_mono fun g _ => interior_subset⟩
#align compact_covered_by_mul_left_translates compact_covered_by_mul_left_translates
#align compact_covered_by_add_left_translates compact_covered_by_add_left_translates

/-- Every locally compact separable topological group is σ-compact.
  Note: this is not true if we drop the topological group hypothesis. -/
@[to_additive SeparableLocallyCompactAddGroup.sigmaCompactSpace
  "Every locally
  compact separable topological group is σ-compact.
  Note: this is not true if we drop the topological group hypothesis."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean#L1658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a280e7f399390f3ff1a54e1c573e98a615ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
