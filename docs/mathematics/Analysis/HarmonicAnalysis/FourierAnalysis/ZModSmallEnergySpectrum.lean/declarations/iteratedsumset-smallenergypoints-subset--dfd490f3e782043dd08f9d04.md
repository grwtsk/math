# iteratedSumset_smallEnergyPoints_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c1bf323-243f-2946-4fb2-2c32c42736ba",
  "kind": "theorem",
  "lexical_name": "iteratedSumset_smallEnergyPoints_subset",
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
  "slug": "iteratedsumset-smallenergypoints-subset--dfd490f3e782043dd08f9d04",
  "source": {
    "blob": "95681c2768eeac33856177ca2e0114d68f0c544c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd490f3e782043dd08f9d041b61073dd421d3cf3b03a3e15bc436dced3a76ae",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c1bf323-243f-2946-4fb2-2c32c42736ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedSumset_smallEnergyPoints_subset (B : Finset (ZMod p)) (δ : ℝ)
    (k : ℕ) (hk : 0 < k) :
    iteratedSumset (smallEnergyPoints B δ) k ⊆
      smallEnergyPoints B ((k : ℝ) ^ 2 * δ) := by
  intro z hz
  obtain ⟨xs, hlen, hmem, hsum⟩ := (mem_iteratedSumset_iff _ _ _).mp hz
  have hI : (Finset.univ : Finset (Fin xs.length)).Nonempty :=
    ⟨⟨0, by omega⟩, Finset.mem_univ _⟩
  have hs := sum_mem_smallEnergyPoints Finset.univ hI B δ xs.get
    (fun i _ => hmem _ (List.get_mem xs i))
  have heq : (∑ i : Fin xs.length, xs.get i) = xs.sum := by
    rw [← List.sum_ofFn, List.ofFn_get]
  simpa only [Finset.card_univ, Fintype.card_fin, hlen, heq, hsum] using hs

/-- The retained expansion length used in the source proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySpectrum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95681c2768eeac33856177ca2e0114d68f0c544c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
