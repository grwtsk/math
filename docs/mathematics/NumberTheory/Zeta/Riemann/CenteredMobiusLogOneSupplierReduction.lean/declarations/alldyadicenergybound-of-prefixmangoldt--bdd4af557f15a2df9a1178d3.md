# allDyadicEnergyBound_of_prefixMangoldt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84640e71-7db4-e78c-6fb3-7de479dabad7",
  "kind": "theorem",
  "lexical_name": "allDyadicEnergyBound_of_prefixMangoldt",
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
  "slug": "alldyadicenergybound-of-prefixmangoldt--bdd4af557f15a2df9a1178d3",
  "source": {
    "blob": "27057571204f9cfa2b417f5bb5faf005e4c7590c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogOneSupplierReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd4af557f15a2df9a1178d31cee906076ae8dc1a20d60640464c882841f77b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogOneSupplierReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84640e71-7db4-e78c-6fb3-7de479dabad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allDyadicEnergyBound_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    AllDyadicEnergyBound := by
  intro η hη
  obtain ⟨CG, hCG, jG, hG⟩ :=
    allDyadicHistoricalGreenEnergyBound_of_prefixMangoldt hprefix η hη
  obtain ⟨C0, hC0, j0, h0⟩ :=
    (allDyadicBoundaryBounds_of_prefixMangoldt hprefix).1 η hη
  obtain ⟨C1, hC1, j1, h1⟩ :=
    (allDyadicBoundaryBounds_of_prefixMangoldt hprefix).2 η hη
  refine ⟨CG + C0 + C1, by positivity, max jG (max j0 j1), ?_⟩
  intro j hj
  have hjG : jG ≤ j := le_trans (le_max_left _ _) hj
  have hj0 : j0 ≤ j := le_trans (le_max_left _ _) (le_trans (le_max_right _ _) hj)
  have hj1 : j1 ≤ j := le_trans (le_max_right _ _) (le_trans (le_max_right _ _) hj)
  unfold augmentedEnergy
  have hGj := hG j hjG
  have h0j := h0 j hj0
  have h1j := h1 j hj1
  nlinarith [Real.rpow_nonneg
    (by positivity : (0 : ℝ) ≤ dyadicScale j) (-1 + η)]

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogOneSupplierReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogOneSupplierReduction.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27057571204f9cfa2b417f5bb5faf005e4c7590c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
