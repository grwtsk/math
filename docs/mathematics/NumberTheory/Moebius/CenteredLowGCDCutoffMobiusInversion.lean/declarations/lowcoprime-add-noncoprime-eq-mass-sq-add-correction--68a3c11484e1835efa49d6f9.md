# lowCoprime_add_nonCoprime_eq_mass_sq_add_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1deaba1e-7a89-47fb-f4ae-15621531a74d",
  "kind": "theorem",
  "lexical_name": "lowCoprime_add_nonCoprime_eq_mass_sq_add_correction",
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
  "slug": "lowcoprime-add-noncoprime-eq-mass-sq-add-correction--68a3c11484e1835efa49d6f9",
  "source": {
    "blob": "c3f545d399326589f9a8e0848dbf33ea1be7dcc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 407,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a3c11484e1835efa49d6f9bb991d73fc7e311d256ff5cd5c0fc3f7843988b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1deaba1e-7a89-47fb-f4ae-15621531a74d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowCoprime_add_nonCoprime_eq_mass_sq_add_correction
    {X : ℕ}
    (hX : 1 ≤ X)
    (w : ℕ → ℝ) :
    lowCoprimeMobiusSquareExpansion X w +
        centeredNonCoprimeLowGCDBilinear X X.sqrt w =
      (centeredCoefficientMass X w)^2 +
        gcdCutoffCorrectionTail X X.sqrt w := by
  have hY : 1 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    simpa using hX
  have hcut :=
    centeredLowGCDBilinear_eq_mass_sq_add_highCutoff
      (X := X) (Y := X.sqrt) (by omega : 0 < X) hY w
  have hclass :=
    centeredLowGCDBilinear_eq_coprime_add_nonCoprime
      (X := X) (Y := X.sqrt) hY w
  have hsplit :=
    coprimeMobiusSquareExpansion_eq_low_add_high X w
  have hhigh :=
    highGCDCutoffMobiusSquareExpansion_eq_highMobius_add_correction
      X w
  rw [centeredCoprimeBilinear_eq_mobiusSquareExpansion,
    hsplit] at hclass
  rw [hclass, hhigh] at hcut
  linarith

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f545d399326589f9a8e0848dbf33ea1be7dcc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
