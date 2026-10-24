# edist_continuousMapMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c515a28d-ae75-7e50-85b6-3f7ba85eb6d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d112ab5-692c-6c59-9038-bf61c8490de3",
  "kind": "lemma",
  "lexical_name": "edist_continuousMapMk",
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
  "slug": "edist-continuousmapmk--7cbff0aeb233eaefd6e65056",
  "source": {
    "blob": "03ff419df7ae297373b1b0390ccc08f6ae9cb76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 177,
    "path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cbff0aeb233eaefd6e65056946ead5476a76e14b145889403a0008e7d0228e4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d112ab5-692c-6c59-9038-bf61c8490de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma edist_continuousMapMk [TopologicalSpace α] [CompactSpace α]
    {f g : α →ᵤ β} (hf : Continuous (toFun f)) (hg : Continuous (toFun g)) :
    edist (⟨_, hf⟩ : C(α, β)) ⟨_, hg⟩ = edist f g := by
  simp [← isometry_ofFun_continuousMap.edist_eq]

end Metric

end UniformFun

namespace UniformOnFun

variable {𝔖 𝔗 : Set (Set α)}

section EMetric

variable [PseudoEMetricSpace β]

/-- Let `f : γ → α →ᵤ[𝔖] β`. If for every `s ∈ 𝔖` and for every `c ∈ s`, the function
`fun x ↦ f x c` is Lipschitz (with Lipschitz constant depending on `s`), then `f` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UniformConvergence/Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03ff419df7ae297373b1b0390ccc08f6ae9cb76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
