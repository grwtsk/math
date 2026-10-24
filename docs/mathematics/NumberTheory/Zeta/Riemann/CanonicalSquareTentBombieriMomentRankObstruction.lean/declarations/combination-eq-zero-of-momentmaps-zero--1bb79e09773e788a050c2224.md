# combination_eq_zero_of_momentMaps_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b8f7105-ea5a-c04b-ab35-f52ff21ed3bf",
  "kind": "theorem",
  "lexical_name": "combination_eq_zero_of_momentMaps_zero",
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
  "slug": "combination-eq-zero-of-momentmaps-zero--1bb79e09773e788a050c2224",
  "source": {
    "blob": "fb3f61846511ff9edf8759c611ce860d35ac4325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 432,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb79e09773e788a050c2224ea64e79c2ed3ca223748b104df975feeb778ccd2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b8f7105-ea5a-c04b-ab35-f52ff21ed3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combination_eq_zero_of_momentMaps_zero
    (u : Combination 1)
    (hordinary : ordinaryMomentMap u = 0)
    (hmultiplicative : multiplicativeMomentMap u = 0) :
    u = 0 := by
  have hdet : twoTentMomentDeterminant ≠ 0 :=
    ne_of_gt twoTentMomentDeterminant_pos
  have hdetC : (twoTentMomentDeterminant : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr hdet
  have hordinary' :
      u stageTwoCoordinate * (realOrdinaryMoment 0 : ℂ) +
        u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ) = 0 := by
    simpa [ordinaryMomentMap] using hordinary
  have hmultiplicative' :
      u stageTwoCoordinate * (realMultiplicativeMoment 0 : ℂ) +
        u stageThreeCoordinate * (realMultiplicativeMoment 1 : ℂ) = 0 := by
    simpa [multiplicativeMomentMap] using hmultiplicative
  have hfirstProduct :
      u stageTwoCoordinate * (twoTentMomentDeterminant : ℂ) = 0 := by
    calc
      u stageTwoCoordinate * (twoTentMomentDeterminant : ℂ) =
          (realOrdinaryMoment 1 : ℂ) *
              (u stageTwoCoordinate * (realMultiplicativeMoment 0 : ℂ) +
                u stageThreeCoordinate * (realMultiplicativeMoment 1 : ℂ)) -
            (realMultiplicativeMoment 1 : ℂ) *
              (u stageTwoCoordinate * (realOrdinaryMoment 0 : ℂ) +
                u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ)) := by
        unfold twoTentMomentDeterminant
        push_cast
        ring
      _ = 0 := by
        rw [hmultiplicative', hordinary']
        ring
  have hfirst : u stageTwoCoordinate = 0 :=
    (mul_eq_zero.mp hfirstProduct).resolve_right hdetC
  have hA1C : (realOrdinaryMoment 1 : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (ne_of_gt (realOrdinaryMoment_pos 1))
  have hsecondProduct :
      u stageThreeCoordinate * (realOrdinaryMoment 1 : ℂ) = 0 := by
    simpa [hfirst] using hordinary'
  have hsecond : u stageThreeCoordinate = 0 :=
    (mul_eq_zero.mp hsecondProduct).resolve_right hA1C
  funext k
  fin_cases k
  · simpa [stageTwoCoordinate] using hfirst
  · simpa [stageThreeCoordinate] using hsecond

/-- Any two-tent vector satisfying Bombieri's two displayed moment conditions is
the zero vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3f61846511ff9edf8759c611ce860d35ac4325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
