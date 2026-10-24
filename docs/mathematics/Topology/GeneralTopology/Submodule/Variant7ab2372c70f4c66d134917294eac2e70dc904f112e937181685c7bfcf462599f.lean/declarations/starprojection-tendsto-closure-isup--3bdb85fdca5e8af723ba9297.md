# starProjection_tendsto_closure_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04adf9e649624722c3a747238d524938f47d05d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71de607c-0c0d-db50-85ee-d91c93bcf619",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1be98fc-f111-8154-738d-7ca5302fe201",
  "kind": "theorem",
  "lexical_name": "starProjection_tendsto_closure_iSup",
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
  "slug": "starprojection-tendsto-closure-isup--3bdb85fdca5e8af723ba9297",
  "source": {
    "blob": "04adf9e649624722c3a747238d524938f47d05d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bdb85fdca5e8af723ba9297e44869d380ccd72f5ab3877788f51de1b076a5b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1be98fc-f111-8154-738d-7ca5302fe201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem starProjection_tendsto_closure_iSup {ι : Type*} [Preorder ι]
    (U : ι → Submodule 𝕜 E) [∀ i, (U i).HasOrthogonalProjection]
    [(⨆ i, U i).topologicalClosure.HasOrthogonalProjection] (hU : Monotone U) (x : E) :
    Filter.Tendsto (fun i => (U i).starProjection x) atTop
      (𝓝 ((⨆ i, U i).topologicalClosure.starProjection x)) := by
  refine .of_neBot_imp fun h ↦ ?_
  cases atTop_neBot_iff.mp h
  let y := (⨆ i, U i).topologicalClosure.starProjection x
  have proj_x : ∀ i, (U i).orthogonalProjectionOnto x = (U i).orthogonalProjectionOnto y := fun i =>
    (orthogonalProjectionOnto_starProjection_of_le
        ((le_iSup U i).trans (iSup U).le_topologicalClosure) _).symm
  suffices ∀ ε > 0, ∃ I, ∀ i ≥ I, ‖(U i).starProjection y - y‖ < ε by
    simpa only [starProjection_apply, proj_x, NormedAddCommGroup.tendsto_atTop] using! this
  intro ε hε
  obtain ⟨a, ha, hay⟩ : ∃ a ∈ ⨆ i, U i, dist y a < ε := by
    have y_mem : y ∈ (⨆ i, U i).topologicalClosure := Submodule.coe_mem _
    rw [← SetLike.mem_coe, Submodule.topologicalClosure_coe, Metric.mem_closure_iff] at y_mem
    exact y_mem ε hε
  rw [dist_eq_norm] at hay
  obtain ⟨I, hI⟩ : ∃ I, a ∈ U I := by rwa [Submodule.mem_iSup_of_directed _ hU.directed_le] at ha
  refine ⟨I, fun i (hi : I ≤ i) => ?_⟩
  rw [norm_sub_rev, starProjection_minimal]
  refine lt_of_le_of_lt ?_ hay
  change _ ≤ ‖y - (⟨a, hU hi hI⟩ : U i)‖
  exact ciInf_le ⟨0, Set.forall_mem_range.mpr fun _ => norm_nonneg _⟩ _

/-- Given a monotone family `U` of complete submodules of `E` with dense span supremum,
and a fixed `x : E`, the orthogonal projection of `x` on `U i` tends to `x` along `at_top`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04adf9e649624722c3a747238d524938f47d05d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
