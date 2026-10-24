# IsCompact.mem_uniformity_of_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:927ae930-47f1-576e-64b0-d9ffac34cba5",
  "kind": "lemma",
  "lexical_name": "IsCompact.mem_uniformity_of_prod",
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
  "slug": "iscompact-mem-uniformity-of-prod--07bc8391ed2d8904c0f5838d",
  "source": {
    "blob": "cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07bc8391ed2d8904c0f5838dc0dc15f10a2be56e11ae238d0d0dfa8570eb2af6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:927ae930-47f1-576e-64b0-d9ffac34cba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCompact.mem_uniformity_of_prod
    {α β E : Type*} [TopologicalSpace α] [TopologicalSpace β] [UniformSpace E]
    {f : α → β → E} {s : Set α} {k : Set β} {q : α} {u : Set (E × E)}
    (hk : IsCompact k) (hf : ContinuousOn f.uncurry (s ×ˢ k)) (hq : q ∈ s) (hu : u ∈ 𝓤 E) :
    ∃ v ∈ 𝓝[s] q, ∀ p ∈ v, ∀ x ∈ k, (f p x, f q x) ∈ u := by
  apply hk.induction_on (p := fun t ↦ ∃ v ∈ 𝓝[s] q, ∀ p ∈ v, ∀ x ∈ t, (f p x, f q x) ∈ u)
  · exact ⟨univ, univ_mem, by simp⟩
  · intro t' t ht't ⟨v, v_mem, hv⟩
    exact ⟨v, v_mem, fun p hp x hx ↦ hv p hp x (ht't hx)⟩
  · intro t t' ⟨v, v_mem, hv⟩ ⟨v', v'_mem, hv'⟩
    refine ⟨v ∩ v', inter_mem v_mem v'_mem, fun p hp x hx ↦ ?_⟩
    rcases hx with h'x | h'x
    · exact hv p hp.1 x h'x
    · exact hv' p hp.2 x h'x
  · rcases comp_symm_of_uniformity hu with ⟨u', u'_mem, u'_symm, hu'⟩
    intro x hx
    obtain ⟨v, hv, w, hw, hvw⟩ :
      ∃ v ∈ 𝓝[s] q, ∃ w ∈ 𝓝[k] x, v ×ˢ w ⊆ f.uncurry ⁻¹' {z | (f q x, z) ∈ u'} :=
        mem_nhdsWithin_prod_iff.1 (hf (q, x) ⟨hq, hx⟩ (mem_nhds_left (f q x) u'_mem))
    refine ⟨w, hw, v, hv, fun p hp y hy ↦ ?_⟩
    have A : (f q x, f p y) ∈ u' := hvw (⟨hp, hy⟩ : (p, y) ∈ v ×ˢ w)
    have B : (f q x, f q y) ∈ u' := hvw (⟨mem_of_mem_nhdsWithin hq hv, hy⟩ : (q, y) ∈ v ×ˢ w)
    exact hu' <| SetRel.prodMk_mem_comp (u'_symm A) B

section UniformConvergence

/-- An equicontinuous family of functions defined on a compact uniform space is automatically
uniformly equicontinuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variant9efeaa72a9bc126d571c4bbbd8ca4fa36938458e3f0dec47e94a0f8d1c58df71.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cde37a29ceafd4c16dfe19bae5085c8e9e7dea6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
