# PrespectralSpace.exists_isClosed_of_not_isPreirreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c40f2f36-4ad7-7c63-1fe7-5d29ee35c114",
  "kind": "lemma",
  "lexical_name": "PrespectralSpace.exists_isClosed_of_not_isPreirreducible",
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
  "slug": "prespectralspace-exists-isclosed-of-not-ispreirreducible--cc4b9dc4e131302c6f6a0091",
  "source": {
    "blob": "3c9d042d7c19f0a706ddb377daed0b9e7cb665fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4b9dc4e131302c6f6a0091995bee5b69bee03d63a173c20c7c5827b2cb3cec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c40f2f36-4ad7-7c63-1fe7-5d29ee35c114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrespectralSpace.exists_isClosed_of_not_isPreirreducible [PrespectralSpace X] (Z : Set X)
    (hZ : ¬ IsPreirreducible Z) :
    ∃ (A B : Set X), IsClosed A ∧ IsClosed B ∧ IsCompact Aᶜ ∧ IsCompact Bᶜ ∧
      Z ⊆ A ∪ B ∧ (Z ∩ Aᶜ).Nonempty ∧ (Z ∩ Bᶜ).Nonempty := by
  simp only [IsPreirreducible, not_forall] at hZ
  rcases hZ with ⟨U₁, U₂, hU₁, hU₂, hU₁Z, hU₂Z, hU₁₂⟩
  rw [Set.not_nonempty_iff_eq_empty, ← Set.subset_empty_iff] at hU₁₂
  obtain ⟨x₁, hx₁⟩ : ∃ x₁ ∈ U₁, x₁ ∈ Z ∧ x₁ ∉ U₂ := by
    obtain ⟨x, hx⟩ := hU₁Z
    use x, hx.2, hx.1, fun h₂ ↦ hU₁₂ ⟨hx.1, hx.2, h₂⟩
  obtain ⟨x₂, hx₂⟩ : ∃ x₂ ∈ U₂, x₂ ∈ Z ∧ x₂ ∉ U₁ := by
    obtain ⟨x, hx⟩ := hU₂Z
    use x, hx.2, hx.1, fun h₁ ↦ hU₁₂ ⟨hx.1, h₁, hx.2⟩
  rw [PrespectralSpace.isTopologicalBasis.isOpen_iff] at hU₁ hU₂
  obtain ⟨W₁, hW₁⟩ := hU₁ x₁ hx₁.1
  obtain ⟨W₂, hW₂⟩ := hU₂ x₂ hx₂.1
  refine ⟨W₁ᶜ, W₂ᶜ, by simpa using hW₁.1.1, by simpa using hW₂.1.1, by simp [hW₁.1.2],
    by simp [hW₂.1.2], fun z hz ↦ ?_, ⟨x₁, by grind⟩, ⟨x₂, by grind⟩⟩
  · by_contra! hc
    simp only [Set.mem_union, Set.mem_compl_iff, not_or, not_not] at hc
    exact hU₁₂ ⟨hz, hW₁.2.2 hc.1, hW₂.2.2 hc.2⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9d042d7c19f0a706ddb377daed0b9e7cb665fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
