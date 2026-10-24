# subsetSumFiber_card_mul_remaining_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73bb6a30-cb38-b639-bb70-0ecc00e894ad",
  "kind": "theorem",
  "lexical_name": "subsetSumFiber_card_mul_remaining_le",
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
  "slug": "subsetsumfiber-card-mul-remaining-le--89b85cd4d8b0465b13a7aeb6",
  "source": {
    "blob": "b4e5279c2db9d681e84aba8f9359a406172b81bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b85cd4d8b0465b13a7aeb6d406ac70f666ca38bff91ae948756d1fbca4d99b",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73bb6a30-cb38-b639-bb70-0ecc00e894ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumFiber_card_mul_remaining_le {p : ℕ} [NeZero p]
    (S : Finset (ZMod p)) (m : ℕ) (z : ZMod p) (hm : 1 ≤ m) (hmS : m ≤ S.card) :
    (subsetSumFiber S m z).card * (S.card - m + 1) ≤ (S.powersetCard m).card := by
  have hc := constrained_deletion_count S m z
  change (subsetSumFiber S m z).card * m ≤ (S.powersetCard (m - 1)).card at hc
  rw [Finset.card_powersetCard] at hc ⊢
  have hbin : S.card.choose m * m = S.card.choose (m - 1) * (S.card - m + 1) := by
    have h := Nat.choose_succ_right_eq S.card (m - 1)
    have hm' : m - 1 + 1 = m := by omega
    have hsub : S.card - (m - 1) = S.card - m + 1 := by omega
    simpa only [hm', hsub] using h
  have hmul := Nat.mul_le_mul_right (S.card - m + 1) hc
  nlinarith

/-- Pham--Sauermann Lemma 4.1 for the actual uniform fixed-size subset
distribution. It holds for every target `z`, hence bounds its maximum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSubsetSumCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e5279c2db9d681e84aba8f9359a406172b81bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
