# uniform_source_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a4d842e-cdb5-be2f-462c-0c7473f4ea22",
  "kind": "theorem",
  "lexical_name": "uniform_source_error",
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
  "slug": "uniform-source-error--df968e385b0a9dfe09d8e403",
  "source": {
    "blob": "f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 69,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df968e385b0a9dfe09d8e4037ce4f22354e65e659c93c7af7bd8956791683976",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a4d842e-cdb5-be2f-462c-0c7473f4ea22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_source_error {c : Coordinates} {S : ℚ} {p : RationalPoleValue.Parameters}
    (hc : check c S p = true) {z : ℂ} (hz : z ∈ closedBall (toComplex c) (S : ℝ)) :
    ‖poleNormalizedZeta z -
        PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1) z‖ ≤
      (uniformError c S p : ℝ) := by
  obtain ⟨hp,hS,hl⟩ := (check_iff _ _ _).mp hc
  have hN := ((RationalPoleValue.check_iff_valid _ _).mp hp).2.1
  obtain ⟨hzre,hzB,hzD⟩ := disk_geometry c S hz
  have hpos : 0 < z.re := lt_of_lt_of_le (by exact_mod_cast hl) hzre
  have htail : (0 : ℝ) ≤ (RationalPoleNormalizedJet.tailAllowance
      p.cutoff p.extraCorrections (RationalPolePatch.sizeBound c S) : ℝ) := by
    exact_mod_cast tailAllowance_nonneg p.cutoff p.extraCorrections
      (add_nonneg (magnitude_nonneg c) hS.le)
  have h := PoleNormalizedEndpointJet.source_error hN p.extraCorrections hpos hzB
  have h' : ‖poleNormalizedZeta z -
        PoleNormalizedEndpointJet.model p.cutoff (p.extraCorrections + 1) z‖ ≤
      ‖z - 1‖ * (RationalPoleNormalizedJet.tailAllowance
        p.cutoff p.extraCorrections (RationalPolePatch.sizeBound c S) : ℝ) := by
    simpa only [RationalPoleNormalizedJet.tailAllowance, Rat.cast_mul, Rat.cast_div,
      Rat.cast_prod, Rat.cast_add, Rat.cast_natCast, Rat.cast_pow, mul_assoc] using h
  exact h'.trans (by
    rw [uniformError, Rat.cast_mul]
    exact mul_le_mul_of_nonneg_right hzD htail)

/-- The derivative's finite radius is augmented by the UNIFORM source radius / S. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleJet.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44d2d5cbac7cab9f1b784cd4c4ffdf8f96fccf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
