# Pi.mem_span_range_single_inl_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6165a4ba-9e65-6cfb-7fc1-501439c90476",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5715f438-360c-44cd-00f9-2a26270433dd",
  "kind": "lemma",
  "lexical_name": "Pi.mem_span_range_single_inl_iff",
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
  "slug": "pi-mem-span-range-single-inl-iff--e7ce85694b86868c2dac5c01",
  "source": {
    "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 651,
    "line": 629,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7ce85694b86868c2dac5c01d5ca0649775511ea7424539b385354ed598ab260",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5715f438-360c-44cd-00f9-2a26270433dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi.mem_span_range_single_inl_iff
    [DecidableEq ι] [DecidableEq ι'] [Finite ι] [Semiring R] {x : ι ⊕ ι' → R} :
    x ∈ span R (Set.range fun i ↦ single (Sum.inl i) 1) ↔ ∀ k, x (Sum.inr k) = 0 := by
  refine ⟨fun hx k ↦ ?_, fun hx ↦ ?_⟩
  · induction hx using span_induction with
    | mem x h => obtain ⟨i, rfl⟩ := h; simp
    | zero => simp
    | add u v _ _ hu hv => simp [hu, hv]
    | smul t u _ hu => simp [hu]
  · have := Fintype.ofFinite ι
    suffices x = ∑ i : ι, x (Sum.inl i) • Pi.single (M := fun _ ↦ R) (Sum.inl i) (1 : R) by
      rw [this]
      exact sum_mem <| fun i _ ↦ SMulMemClass.smul_mem _ <| subset_span <| Set.mem_range_self i
    ext (i | i)
    · simp [single_apply]
    · simp [hx i]

section Extend

variable (R) {η : Type*} [Semiring R] (s : ι → η)

/-- `Function.extend s f 0` as a bundled linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb28df575bc416f6a7820f54d0bab7e056f2dba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
