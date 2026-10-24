# preimage_eventuallyEqSet_target_inter_preimage_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54b56e1b8b657b0417e16ed2e823b6f8aa757f03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d45f859353b036326619ce4bc01f6f1e5dc27396413151beae857706dbb5bfc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d21ff390-a565-1650-b799-9525f13c1a7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f666444-6498-af73-a50a-ef373a914bdf",
  "kind": "theorem",
  "lexical_name": "preimage_eventuallyEqSet_target_inter_preimage_inter",
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
  "slug": "preimage-eventuallyeqset-target-inter-preimage-inter--b64d6a0a7d2e819d6a68bdb3",
  "source": {
    "blob": "54b56e1b8b657b0417e16ed2e823b6f8aa757f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd45f859353b036326619ce4bc01f6f1e5dc27396413151beae857706dbb5bfc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64d6a0a7d2e819d6a68bdb3afb33c515382fdbd769342c3d62626f5fc97251e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd45f859353b036326619ce4bc01f6f1e5dc27396413151beae857706dbb5bfc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f666444-6498-af73-a50a-ef373a914bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_eventuallyEqSet_target_inter_preimage_inter {e : OpenPartialHomeomorph X Y}
    {s : Set X} {t : Set Z} {x : X} {f : X → Z} (hf : ContinuousWithinAt f s x) (hxe : x ∈ e.source)
    (ht : t ∈ 𝓝 (f x)) :
    e.symm ⁻¹' s =ᶠ[𝓝 (e x)] e.target ∩ e.symm ⁻¹' (s ∩ f ⁻¹' t) := by
  rw [eventuallyEqSet_iff, e.eventually_nhds _ hxe]
  filter_upwards [e.open_source.mem_nhds hxe,
    mem_nhdsWithin_iff_eventually.mp (hf.preimage_mem_nhdsWithin ht)]
  intro y hy hyu
  simp_rw [mem_inter_iff, mem_preimage, mem_inter_iff, e.mapsTo hy, true_and, iff_self_and,
    e.left_inv hy, iff_true_intro hyu]

@[deprecated (since := "2026-08-14")]
alias preimage_eventuallyEq_target_inter_preimage_inter :=
  preimage_eventuallyEqSet_target_inter_preimage_inter

section Continuity

/-- Continuity within a set at a point can be read under right composition with a local
homeomorphism, if the point is in its target -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd45f859353b036326619ce4bc01f6f1e5dc27396413151beae857706dbb5bfc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd45f859353b036326619ce4bc01f6f1e5dc27396413151beae857706dbb5bfc8.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b56e1b8b657b0417e16ed2e823b6f8aa757f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
