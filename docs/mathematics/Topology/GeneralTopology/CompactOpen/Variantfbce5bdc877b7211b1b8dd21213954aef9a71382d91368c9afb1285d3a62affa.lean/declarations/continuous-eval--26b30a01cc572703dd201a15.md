# continuous_eval'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b917ca96-1260-53c9-781b-be288fbdde37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd32a4d2-d99d-4f84-f5dc-c4d8dc5e6959",
  "kind": "theorem",
  "lexical_name": "continuous_eval'",
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
  "slug": "continuous-eval--26b30a01cc572703dd201a15",
  "source": {
    "blob": "15503c9e88d9b8ae31b570bd697c92899c165c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b30a01cc572703dd201a15458af0775d39642c55910970afcf9f68307ff185",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd32a4d2-d99d-4f84-f5dc-c4d8dc5e6959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_eval' [LocallyCompactSpace α] : Continuous fun p : C(α, β) × α => p.1 p.2 :=
  continuous_iff_continuousAt.mpr fun ⟨f, x⟩ n hn =>
    let ⟨v, vn, vo, fxv⟩ := mem_nhds_iff.mp hn
    have : v ∈ 𝓝 (f x) := IsOpen.mem_nhds vo fxv
    let ⟨s, hs, sv, sc⟩ :=
      LocallyCompactSpace.local_compact_nhds x (f ⁻¹' v) (f.continuous.tendsto x this)
    let ⟨u, us, uo, xu⟩ := mem_nhds_iff.mp hs
    show (fun p : C(α, β) × α => p.1 p.2) ⁻¹' n ∈ 𝓝 (f, x) from
      let w := CompactOpen.gen s v ×ˢ u
      have : w ⊆ (fun p : C(α, β) × α => p.1 p.2) ⁻¹' n := fun ⟨f', x'⟩ ⟨hf', hx'⟩ =>
        vn <| hf' <| mem_image_of_mem f' (us hx')
        --Porting note: The following `calc` block fails here.
        --calc
        --  f' x' ∈ f' '' s := mem_image_of_mem f' (us hx')
        --  _ ⊆ v := hf'
        --  _ ⊆ n := vn

      have : IsOpen w := (ContinuousMap.isOpen_gen sc vo).prod uo
      have : (f, x) ∈ w := ⟨image_subset_iff.mpr sv, xu⟩
      mem_nhds_iff.mpr ⟨w, by assumption, by assumption, by assumption⟩
#align continuous_map.continuous_eval' ContinuousMap.continuous_eval'

/-- Evaluation of a continuous map `f` at a point `a` is continuous in `f`.

Porting note: merged `continuous_eval_const` with `continuous_eval_const'` removing unneeded
assumptions. -/
@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantfbce5bdc877b7211b1b8dd21213954aef9a71382d91368c9afb1285d3a62affa.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15503c9e88d9b8ae31b570bd697c92899c165c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
