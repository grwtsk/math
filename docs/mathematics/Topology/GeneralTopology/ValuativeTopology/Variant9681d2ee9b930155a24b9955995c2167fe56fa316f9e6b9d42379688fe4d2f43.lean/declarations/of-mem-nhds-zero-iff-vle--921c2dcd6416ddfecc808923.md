# of_mem_nhds_zero_iff_vle

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
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3eab7368-bb3d-b5d8-72c0-ee03283ed2d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7b654bd-a95d-aa9b-d4c4-f5d6d6c6bcd8",
  "kind": "theorem",
  "lexical_name": "of_mem_nhds_zero_iff_vle",
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
  "slug": "of-mem-nhds-zero-iff-vle--921c2dcd6416ddfecc808923",
  "source": {
    "blob": "e4cf09f93bf16d223bd5e106fb4758e780a28df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:921c2dcd6416ddfecc80892307573ff38809ffed1313190b77e8a24071b28328",
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

Occurrence: `result:e7b654bd-a95d-aa9b-d4c4-f5d6d6c6bcd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_mem_nhds_zero_iff_vle [IsTopologicalAddGroup R]
    (H : ∀ {s : Set R}, s ∈ 𝓝 0 ↔ ∃ (γ : (ValueGroup₀ (.ofClass v))ˣ),
    {z : R | v.restrict z < γ} ⊆ s) : IsValuativeTopology R := by
  apply of_mem_nhds_iff_vle v (fun {s x} ↦ ?_)
  rw [← vadd_mem_nhds_vadd_iff (g := -x)]
  simp only [vadd_eq_add, neg_add_cancel, H, subset_vadd_set_iff, neg_neg]
  suffices ∀ (γ : (ValueGroup₀ (.ofClass v))ˣ), (x +ᵥ {z | v.restrict z < ↑γ}) =
    {a | v.restrict (-x + a) < ↑γ} by simp_all [neg_add_eq_sub]
  simp [Set.ext_iff, mem_vadd_set_iff_neg_vadd_mem]

variable [IsValuativeTopology R]

/-- A variant of `IsValuativeTopology.mem_nhds_iff` using subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant9681d2ee9b930155a24b9955995c2167fe56fa316f9e6b9d42379688fe4d2f43.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4cf09f93bf16d223bd5e106fb4758e780a28df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
