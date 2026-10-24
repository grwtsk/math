# eq_top_of_sigmaSpec_subset_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b6b9ccc-9476-30bb-2f56-82b3c144dadf",
  "kind": "lemma",
  "lexical_name": "eq_top_of_sigmaSpec_subset_of_isCompact",
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
  "slug": "eq-top-of-sigmaspec-subset-of-iscompact--b94a326568e1a2ce998c97c4",
  "source": {
    "blob": "ab47969e93cdc87008a46bcd9b9b5426d393423d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 50,
    "path": "GRWTSK/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b94a326568e1a2ce998c97c49cc4d8946514c656823093d736c663d76fe75153",
  "verification": {
    "reference": "docs/verification/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6b9ccc-9476-30bb-2f56-82b3c144dadf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_top_of_sigmaSpec_subset_of_isCompact
    (U : (Spec <| .of <| Π i, R i).Opens) (V : Set (Spec <| .of <| Π i, R i))
    (hV : ↑(sigmaSpec R).opensRange ⊆ V)
    (hV' : IsCompact (X := Spec (.of <| Π i, R i)) V)
    (hVU : V ⊆ U) : U = ⊤ := by
  obtain ⟨s, hs⟩ := (PrimeSpectrum.isOpen_iff _).mp U.2
  obtain ⟨t, hts, ht, ht'⟩ : ∃ t ⊆ s, t.Finite ∧ V ⊆ ⋃ i ∈ t, (basicOpen i).1 := by
    obtain ⟨t, ht⟩ := hV'.elim_finite_subcover
      (fun i : s ↦ (basicOpen i.1).1) (fun _ ↦ (basicOpen _).2)
      (by simpa [← Set.compl_iInter, ← zeroLocus_iUnion₂ (κ := (· ∈ s)), ← hs])
    exact ⟨t.map (Function.Embedding.subtype _), by simp, Finset.finite_toSet _, by simpa using ht⟩
  replace ht' : V ⊆ (zeroLocus t)ᶜ := by
    simpa [← Set.compl_iInter, ← zeroLocus_iUnion₂ (κ := (· ∈ t))] using ht'
  have (i : _) : Ideal.span (Pi.evalRingHom (R ·) i '' t) = ⊤ := by
    rw [← zeroLocus_empty_iff_eq_top, zeroLocus_span, ← preimage_comap_zeroLocus,
      ← Set.compl_univ_iff, ← Set.preimage_compl, Set.preimage_eq_univ_iff]
    trans (Sigma.ι _ i ≫ sigmaSpec R).opensRange.1
    · simp; rfl
    · rw [Scheme.Hom.opensRange_comp]
      exact (Set.image_subset_range _ _).trans (hV.trans ht')
  have : Ideal.span s = ⊤ := top_le_iff.mp
    ((Ideal.span_eq_top_of_span_image_evalRingHom _ ht this).ge.trans (Ideal.span_mono hts))
  simpa [← zeroLocus_span s, zeroLocus_empty_iff_eq_top.mpr this] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab47969e93cdc87008a46bcd9b9b5426d393423d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
