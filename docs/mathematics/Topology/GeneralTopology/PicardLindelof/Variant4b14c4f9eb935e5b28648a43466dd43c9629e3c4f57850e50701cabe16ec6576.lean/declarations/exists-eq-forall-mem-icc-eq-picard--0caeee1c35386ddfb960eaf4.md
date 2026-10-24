# exists_eq_forall_mem_Icc_eq_picard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 720,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d2c0490-ed6c-f40c-13bd-7031df0de3ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ee408c1-46bb-c9fc-464b-6daa9fd8ae40",
  "kind": "theorem",
  "lexical_name": "exists_eq_forall_mem_Icc_eq_picard",
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
  "slug": "exists-eq-forall-mem-icc-eq-picard--0caeee1c35386ddfb960eaf4",
  "source": {
    "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 720,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0caeee1c35386ddfb960eaf4b46c6fd62b8fd70b92f976aebadf7f9f9d50a661",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ee408c1-46bb-c9fc-464b-6daa9fd8ae40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_forall_mem_Icc_eq_picard
    (hf : IsPicardLindelof f t₀ x₀ a r L K) (hx : x ∈ closedBall x₀ r) :
    ∃ α : ℝ → E, α t₀ = x ∧ ∀ t ∈ Icc tmin tmax, α t = ODE.picard f t₀ x α t := by
  obtain ⟨α, hα⟩ := FunSpace.exists_isFixedPt_next hf hx
  refine ⟨(FunSpace.next hf hx α).compProj, by simp, fun t ht ↦ ?_⟩
  rw [FunSpace.compProj_apply, FunSpace.next_apply, hα, projIcc_of_mem _ ht]

end IsPicardLindelof
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd2276d677e667f58c96e09126c3cafb8bb4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
