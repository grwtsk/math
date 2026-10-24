# source_ratio_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d3cf167-385d-a485-aefa-4b40e77b407e",
  "kind": "theorem",
  "lexical_name": "source_ratio_exact",
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
  "slug": "source-ratio-exact--7e3cfc5a4876a4e6f6593029",
  "source": {
    "blob": "1e5f639ee9889753fc63e448367f6fbc102c7f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt11/Variant110e4aa2c1d78495abbeb874169229ebc20fd3be7e4f247a56f0f4bf28705d81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3cfc5a4876a4e6f65930292daa0eeef2fa8cc1f9b68a2ffa8b30ab09667d66",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt11/Variant110e4aa2c1d78495abbeb874169229ebc20fd3be7e4f247a56f0f4bf28705d81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d3cf167-385d-a485-aefa-4b40e77b407e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_ratio_exact {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0)
    (hf : z^2-1/4 ≠ 0) :
    scaledAmplitude A z/leadingCoefficient z =
      (normalizationRatio A : ℂ)*(positiveEndpoint A z-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z) := by
  have hp : 0 < A := by linarith
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  have hs0 : (Real.sqrt (4096/109395 : ℝ) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num)).ne'
  apply (div_eq_iff (leadingCoefficient_ne_zero hz hf)).mpr
  rw [scaledAmplitude_exact hA z hz]
  unfold leadingCoefficient normalizationRatio positiveEndpoint reflectedEndpoint transformPolynomial
  push_cast
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt11/Variant110e4aa2c1d78495abbeb874169229ebc20fd3be7e4f247a56f0f4bf28705d81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt11/Variant110e4aa2c1d78495abbeb874169229ebc20fd3be7e4f247a56f0f4bf28705d81.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5f639ee9889753fc63e448367f6fbc102c7f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
