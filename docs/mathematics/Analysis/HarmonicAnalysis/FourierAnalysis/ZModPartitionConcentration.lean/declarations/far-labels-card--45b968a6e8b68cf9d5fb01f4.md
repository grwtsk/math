# far_labels_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:982962c1-6499-3dc3-953c-05208d5f0ed1",
  "kind": "theorem",
  "lexical_name": "far_labels_card",
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
  "slug": "far-labels-card--45b968a6e8b68cf9d5fb01f4",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 79,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b968a6e8b68cf9d5fb01f4f34bb038a5426b0441587226cf7da7104de56741",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:982962c1-6499-3dc3-953c-05208d5f0ed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem far_labels_card (S : Finset (ZMod p)) (m t : ℝ) (χ : ZMod p)
    (hχ : χ ≠ 0) (hD : χ ∉ concentratedFrequencies S m t) (a : S) :
    (S.card : ℝ) / 4 ≤
      ((Finset.univ : Finset S).filter (fun b =>
        8 * Real.sqrt (t / m) < modularDistance (χ * (a.val - b.val)))).card := by
  have hn : ¬ ∃ center : ZMod p,
      (3 / 4 : ℝ) * S.card ≤ (S ∩ phaseInterval χ center (8 * Real.sqrt (t / m))).card := by
    intro h
    exact hD ((mem_concentratedFrequencies _ _ _ _).mpr ⟨hχ, h⟩)
  have hnear : ((S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m))).card : ℝ) <
      (3 / 4 : ℝ) * S.card := lt_of_not_ge (fun h => hn ⟨χ * a.val, h⟩)
  have heq : ((Finset.univ : Finset S).filter (fun b =>
      modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))).card =
      (S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m))).card := by
    have hmap : (((Finset.univ : Finset S).filter (fun b =>
        modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))).map
        (residueEmbedding S)) = S ∩ phaseInterval χ (χ * a.val) (8 * Real.sqrt (t / m)) := by
      ext b
      simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and,
        residueEmbedding, Function.Embedding.coeFn_mk, Finset.mem_inter, mem_phaseInterval]
      have he : ∀ a b : ZMod p, modularDistance (χ * (a - b)) =
          modularDistance (χ * b - χ * a) := by
        intro a b
        rw [show χ * (a - b) = -(χ * b - χ * a) by ring, modularDistance_neg]
      simp_rw [he]
      constructor
      · rintro ⟨b', hb', rfl⟩; exact ⟨b'.property, hb'⟩
      · rintro ⟨hb, hc⟩; exact ⟨⟨b, hb⟩, hc, rfl⟩
    rw [← hmap, Finset.card_map]
  have hsplit := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset S))
    (p := fun b => modularDistance (χ * (a.val - b.val)) ≤ 8 * Real.sqrt (t / m))
  rw [heq, Finset.card_univ, Fintype.card_coe] at hsplit
  have hsplitR := congrArg (fun n : ℕ => (n : ℝ)) hsplit
  push_cast at hsplitR
  simp only [not_le] at hsplitR
  linarith

omit [NeZero p] in
/-- The common balanced energy normalization after reindexing by elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
