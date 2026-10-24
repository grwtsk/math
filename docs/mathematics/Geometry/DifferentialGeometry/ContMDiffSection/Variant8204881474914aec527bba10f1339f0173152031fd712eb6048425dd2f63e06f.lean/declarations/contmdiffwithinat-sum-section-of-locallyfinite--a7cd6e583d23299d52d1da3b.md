# ContMDiffWithinAt.sum_section_of_locallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "372604a04b7a7c9d8aef0d6d564e9f8d6d596335",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98b0f8ca-3b78-3a75-e3f3-0248c8313cfd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23b02441-8031-c052-48d8-7c67315202d6",
  "kind": "lemma",
  "lexical_name": "ContMDiffWithinAt.sum_section_of_locallyFinite",
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
  "slug": "contmdiffwithinat-sum-section-of-locallyfinite--a7cd6e583d23299d52d1da3b",
  "source": {
    "blob": "372604a04b7a7c9d8aef0d6d564e9f8d6d596335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 200,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7cd6e583d23299d52d1da3b52173afc7298ae523d0d622f373116508c151a45",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23b02441-8031-c052-48d8-7c67315202d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiffWithinAt.sum_section_of_locallyFinite
    (ht : LocallyFinite fun i ↦ {x : M | t i x ≠ 0})
    (ht' : ∀ i, CMDiffAt[u] n (T% (t i ·)) x₀) :
    CMDiffAt[u] n (T% (fun x ↦ ∑' i, (t i x))) x₀ := by
  obtain ⟨u', hu', hfin⟩ := ht x₀
  -- All sections `t i` but a finite set `s` vanish near `x₀`: choose a neighbourhood `u` of `x₀`
  -- and a finite set `s` of sections which don't vanish.
  let s := {i | ((fun i ↦ {x | t i x ≠ 0}) i ∩ u').Nonempty}
  have := hfin.fintype
  have : CMDiffAt[u ∩ u'] n (T% (fun x ↦ (∑ i ∈ s, (t i x)))) x₀ :=
    .sum_section fun i hi ↦ ((ht' i).mono Set.inter_subset_left)
  apply (contMDiffWithinAt_inter hu').mp
  apply this.congr fun y hy ↦ ?_
  · rw [TotalSpace.mk_inj, tsum_eq_sum']
    refine support_subset_iff'.mpr fun i hi ↦ ?_
    by_contra! h
    have : i ∈ s.toFinset := by
      refine Set.mem_toFinset.mpr ?_
      simp only [s, ne_eq, Set.mem_ofPred_eq]
      use x₀
      simpa using ⟨h, mem_of_mem_nhds hu'⟩
    exact hi this
  rw [TotalSpace.mk_inj, tsum_eq_sum']
  refine support_subset_iff'.mpr fun i hi ↦ ?_
  by_contra! h
  have : i ∈ s.toFinset := by
    refine Set.mem_toFinset.mpr ?_
    simp only [s, ne_eq, Set.mem_ofPred_eq]
    use y
    simpa using ⟨h, Set.mem_of_mem_inter_right hy⟩
  exact hi this

/-- The sum of a locally finite collection of sections is `C^k` at `x` iff each section is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffSection/Variant8204881474914aec527bba10f1339f0173152031fd712eb6048425dd2f63e06f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372604a04b7a7c9d8aef0d6d564e9f8d6d596335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
