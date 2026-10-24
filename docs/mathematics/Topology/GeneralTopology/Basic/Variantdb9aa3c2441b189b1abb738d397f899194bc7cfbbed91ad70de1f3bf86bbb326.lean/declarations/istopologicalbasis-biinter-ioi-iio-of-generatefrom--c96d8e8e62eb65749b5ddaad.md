# isTopologicalBasis_biInter_Ioi_Iio_of_generateFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eacd9029-d095-972f-4abf-6585c7efaf7c",
  "kind": "lemma",
  "lexical_name": "isTopologicalBasis_biInter_Ioi_Iio_of_generateFrom",
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
  "slug": "istopologicalbasis-biinter-ioi-iio-of-generatefrom--c96d8e8e62eb65749b5ddaad",
  "source": {
    "blob": "6bdc8ca6049a776cdfbf567bda8ac8ee527505d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 191,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c96d8e8e62eb65749b5ddaad2f5e752c3e59deacb6ec5281f8a6f934f23348fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eacd9029-d095-972f-4abf-6585c7efaf7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTopologicalBasis_biInter_Ioi_Iio_of_generateFrom (c : Set α)
    (h : ts = generateFrom { s | ∃ a ∈ c, s = Ioi a ∨ s = Iio a }) :
    IsTopologicalBasis {s | ∃ (f g : Set α), f ⊆ c ∧ g ⊆ c ∧ f.Finite ∧ g.Finite
      ∧ s = (⋂ a ∈ f, Ioi a) ∩ (⋂ a ∈ g, Iio a)} := by
  refine IsTopologicalBasis.of_isOpen_of_subset ?_ (isTopologicalBasis_of_subbasis h) ?_
  · rintro u ⟨f, g, hfc, hgc, hf_fin, hg_fin, rfl⟩
    apply IsOpen.inter
    · apply hf_fin.isOpen_biInter (fun i hi ↦ ?_)
      rw [h]
      exact isOpen_generateFrom_of_mem ⟨i, hfc hi, Or.inl rfl⟩
    · apply hg_fin.isOpen_biInter (fun i hi ↦ ?_)
      rw [h]
      exact isOpen_generateFrom_of_mem ⟨i, hgc hi, Or.inr rfl⟩
  simp only [exists_and_left, image_subset_iff, preimage_ofPred_eq, ofPred_subset_ofPred, and_imp]
  intro k k_fin hk
  let kl := {s ∈ k | ∃ a ∈ c, s = Ioi a}
  let kr := {s ∈ k | ∃ a ∈ c, s = Iio a}
  have k_eq : k = kl ∪ kr := by
    -- this `have` can be removed, but makes `grind` slower
    have : ∀ s ∈ k, ∃ a ∈ c, s = Ioi a ∨ s = Iio a := hk
    ext
    grind
  have : Finite kl := k_fin.subset (by simp [k_eq])
  have : Finite kr := k_fin.subset (by simp [k_eq])
  have Al : ∀ s : kl, ∃ a ∈ c, s = Ioi a := fun s ↦ s.2.2
  choose al alc hal using Al
  have Ar : ∀ s : kr, ∃ a ∈ c, s = Iio a := fun s ↦ s.2.2
  choose ar arc har using Ar
  refine ⟨range al, by simp [range_subset_iff, alc], range ar,
    by simp [range_subset_iff, arc], finite_range _, finite_range _, ?_⟩
  rw [k_eq, sInter_eq_biInter, biInter_union, biInter_range, biInter_range, biInter_eq_iInter,
    biInter_eq_iInter]
  simp [hal, har]

/-- **Squeeze theorem** (also known as **sandwich theorem**). This version assumes that inequalities
hold eventually for the filter. -/
@[to_dual self (reorder := g h, hg hh, hgf hfh)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bdc8ca6049a776cdfbf567bda8ac8ee527505d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
