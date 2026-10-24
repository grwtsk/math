# hasBasis_uniformity_of_covering_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c7fb74b-65e7-69f4-0360-8ca38ecc45fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3a5dd3c-02fc-1b33-9929-406edf64f125",
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
  "slug": "hasbasis-uniformity-of-covering-of-basis--c98314887e90b99b6b7b4c41",
  "source": {
    "blob": "46eef5b66be1bf1fa5147fb430663c2432efab16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 666,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c98314887e90b99b6b7b4c41d9fdf2e1ed1d89042df18f3b3629c048e86a8fdd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3a5dd3c-02fc-1b33-9929-406edf64f125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–684.

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

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variantefeea7899d1e46afdba6031dc52777d0859bfe82bcb5abcf43ec1951bac11bb3.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46eef5b66be1bf1fa5147fb430663c2432efab16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
