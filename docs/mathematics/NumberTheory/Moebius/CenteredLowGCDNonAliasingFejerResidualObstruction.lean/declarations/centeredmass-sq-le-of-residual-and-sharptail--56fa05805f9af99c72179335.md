# centeredMass_sq_le_of_residual_and_sharpTail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c869f31a-0dad-9e82-9639-73efe4895b5d",
  "kind": "theorem",
  "lexical_name": "centeredMass_sq_le_of_residual_and_sharpTail",
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
  "slug": "centeredmass-sq-le-of-residual-and-sharptail--56fa05805f9af99c72179335",
  "source": {
    "blob": "6717c5764e123cdafe752a1d7e9567069d635976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56fa05805f9af99c72179335e67cdf3620a5edc55ff808e9b6b607e3e47974a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c869f31a-0dad-9e82-9639-73efe4895b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMass_sq_le_of_residual_and_sharpTail
    {X N m : ℕ}
    (hX : 4 ≤ X)
    (hsharp : NonAliasingFejerSharpDivisibilityTail X N m)
    {C : ℝ}
    (hC : 0 ≤ C)
    (hresidual :
      |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| ≤
        C * centeredLowGCDTargetScale X) :
    (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 ≤
      (C + 256) * centeredLowGCDTargetScale X := by
  have hid :=
    nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
      (X := X) (N := N) (m := m) (by omega : 1 ≤ X)
  have hcorr :=
    abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail
      hX hsharp
  have hmass :
      (nonAliasingFejerCenteredVonMangoldtMass X N m)^2 =
        nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m -
          gcdCutoffCorrectionTail X X.sqrt
            (nonAliasingFejerPrefixWeight X N m) := by
    linarith
  have htri :
      |(nonAliasingFejerCenteredVonMangoldtMass X N m)^2| ≤
        |nonAliasingFejerSmallMobiusAndPositiveGCDResidual X N m| +
          |gcdCutoffCorrectionTail X X.sqrt
            (nonAliasingFejerPrefixWeight X N m)| := by
    rw [hmass]
    exact abs_sub _ _
  have hscale : 0 ≤ centeredLowGCDTargetScale X := by
    unfold centeredLowGCDTargetScale
    positivity
  rw [abs_of_nonneg (sq_nonneg _)] at htri
  nlinarith

/-- Conversely, under the same explicit correction control, the original
centered mass-square estimate implies the residual estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6717c5764e123cdafe752a1d7e9567069d635976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
