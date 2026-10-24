# anchorCancellation_oscillation_to_shellCancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae9bbb7b-30e6-f7bc-e9ba-250ae99708ea",
  "kind": "theorem",
  "lexical_name": "anchorCancellation_oscillation_to_shellCancellation",
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
  "slug": "anchorcancellation-oscillation-to-shellcancellation--c1a8d54279c49dcac9ed8210",
  "source": {
    "blob": "2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1a8d54279c49dcac9ed8210f6bb30afa9308d67d51611bb3de9f533416a66bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae9bbb7b-30e6-f7bc-e9ba-250ae99708ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchorCancellation_oscillation_to_shellCancellation
    {ρ : ℝ}
    (hanchor : QuadraticThetaShellAnchorCancellationAt ρ)
    (hosc : DyadicThetaErrorOscillationAt ρ) :
    QuadraticThetaShellCancellationAt ρ := by
  intro η hη
  obtain ⟨K, hK, R, hR, ja, hanchorBound⟩ := hanchor η hη
  obtain ⟨S, hS, jo, hoscBound⟩ := hosc η hη
  let T : ℝ := R + S
  have hT : 0 ≤ T := by
    dsimp [T]
    positivity
  refine ⟨K, hK, T, hT, max ja jo, ?_⟩
  intro j hj A hA henv u hu
  have hja : ja ≤ j := le_trans (le_max_left _ _) hj
  have hjo : jo ≤ j := le_trans (le_max_right _ _) hj
  have hXmem :
      ((dyadicScale j : ℕ) : ℝ) ∈
        Set.Icc
          (((dyadicScale j : ℕ) : ℝ))
          (((2 * dyadicScale j : ℕ) : ℝ)) := by
    constructor
    · exact le_rfl
    · norm_num
  have hbase :=
    hanchorBound j hja A hA henv
  have hosc' :=
    hoscBound j hjo u hu
  have hdecomp_u :
      thetaError u + thetaShellError u =
        thetaError (2 * u) := by
    symm
    exact thetaError_two_mul u
  have hdecomp_X :
      thetaError (dyadicScale j : ℝ) +
          thetaShellError (dyadicScale j : ℝ) =
        thetaError (2 * (dyadicScale j : ℝ)) := by
    symm
    exact thetaError_two_mul (dyadicScale j : ℝ)
  have htri :
      |thetaError (2 * u)| ≤
        |thetaError (2 * (dyadicScale j : ℝ))| +
          |thetaError (2 * u) -
            thetaError (2 * (dyadicScale j : ℝ))| := by
    have :=
      abs_add
        (thetaError (2 * (dyadicScale j : ℝ)))
        (thetaError (2 * u) -
          thetaError (2 * (dyadicScale j : ℝ)))
    have hid :
        thetaError (2 * (dyadicScale j : ℝ)) +
            (thetaError (2 * u) -
              thetaError (2 * (dyadicScale j : ℝ))) =
          thetaError (2 * u) := by ring
    rw [hid] at this
    exact this
  rw [hdecomp_u]
  rw [hdecomp_X] at hbase
  have hpow :
      0 ≤ Real.rpow (dyadicScale j : ℝ)
        (quadraticThreshold ρ + η / 2) := by
    positivity
  dsimp [T]
  nlinarith

/-- A short-interval oscillation theorem is exactly the missing uniformization
input once anchor cancellation is known. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
