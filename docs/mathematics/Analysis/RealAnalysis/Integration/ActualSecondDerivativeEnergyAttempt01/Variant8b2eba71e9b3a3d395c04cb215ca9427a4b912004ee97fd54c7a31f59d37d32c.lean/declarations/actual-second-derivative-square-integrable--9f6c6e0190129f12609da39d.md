# actual_second_derivative_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dcadc36cbd0b9352bf02928bf92cb9d3dbfe804",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6568a68b-d439-18bb-a99d-338f33cbf37b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:241a39c8-9ad0-e6b1-b820-41f5d9048f86",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_square_integrable",
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
  "slug": "actual-second-derivative-square-integrable--9f6c6e0190129f12609da39d",
  "source": {
    "blob": "9dcadc36cbd0b9352bf02928bf92cb9d3dbfe804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6c6e0190129f12609da39d73489328571ece6e45c2e7c3916de60ef11a23ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:241a39c8-9ad0-e6b1-b820-41f5d9048f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_square_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x => (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) := by
  have hi := (unitSecondEnergyProfile_square_integrable ((A ^ 2)⁻¹)).comp_mul_right'
    (inv_ne_zero hA.ne')
  have hs := (hi.const_mul ((A ^ 2)⁻¹ ^ 2)).div_const
    ((Real.sqrt A * Real.sqrt (sourceNormalization A)) ^ 2)
  have hp : Integrable (fun x => actualSecondProfile A x ^ 2) := by
    convert hs using 1
    funext x
    simp only [actualSecondProfile, div_eq_mul_inv, mul_pow, Pi.mul_apply]
    ring
  apply hp.congr
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

/-- Exact energy of the unchanged normalized source, for every positive real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcadc36cbd0b9352bf02928bf92cb9d3dbfe804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
