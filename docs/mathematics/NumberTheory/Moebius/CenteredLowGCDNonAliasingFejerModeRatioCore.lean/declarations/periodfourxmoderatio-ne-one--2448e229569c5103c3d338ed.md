# periodFourXModeRatio_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fd04774-d0b0-037e-ea93-ee0f06bb6744",
  "kind": "theorem",
  "lexical_name": "periodFourXModeRatio_ne_one",
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
  "slug": "periodfourxmoderatio-ne-one--2448e229569c5103c3d338ed",
  "source": {
    "blob": "1ca8c3c4873edd2b31654f4ed2644f139fb87b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 37,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2448e229569c5103c3d338edda27390c60cc1e9aceb13e4d7ac1468193857a46",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fd04774-d0b0-037e-ea93-ee0f06bb6744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodFourXModeRatio_ne_one
    {X : ℕ} (hX : 0 < X)
    {k : ℤ}
    (hkmod : (k : ZMod (fejerOctavePeriod X)) ≠ 0) :
    periodFourXModeRatio X k ≠ 1 := by
  intro hphase
  unfold periodFourXModeRatio at hphase
  obtain ⟨z, hz⟩ := Complex.exp_eq_one_iff.mp hphase
  have hL0 : (fejerOctavePeriod X : ℤ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  have hdiv : (fejerOctavePeriod X : ℤ) ∣ k := by
    refine ⟨z, ?_⟩
    apply (@Int.cast_inj ℂ _ _).mp
    have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
      exact_mod_cast hL0
    linear_combination
      (norm := (push_cast; field [hLc, Complex.I_ne_zero,
        (show (Real.pi : ℂ) ≠ 0 by exact_mod_cast Real.pi_ne_zero)]))
      hz * (((fejerOctavePeriod X : ℕ) : ℂ) /
        (2 * (Real.pi : ℂ) * Complex.I))
  exact hkmod (by
    rw [ZMod.intCast_eq_zero_iff_dvd]
    exact hdiv)

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerModeRatioCore.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca8c3c4873edd2b31654f4ed2644f139fb87b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
