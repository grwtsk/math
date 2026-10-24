# mean_nonzeroLowEnergy_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56586434-5b75-bd01-521a-77626ef9e685",
  "kind": "theorem",
  "lexical_name": "mean_nonzeroLowEnergy_le",
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
  "slug": "mean-nonzerolowenergy-le--f96ffb556e325646d405cef0",
  "source": {
    "blob": "4fb5160815c51d110b620c33380cd9677fe7223e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 92,
    "path": "GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96ffb556e325646d405cef0c31403ae5470b43c71829deb4f27625e111dca20",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56586434-5b75-bd01-521a-77626ef9e685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_nonzeroLowEnergy_le (S : Finset (ZMod p)) (energy : Ω → ZMod p → ℝ)
    (m t : ℝ) (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m (2000 * t) →
        eventProbability (fun ω => energy ω χ < 2 * t) ≤ 1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((nonzeroLowEnergy energy t ω).card : ℝ)) ≤
      (p : ℝ) / (S.card : ℝ) ^ 9 +
        ((smallEnergyFrequencies S m (2000 * t)).erase 0).card := by
  classical
  have h := mean_filter_card_le_exceptional (Finset.univ.erase (0 : ZMod p))
    (smallEnergyFrequencies S m (2000 * t)) (fun ω χ => energy ω χ < 2 * t)
    (1 / (S.card : ℝ) ^ 9) (by positivity)
    (fun χ hχ hb => hsmall χ (Finset.mem_erase.mp hχ).1 hb)
  have hs : (Finset.univ.erase (0 : ZMod p)) ∩ smallEnergyFrequencies S m (2000 * t) =
      (smallEnergyFrequencies S m (2000 * t)).erase 0 := by ext χ; simp
  have hc : ((Finset.univ.erase (0 : ZMod p)).card : ℝ) ≤ p := by
    have hcard := Finset.card_le_card (Finset.erase_subset (0 : ZMod p) Finset.univ)
    simp only [Finset.card_univ, ZMod.card] at hcard
    exact_mod_cast hcard
  unfold nonzeroLowEnergy
  rw [hs] at h
  apply h.trans
  apply add_le_add _ le_rfl
  simpa only [div_eq_mul_inv, one_div, one_mul] using
    mul_le_mul_of_nonneg_right hc (by positivity : 0 ≤ ((S.card : ℝ) ^ 9)⁻¹)

/-- Removing the trivial frequency removes the additive `1` in the proved
spectral bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fb5160815c51d110b620c33380cd9677fe7223e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
