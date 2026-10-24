# closure_coe_completion_v_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "629b7e1b7e879a2fbaa8c6ea97246011f0c44131",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40e7f4f5-82a4-1257-27ba-c1511b612075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8e2f896-4b84-0494-0d75-a473aca234c5",
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
  "slug": "closure-coe-completion-v-lt--f79fbe4d6f519c7ec3ef8ff9",
  "source": {
    "blob": "629b7e1b7e879a2fbaa8c6ea97246011f0c44131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f79fbe4d6f519c7ec3ef8ff99a6e3b3178bccba06e51d280548602866970942a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e2f896-4b84-0494-0d75-a473aca234c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_coe_completion_v_lt {γ : Γ₀ˣ} :
    closure ((↑) '' { x : K | v x < (γ : Γ₀) }) =
    { x : hat K | extensionValuation x < (γ : Γ₀) } := by
  ext x
  set γ₀' := extension x with hγ₀'_def
  set γ₀ := extensionValuation x with hγ₀_def
  have heq : γ₀ = embedding γ₀' := rfl
  suffices γ₀ ≠ 0 → (x ∈ closure ((↑) '' { x : K | v x < (γ : Γ₀) }) ↔ γ₀ < (γ : Γ₀)) by
    rcases eq_or_ne γ₀ 0 with h | h
    · simp only [(Valuation.zero_iff _).mp h, mem_ofPred_eq, Valuation.map_zero, Units.zero_lt,
        iff_true]
      apply subset_closure
      exact ⟨0, by simp only [mem_ofPred_eq, Valuation.map_zero, Units.zero_lt, true_and]; rfl⟩
    · exact this h
  intro h
  have h' : γ₀' ≠ 0 := by simpa only [heq, map_ne_zero] using h
  have hγ₀ : extension ⁻¹' {γ₀'} ∈ 𝓝 x :=
    continuous_extension.continuousAt.preimage_mem_nhds
      (WithZeroTopology.singleton_mem_nhds_of_ne_zero h')
  rw [mem_closure_iff_nhds']
  refine ⟨fun hx => ?_, fun hx s hs => ?_⟩
  · obtain ⟨⟨-, y, hy₁ : v y < (γ : Γ₀), rfl⟩, hy₂⟩ := hx _ hγ₀
    replace hy₂ : v y = γ₀ := by
      simp only [mem_preimage, extension_extends, mem_singleton_iff, v.restrict_def] at hy₂
      apply_fun embedding at hy₂
      simpa [heq] using hy₂
    rwa [← hy₂]
  · obtain ⟨y, hy₁, hy₂⟩ := Completion.denseRange_coe.mem_nhds (inter_mem hγ₀ hs)
    replace hy₁ : v y = γ₀ := by
      simp only [mem_preimage, extension_extends, mem_singleton_iff, v.restrict_def] at hy₁
      apply_fun embedding at hy₁
      simpa [heq] using hy₁
    rw [← hy₁] at hx
    exact ⟨⟨y, ⟨y, hx, rfl⟩⟩, hy₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b7e1b7e879a2fbaa8c6ea97246011f0c44131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
