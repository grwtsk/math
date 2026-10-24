# Convex.sdiff_singleton_eventually_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e6d194decf07da342fd999735eb7bf45c7e227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:feb7c139-9b20-91e1-20e6-c55024202884",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:744ad7cd-1aa8-8259-5a19-03926f103d96",
  "kind": "theorem",
  "lexical_name": "Convex.sdiff_singleton_eventually_mem_nhds",
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
  "slug": "convex-sdiff-singleton-eventually-mem-nhds--d785b200c283d9c890246ae9",
  "source": {
    "blob": "59e6d194decf07da342fd999735eb7bf45c7e227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 493,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d785b200c283d9c890246ae91f5cb1a5825df7257b05008c80bd1b0a88e50e42",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:744ad7cd-1aa8-8259-5a19-03926f103d96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.sdiff_singleton_eventually_mem_nhds {s : Set 𝕜} (hs : Convex 𝕜 s) (a : 𝕜) :
    ∀ᶠ x in 𝓝[s \ {a}] a, s \ {a} ∈ 𝓝 x := by
  rcases eq_or_neBot (𝓝[s \ {a}] a) with h | has
  · rw [h]
    exact eventually_bot
  replace has := closure_mono sdiff_subset (mem_closure_iff_nhdsWithin_neBot.2 has)
  conv in 𝓝[s \ {a}] a => rw [sdiff_eq, ← Iio_union_Ioi, inter_union_distrib_left]
  rw [nhdsWithin_union, eventually_sup]
  exact ⟨sdiff_singleton_eventually_mem_nhds_left fun x hx ↦ hs.Ioo_subset_of_mem_closure hx has,
    sdiff_singleton_eventually_mem_nhds_left (𝕜 := 𝕜ᵒᵈ) fun x hx z hz ↦
      hs.Ioo_subset_of_mem_closure has hx hz.symm⟩

@[deprecated (since := "2026-06-03")]
alias Convex.diff_singleton_eventually_mem_nhds := Convex.sdiff_singleton_eventually_mem_nhds

end LinearOrderedField

namespace Affine.Simplex

variable {𝕜 V P : Type*}
  [Field 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜] [TopologicalSpace 𝕜]
  [OrderClosedTopology 𝕜] [CompactIccSpace 𝕜] [IsTopologicalRing 𝕜]
  [AddCommGroup V] [TopologicalSpace V] [IsTopologicalAddGroup V]
  [Module 𝕜 V] [ContinuousSMul 𝕜 V] [AddTorsor V P]
  [TopologicalSpace P] [IsTopologicalAddTorsor P]

set_option backward.isDefEq.respectTransparency false in
/-- The closed interior of a simplex is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant0799cd94b1675fb6b24a834ef1cae916fa68dcd87e03c9d6f0720057b85e9c84.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e6d194decf07da342fd999735eb7bf45c7e227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
