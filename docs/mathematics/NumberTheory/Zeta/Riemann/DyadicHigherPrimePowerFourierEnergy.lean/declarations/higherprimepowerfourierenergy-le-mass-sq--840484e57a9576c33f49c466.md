# higherPrimePowerFourierEnergy_le_mass_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27dc9913-9298-ff6d-dec1-b2b9e6c35a07",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerFourierEnergy_le_mass_sq",
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
  "slug": "higherprimepowerfourierenergy-le-mass-sq--840484e57a9576c33f49c466",
  "source": {
    "blob": "a30d045d6a25def5cbb21cd218a726c1b0469e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:840484e57a9576c33f49c46672a48b1db04bf236a1941e686d9bd56ffc90033b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27dc9913-9298-ff6d-dec1-b2b9e6c35a07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerFourierEnergy_le_mass_sq
    (X : ℕ) :
    (∑' k : ℤ, higherPrimePowerFourierModeEnergy X k) ≤
      higherPrimePowerFrequencyConstant *
        (higherPrimePowerWindowMass X)^2 := by
  have hsum := higherPrimePowerFourierModeEnergy_summable X
  have hp :
      Summable (fun k : ℤ => 4 / ((k : ℝ)^2)) := by
    have h :=
      (Real.summable_one_div_int_pow (p := 2)).mpr (by norm_num)
    simpa only [one_div, div_eq_mul_inv, one_mul] using h.mul_left 4
  have hmajor :
      Summable
        (fun k : ℤ =>
          (4 / ((k : ℝ)^2)) *
            (higherPrimePowerWindowMass X)^2) :=
    hp.mul_right _
  calc
    (∑' k : ℤ, higherPrimePowerFourierModeEnergy X k)
        ≤ ∑' k : ℤ,
            (4 / ((k : ℝ)^2)) *
              (higherPrimePowerWindowMass X)^2 := by
      exact hsum.tsum_le_tsum
        (fun k => by
          have h := higherPrimePowerFourierModeEnergy_le_pSeries X k
          simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using h)
        hmajor
    _ = higherPrimePowerFrequencyConstant *
        (higherPrimePowerWindowMass X)^2 := by
      unfold higherPrimePowerFrequencyConstant
      exact hp.tsum_mul_right _

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30d045d6a25def5cbb21cd218a726c1b0469e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
