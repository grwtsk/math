# higherPrimePowerFourierModeEnergy_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fdae06c-8552-9c4d-1a6f-2e89156b4467",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerFourierModeEnergy_summable",
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
  "slug": "higherprimepowerfouriermodeenergy-summable--a3066a791511602746d554dd",
  "source": {
    "blob": "a30d045d6a25def5cbb21cd218a726c1b0469e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3066a791511602746d554dd05ce78f4ca513964a377ff8e7e54620beb996b58",
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

Occurrence: `result:4fdae06c-8552-9c4d-1a6f-2e89156b4467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerFourierModeEnergy_summable
    (X : ℕ) :
    Summable (higherPrimePowerFourierModeEnergy X) := by
  have hp :
      Summable (fun k : ℤ => 1 / (k : ℝ)^2) :=
    (Real.summable_one_div_int_pow (p := 2)).mpr (by norm_num)
  have hmajor :
      Summable
        (fun k : ℤ =>
          4 * (higherPrimePowerWindowMass X)^2 /
            ((k : ℝ)^2)) := by
    simpa only [one_div, div_eq_mul_inv, one_mul] using
      hp.mul_left (4 * (higherPrimePowerWindowMass X)^2)
  exact Summable.of_nonneg_of_le
    (higherPrimePowerFourierModeEnergy_nonnegative X)
    (higherPrimePowerFourierModeEnergy_le_pSeries X)
    hmajor

/-- Universal p-series constant controlling the full higher-power channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerFourierEnergy.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30d045d6a25def5cbb21cd218a726c1b0469e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
