# thinAllDyadicAugmentedEnergyBound_of_three_suppliers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89eb4a33-17ab-e1c5-8b2c-6923c40c27f7",
  "kind": "theorem",
  "lexical_name": "thinAllDyadicAugmentedEnergyBound_of_three_suppliers",
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
  "slug": "thinalldyadicaugmentedenergybound-of-three-suppliers--f6600a0110c946e5eb65eebf",
  "source": {
    "blob": "d3fc7e76f43d3d24617311dc123ef5d141fbb338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6600a0110c946e5eb65eebf32c96596c7ad3d2ecdd71f006ed723561eb10219",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89eb4a33-17ab-e1c5-8b2c-6923c40c27f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thinAllDyadicAugmentedEnergyBound_of_three_suppliers
    (dyadicScale : ℕ → ℕ)
    (mass0 mass1 : ℕ → ℝ)
    (hscale : ∀ j, 2 ≤ dyadicScale j)
    (hM : AllDyadicCenteredMobiusLogEnergyBound dyadicScale)
    (h0 : AllDyadicBoundarySquareBound dyadicScale mass0)
    (h1 : AllDyadicBoundarySquareBound dyadicScale mass1) :
    ThinAllDyadicAugmentedEnergyBound dyadicScale mass0 mass1 thinGreenEnergy := by
  intro η hη
  obtain ⟨hMsummable, hMrate⟩ := hM
  obtain ⟨CM, hCM, jM, hMbound⟩ := hMrate η hη
  obtain ⟨C0, hC0, j0, h0bound⟩ := h0 η hη
  obtain ⟨C1, hC1, j1, h1bound⟩ := h1 η hη
  obtain ⟨CR, hCR, hRbound⟩ := greenFullResidualEnergyBound_le_rpow hη
  refine ⟨2 * CM + 2 * CR + C0 + C1, by positivity, max jM (max j0 j1), ?_⟩
  intro j hj
  have hjM : jM ≤ j := le_trans (le_max_left _ _) hj
  have hj0 : j0 ≤ j := le_trans (le_max_left _ _) (le_trans (le_max_right _ _) hj)
  have hj1 : j1 ≤ j := le_trans (le_max_right _ _) (le_trans (le_max_right _ _) hj)
  have hgreenPair := thinGreenEnergy_le_of_centered_summable
    (hscale j) (hMsummable j)
  have hgreen := hgreenPair.2
  have hMb := hMbound j hjM
  have h0b := h0bound j hj0
  have h1b := h1bound j hj1
  have hRb := hRbound (dyadicScale j) (hscale j)
  have hrpow_nonneg :
      0 ≤ Real.rpow (dyadicScale j : ℝ) (-1 + η) := by positivity
  nlinarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenThreeSupplier.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3fc7e76f43d3d24617311dc123ef5d141fbb338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
