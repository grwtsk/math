# actual_second_derivative_ae_eq_profile

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
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e36601a9-23c9-91c6-017e-8487be484afe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d754c93-359c-2f79-22d2-1ce08b87e190",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_ae_eq_profile",
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
  "slug": "actual-second-derivative-ae-eq-profile--a5b688c92d6f99116d1a0d66",
  "source": {
    "blob": "9dcadc36cbd0b9352bf02928bf92cb9d3dbfe804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5b688c92d6f99116d1a0d660527a16bb49efbf5f59456b56cd003fa615fd4b8",
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

Occurrence: `result:7d754c93-359c-2f79-22d2-1ce08b87e190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_ae_eq_profile (A : ℝ) (hA : 0 < A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      actualSecondProfile A := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hx0 hx1
  by_cases hm : x ∈ Icc (-A) A
  · rw [actual_second_derivative_eq_interior A x hA
      ⟨lt_of_le_of_ne hm.1 hx0.symm, lt_of_le_of_ne hm.2 hx1⟩,
      actualSecondProfile_eq_interior A x hA hm]
  · have he : EqOn (deriv (normalizedTest explicitSecondDerivative A))
        (fun _ => (0 : ℝ)) ((Icc (-A) A)ᶜ) := by
      intro y hy
      rw [actual_first_derivative_eq_indicator A hA, indicator_of_notMem hy]
    rw [he.deriv isClosed_Icc.isOpen_compl hm, deriv_const]
    have hmu : x / A ∉ Icc (-1 : ℝ) 1 :=
      (scaled_unit_interval_iff A x hA).not.mpr hm
    simp [actualSecondProfile, unitSecondEnergyProfile, indicator_of_notMem hmu]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualSecondDerivativeEnergyAttempt01/Variant8b2eba71e9b3a3d395c04cb215ca9427a4b912004ee97fd54c7a31f59d37d32c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dcadc36cbd0b9352bf02928bf92cb9d3dbfe804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
