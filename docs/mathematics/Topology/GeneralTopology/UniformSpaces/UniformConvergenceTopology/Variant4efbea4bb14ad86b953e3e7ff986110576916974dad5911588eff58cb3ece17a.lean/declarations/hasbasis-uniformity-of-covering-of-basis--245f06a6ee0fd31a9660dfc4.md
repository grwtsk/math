# hasBasis_uniformity_of_covering_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba7e5578-a5e9-2d06-e0b7-0096c24642e5",
  "kind": "theorem",
  "lexical_name": "hasBasis_uniformity_of_covering_of_basis",
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
  "slug": "hasbasis-uniformity-of-covering-of-basis--245f06a6ee0fd31a9660dfc4",
  "source": {
    "blob": "e8dc1a1f0e8c15131ff125434bf6a82008620bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 674,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:245f06a6ee0fd31a9660dfc4472a900972e6c65478f89c8552b86cfd624b403b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba7e5578-a5e9-2d06-e0b7-0096c24642e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem hasBasis_uniformity_of_covering_of_basis {ι ι' : Type*} [Nonempty ι]
    {t : ι → Set α} {p : ι' → Prop} {V : ι' → Set (β × β)} (ht : ∀ i, t i ∈ 𝔖)
    (hdir : Directed (· ⊆ ·) t) (hex : ∀ s ∈ 𝔖, ∃ i, s ⊆ t i) (hb : HasBasis (𝓤 β) p V) :
    (𝓤 (α →ᵤ[𝔖] β)).HasBasis (fun i : ι × ι' ↦ p i.2) fun i ↦
      UniformOnFun.gen 𝔖 (t i.1) (V i.2) := by
  have hne : 𝔖.Nonempty := (range_nonempty t).mono (range_subset_iff.2 ht)
  have hd : DirectedOn (· ⊆ ·) 𝔖 := fun s₁ hs₁ s₂ hs₂ ↦ by
    rcases hex s₁ hs₁, hex s₂ hs₂ with ⟨⟨i₁, his₁⟩, i₂, his₂⟩
    rcases hdir i₁ i₂ with ⟨i, hi₁, hi₂⟩
    exact ⟨t i, ht _, his₁.trans hi₁, his₂.trans hi₂⟩
  refine (UniformOnFun.hasBasis_uniformity_of_basis α β 𝔖 hne hd hb).to_hasBasis
    (fun ⟨s, i'⟩ ⟨hs, hi'⟩ ↦ ?_) fun ⟨i, i'⟩ hi' ↦ ⟨(t i, i'), ⟨ht i, hi'⟩, Subset.rfl⟩
  rcases hex s hs with ⟨i, hi⟩
  exact ⟨(i, i'), hi', UniformOnFun.gen_mono hi Subset.rfl⟩

/-- If `t n` is a monotone sequence of sets in `𝔖`
such that each `s ∈ 𝔖` is included in some `t n`
and `V n` is an antitone basis of entourages of `β`,
then `UniformOnFun.gen 𝔖 (t n) (V n)` is an antitone basis of entourages of `α →ᵤ[𝔖] β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant4efbea4bb14ad86b953e3e7ff986110576916974dad5911588eff58cb3ece17a.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8dc1a1f0e8c15131ff125434bf6a82008620bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
