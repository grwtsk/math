# sq_abs_parityCenteredLagAutocorrelation_le_secondMoment_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edb489b5-d03a-766a-80df-1b187946070c",
  "kind": "theorem",
  "lexical_name": "sq_abs_parityCenteredLagAutocorrelation_le_secondMoment_sq",
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
  "slug": "sq-abs-paritycenteredlagautocorrelation-le-secondmoment-sq--c64ae256dc5f08f2733ccb93",
  "source": {
    "blob": "a12594e67ecd820cbe2ffc97ee15de13b7131754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64ae256dc5f08f2733ccb937f2a0c5f01e4ade1d0834a135c33be82be2dc254",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb489b5-d03a-766a-80df-1b187946070c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_abs_parityCenteredLagAutocorrelation_le_secondMoment_sq
    (b r ell : ℕ) (H : Finset ℕ) :
    |parityCenteredLagAutocorrelation b r ell H| ^ 2 ≤
      parityCenteredIntegerCoordinateSecondMoment b r H ^ 2 := by
  calc
    |parityCenteredLagAutocorrelation b r ell H| ^ 2 ≤
        parityCenteredLagLeftEnergy b r ell H *
          parityCenteredLagRightEnergy b r ell H :=
      sq_abs_parityCenteredLagAutocorrelation_le b r ell H
    _ ≤ parityCenteredIntegerCoordinateSecondMoment b r H *
          parityCenteredIntegerCoordinateSecondMoment b r H := by
      exact mul_le_mul
        (parityCenteredLagLeftEnergy_le_secondMoment b r ell H)
        (parityCenteredLagRightEnergy_le_secondMoment b r ell H)
        (by unfold parityCenteredLagRightEnergy; positivity)
        (by unfold parityCenteredIntegerCoordinateSecondMoment; positivity)
    _ = parityCenteredIntegerCoordinateSecondMoment b r H ^ 2 := by ring

/-- Existing zero-winding energy is exactly four times this second moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12594e67ecd820cbe2ffc97ee15de13b7131754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
