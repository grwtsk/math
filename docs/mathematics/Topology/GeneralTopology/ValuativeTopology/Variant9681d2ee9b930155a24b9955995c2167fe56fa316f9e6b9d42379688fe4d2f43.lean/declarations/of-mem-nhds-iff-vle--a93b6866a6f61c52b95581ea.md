# of_mem_nhds_iff_vle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4cf09f93bf16d223bd5e106fb4758e780a28df5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc9b3887-51b3-c6e6-595f-66cd731e09f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eae3ad67-fa27-9008-a6fb-81a5b9f0eab1",
  "kind": "theorem",
  "lexical_name": "of_mem_nhds_iff_vle",
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
  "slug": "of-mem-nhds-iff-vle--a93b6866a6f61c52b95581ea",
  "source": {
    "blob": "e4cf09f93bf16d223bd5e106fb4758e780a28df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93b6866a6f61c52b95581ea60524424054be8f9251b230a4693862fcde46e79",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae3ad67-fa27-9008-a6fb-81a5b9f0eab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mem_nhds_iff_vle (H : ∀ {s : Set R} {x : R}, s ∈ 𝓝 x ↔
    ∃ (γ : (ValueGroup₀ (.ofClass v))ˣ), {z : R | v.restrict (z - x) < γ} ⊆ s) :
    IsValuativeTopology R := by
  constructor
  refine fun {s x} ↦ ⟨fun h_mem ↦ ?_, fun ⟨γ, hγ⟩ ↦
    H.mpr ⟨.mk0 ((orderMonoidIso v) γ) (by simp), subset_trans (by simp [neg_add_eq_sub]) hγ⟩⟩
  obtain ⟨γ, hγ⟩ := H.mp h_mem
  exact ⟨.mk0 ((orderMonoidIso v).symm γ) (by simp), subset_trans (by simp [neg_add_eq_sub]) hγ⟩

open scoped Pointwise in
/-- In a topological group, if the neighborhoods of zero are defined by a valuation `v` compatible
with the valuative relation, then the underlying topology is valuative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cf09f93bf16d223bd5e106fb4758e780a28df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
