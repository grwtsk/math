# sourcePeanoPrimitive_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea8b301-4528-7072-c2b5-4e43d6382085",
  "kind": "theorem",
  "lexical_name": "sourcePeanoPrimitive_at_zero",
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
  "slug": "sourcepeanoprimitive-at-zero--1d105d43235d2a9a3dc3450c",
  "source": {
    "blob": "276a88bea11586292e927bbc9ace9bee2e351f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d105d43235d2a9a3dc3450cabbde6f6f1060b4adc4dfb725ecd9047e1f944f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea8b301-4528-7072-c2b5-4e43d6382085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePeanoPrimitive_at_zero {A : ℝ} (hA : 0 < A) :
    sourcePeanoPrimitive A 0 =
      ((65536 / 109395 : ℝ) / 4 - (131072 / 45045 : ℝ) / A ^ 2) /
        sourceNormalization A := by
  rw [sourcePeanoPrimitive_eq_profile hA le_rfl (by linarith)]
  simp only [zero_div, Real.exp_zero, one_div, peanoNumerator,
    overlapProfile_zero, overlapProfile_deriv_zero, overlapProfile_second_deriv_zero]
  ring

/-- The actual center slope retains the positive half-energy and mass contributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Audit/Variant1f52a7e9de0f79a76db9d5682ea1288b43ba7a5da3b0db1765c4eb9f6c17ca1c.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `276a88bea11586292e927bbc9ace9bee2e351f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
