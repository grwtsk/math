# isVonNBounded_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3f1ae11-748a-c441-d011-042583e63e1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb6b7e37-e7b3-3273-3289-ffd13a589bd6",
  "kind": "theorem",
  "lexical_name": "isVonNBounded_iff",
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
  "slug": "isvonnbounded-iff--4d3bad9a5ea0d0a420de6ef4",
  "source": {
    "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d3bad9a5ea0d0a420de6ef4c2bf2e40dee9de125a38e329d5dc07fdf8a6dd32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6b7e37-e7b3-3273-3289-ffd13a589bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isVonNBounded_iff {R : Type*} [NormedDivisionRing R]
    [TopologicalSpace F] [IsTopologicalAddGroup F]
    [Module R F] [ContinuousConstSMul R F] [SMulCommClass 𝕜₂ R F]
    {𝔖 : Set (Set E)} {S : Set (UniformConvergenceCLM σ F 𝔖)} :
    IsVonNBounded R S ↔ ∀ s ∈ 𝔖, IsVonNBounded R (Set.image2 (fun f x ↦ f x) S s) := by
  refine ⟨fun hS s hs ↦ isVonNBounded_image2_apply hS hs, fun h ↦ ?_⟩
  simp_rw [isVonNBounded_iff_absorbing_le, nhds_zero_eq, le_iInf_iff, le_principal_iff]
  intro s hs U hU
  rw [Filter.mem_absorbing, Absorbs]
  filter_upwards [h s hs hU, eventually_ne_cobounded 0] with c hc hc₀ f hf
  rw [mem_smul_set_iff_inv_smul_mem₀ hc₀]
  intro x hx
  simpa only [mem_smul_set_iff_inv_smul_mem₀ hc₀] using hc (mem_image2_of_mem hf hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c07d5b7c25520a8e1d73f1818fd6138d3bf304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
