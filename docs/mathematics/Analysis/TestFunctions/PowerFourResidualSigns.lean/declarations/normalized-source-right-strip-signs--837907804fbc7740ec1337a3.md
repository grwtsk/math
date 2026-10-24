# normalized_source_right_strip_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eaef7d1-41fc-6656-6c85-fd7bccfb18a1",
  "kind": "theorem",
  "lexical_name": "normalized_source_right_strip_signs",
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
  "slug": "normalized-source-right-strip-signs--837907804fbc7740ec1337a3",
  "source": {
    "blob": "f8cbc44fa519aeb60e39acb8d5e08bb32188f104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 90,
    "path": "GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837907804fbc7740ec1337a3f0cee301d3a57cef7966e3a6f8c6c575988b660c",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eaef7d1-41fc-6656-6c85-fd7bccfb18a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_source_right_strip_signs {A x : ℝ} (hA : 1 ≤ A)
    (hx : A - 1 / 16 ≤ x ∧ x < A) :
    0 < normalizedSource A x ∧ deriv (normalizedSource A) x < 0 := by
  have positive : 0 < A := by linarith
  have hxSupport : x ∈ Icc (-A) A := ⟨by linarith [hx.1], hx.2.le⟩
  obtain ⟨lower, upper, gapPositive, gapBound⟩ := right_strip_coordinate_bounds hA hx
  obtain ⟨first, second⟩ := right_strip_bracket_signs hA ⟨lower, upper⟩ gapBound
  have factorPositive : 0 < A ^ (-(1 / 2 : ℝ)) / Real.sqrt (sourceNormalization A) :=
    div_pos (Real.rpow_pos_of_pos positive _) (Real.sqrt_pos.mpr
      (SourceNormalization.source_normalization_pos positive))
  constructor
  · rw [normalized_source_closed_factor positive hxSupport]
    exact mul_pos (mul_pos factorPositive (pow_pos gapPositive 2)) first
  · rw [normalized_source_deriv_closed_factor positive hxSupport]
    exact mul_neg_of_pos_of_neg (mul_pos (mul_pos factorPositive (by linarith))
      gapPositive) second

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/PowerFourResidualSigns.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cbc44fa519aeb60e39acb8d5e08bb32188f104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
