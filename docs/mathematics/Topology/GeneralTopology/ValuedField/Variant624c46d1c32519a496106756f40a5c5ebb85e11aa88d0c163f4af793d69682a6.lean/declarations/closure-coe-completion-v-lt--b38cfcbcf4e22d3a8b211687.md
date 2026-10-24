# closure_coe_completion_v_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9d17b43-1e48-03f2-6367-b6c2769a5d40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ac156c-5120-7c11-dc78-a3b460563339",
  "kind": "theorem",
  "lexical_name": "closure_coe_completion_v_lt",
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
  "slug": "closure-coe-completion-v-lt--b38cfcbcf4e22d3a8b211687",
  "source": {
    "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 320,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b38cfcbcf4e22d3a8b211687142b82b149da652ec46719405e41fe44f0df5505",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ac156c-5120-7c11-dc78-a3b460563339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_coe_completion_v_lt {γ : Γ₀ˣ} :
    closure ((↑) '' { x : K | v x < (γ : Γ₀) }) =
    { x : hat K | extensionValuation x < (γ : Γ₀) } := by
  ext x
  let γ₀ := extensionValuation x
  suffices γ₀ ≠ 0 → (x ∈ closure ((↑) '' { x : K | v x < (γ : Γ₀) }) ↔ γ₀ < (γ : Γ₀)) by
    cases' eq_or_ne γ₀ 0 with h h
    · simp only [h, (Valuation.zero_iff _).mp h, mem_setOf_eq, Valuation.map_zero, Units.zero_lt,
        iff_true_iff]
      apply subset_closure
      exact ⟨0, by simp only [mem_setOf_eq, Valuation.map_zero, Units.zero_lt, true_and_iff]; rfl ⟩
    · exact this h
  intro h
  have hγ₀ : extension ⁻¹' {γ₀} ∈ 𝓝 x :=
    continuous_extension.continuousAt.preimage_mem_nhds
      (WithZeroTopology.singleton_mem_nhds_of_ne_zero h)
  rw [mem_closure_iff_nhds']
  refine' ⟨fun hx => _, fun hx s hs => _⟩
  · obtain ⟨⟨-, y, hy₁ : v y < (γ : Γ₀), rfl⟩, hy₂⟩ := hx _ hγ₀
    replace hy₂ : v y = γ₀
    · simpa using hy₂
    rwa [← hy₂]
  · obtain ⟨y, hy₁, hy₂⟩ := Completion.denseRange_coe.mem_nhds (inter_mem hγ₀ hs)
    replace hy₁ : v y = γ₀
    · simpa using hy₁
    rw [← hy₁] at hx
    exact ⟨⟨y, ⟨y, hx, rfl⟩⟩, hy₂⟩
#align valued.closure_coe_completion_v_lt Valued.closure_coe_completion_v_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60018dfa547f52aecca1d71e0a42cfa58205705b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
