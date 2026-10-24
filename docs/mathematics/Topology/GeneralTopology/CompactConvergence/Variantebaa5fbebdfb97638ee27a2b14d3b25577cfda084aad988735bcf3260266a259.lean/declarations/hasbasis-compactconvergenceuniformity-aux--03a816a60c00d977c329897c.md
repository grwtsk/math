# hasBasis_compactConvergenceUniformity_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3240f22e93d7462b3ec97d0ddc704ac9d515fb66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:718d2732-8629-1a70-f04d-40e50e33a6a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9463f26-24c7-699b-af78-f5cf622dbee8",
  "kind": "theorem",
  "lexical_name": "hasBasis_compactConvergenceUniformity_aux",
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
  "slug": "hasbasis-compactconvergenceuniformity-aux--03a816a60c00d977c329897c",
  "source": {
    "blob": "3240f22e93d7462b3ec97d0ddc704ac9d515fb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a816a60c00d977c329897c9c45babc3d029f11a1c224721a4d3b54c4b2fea3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9463f26-24c7-699b-af78-f5cf622dbee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_compactConvergenceUniformity_aux :
    HasBasis (@compactConvergenceUniformity α β _ _)
      (fun p : Set α × Set (β × β) => IsCompact p.1 ∧ p.2 ∈ 𝓤 β) fun p =>
      { fg : C(α, β) × C(α, β) | ∀ x ∈ p.1, (fg.1 x, fg.2 x) ∈ p.2 } := by
  refine' Filter.hasBasis_biInf_principal _ compactConvNhd_compact_entourage_nonempty
  rintro ⟨K₁, V₁⟩ ⟨hK₁, hV₁⟩ ⟨K₂, V₂⟩ ⟨hK₂, hV₂⟩
  refine' ⟨⟨K₁ ∪ K₂, V₁ ∩ V₂⟩, ⟨hK₁.union hK₂, Filter.inter_mem hV₁ hV₂⟩, _⟩
  simp only [le_eq_subset, Prod.forall, setOf_subset_setOf, ge_iff_le, Order.Preimage, ←
    forall_and, mem_inter_iff, mem_union]
  exact fun f g => forall_imp fun x => by tauto
#align continuous_map.has_basis_compact_convergence_uniformity_aux ContinuousMap.hasBasis_compactConvergenceUniformity_aux

/-- An intermediate lemma. Usually `ContinuousMap.mem_compactConvergence_entourage_iff` is more
useful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3240f22e93d7462b3ec97d0ddc704ac9d515fb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
