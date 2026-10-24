# smallEnergyPoints_card_lower_of_pairEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:482a8343-f637-7e0d-ad50-84476a0cc8d3",
  "kind": "theorem",
  "lexical_name": "smallEnergyPoints_card_lower_of_pairEnergy",
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
  "slug": "smallenergypoints-card-lower-of-pairenergy--35ecd3a0589f7b524c94f02e",
  "source": {
    "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 194,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35ecd3a0589f7b524c94f02e7ba4a4f088cc6549f571ba2be08c8555847c852d",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482a8343-f637-7e0d-ad50-84476a0cc8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallEnergyPoints_card_lower_of_pairEnergy (S B : Finset (ZMod p))
    (hS : S.Nonempty) (hB : B.Nonempty) (r : ℝ) (hr : 0 < r)
    (hE : ∀ χ ∈ B, pairEnergy S χ ≤ r) :
    (9 / 10 : ℝ) * S.card ≤ ((smallEnergyPoints B (10 * r)).card : ℝ) := by
  classical
  let f : ZMod p → ZMod p → ℝ := fun y x =>
    ∑ χ ∈ B, modularDistance (χ * (x - y)) ^ 2
  have htotal : (∑ y ∈ S, ∑ x ∈ S, f y x) ≤
      ∑ _y ∈ S, (S.card : ℝ) * ((B.card : ℝ) * r) := by
    calc
      _ = (S.card : ℝ) ^ 2 * ∑ χ ∈ B, pairEnergy S χ :=
        sum_pair_frequency_energy S B hS
      _ ≤ (S.card : ℝ) ^ 2 * ∑ _χ ∈ B, r := by
        exact mul_le_mul_of_nonneg_left (Finset.sum_le_sum hE) (sq_nonneg _)
      _ = _ := by simp; ring
  obtain ⟨y, hy, hrow⟩ := Finset.exists_le_of_sum_le hS htotal
  let a : ℝ := 10 * r * B.card
  let bad := S.filter (fun x => a ≤ f y x)
  let good := S.filter (fun x => ¬a ≤ f y x)
  have hf (x : ZMod p) (_hx : x ∈ S) : 0 ≤ f y x := by unfold f; positivity
  have hbad : (bad.card : ℝ) * a ≤ (S.card : ℝ) * ((B.card : ℝ) * r) :=
    (filter_card_mul_le_sum S (f y) hf a).trans hrow
  have hbr : (0 : ℝ) < (B.card : ℝ) * r := by
    exact mul_pos (by exact_mod_cast hB.card_pos) hr
  have hbad' : 10 * (bad.card : ℝ) ≤ S.card := by
    apply (mul_le_mul_iff_of_pos_right hbr).mp
    dsimp [a] at hbad
    nlinarith [hbad]
  have hcards : bad.card + good.card = S.card := by
    exact Finset.card_filter_add_card_filter_not (s := S) (fun x => a ≤ f y x)
  have hcards' : (bad.card : ℝ) + good.card = S.card := by exact_mod_cast hcards
  have hgood : (9 / 10 : ℝ) * S.card ≤ (good.card : ℝ) := by linarith
  have himage : good.image (fun x => x - y) ⊆ smallEnergyPoints B (10 * r) := by
    intro z hz
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hz
    rw [mem_smallEnergyPoints]
    have hx' := (Finset.mem_filter.mp hx).2
    dsimp [a, f] at hx'
    exact lt_of_not_ge hx'
  have hcardimage : (good.image (fun x => x - y)).card = good.card :=
    Finset.card_image_of_injective good (fun x z h => sub_left_inj.mp h)
  have hcard : good.card ≤ (smallEnergyPoints B (10 * r)).card := by
    rw [← hcardimage]
    exact Finset.card_le_card himage
  exact hgood.trans (by exact_mod_cast hcard)

/-- Source Lemma 3.5 for the actual deterministic set `B_t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
