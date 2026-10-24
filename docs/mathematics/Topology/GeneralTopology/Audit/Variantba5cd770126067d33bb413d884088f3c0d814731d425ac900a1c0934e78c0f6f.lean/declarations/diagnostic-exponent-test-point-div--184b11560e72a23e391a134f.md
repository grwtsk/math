# diagnostic_exponent_test_point_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8741f6d9-d0e7-a5f5-687c-b2c5a9468d36",
  "kind": "theorem",
  "lexical_name": "diagnostic_exponent_test_point_div",
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
  "slug": "diagnostic-exponent-test-point-div--184b11560e72a23e391a134f",
  "source": {
    "blob": "767d9f48acd35fd989535c92582e8043569065a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:184b11560e72a23e391a134ffc6ffe1bd23d3a84f1fc6817a978a76077a9e8f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8741f6d9-d0e7-a5f5-687c-b2c5a9468d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagnostic_exponent_test_point_div (c d : ℝ) {s A : ℝ}
    (hs : 0 < s) (hA : 1 < A) :
    diagnosticExponent c d s A (testPoint s A) / A =
      1 - (4 * c / s) * (Real.log A)⁻¹ - d * (Real.sqrt A)⁻¹ - Real.log A / A := by
  have hA0 : 0 < A := lt_trans zero_lt_one hA
  have hAne : A ≠ 0 := ne_of_gt hA0
  have hlog : Real.log A ≠ 0 := ne_of_gt (Real.log_pos hA)
  have hsqrt : Real.sqrt A ≠ 0 := ne_of_gt (Real.sqrt_pos.2 hA0)
  have hquot : A / Real.log A / A = (Real.log A)⁻¹ := by
    field_simp
  have hsqrtquot : Real.sqrt A / A = (Real.sqrt A)⁻¹ := by
    calc
      Real.sqrt A / A = Real.sqrt A / (Real.sqrt A) ^ 2 := by
        rw [Real.sq_sqrt (le_of_lt hA0)]
      _ = (Real.sqrt A)⁻¹ := by field_simp
  rw [diagnostic_exponent_test_point c d hs hA]
  simp only [sub_div, mul_div_assoc, div_self hAne, hquot, hsqrtquot]

/-- No fixed damping constant changes the leading normalized value at this point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Audit/Variantba5cd770126067d33bb413d884088f3c0d814731d425ac900a1c0934e78c0f6f.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767d9f48acd35fd989535c92582e8043569065a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
