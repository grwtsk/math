# occurrenceIntegrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "754ccac173094178192c7e051096f1ff06033325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d7a6d36-18e2-6f14-efe5-e800a8f4e253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:853f386d-4260-d978-6e2d-a2e564a40fcb",
  "kind": "theorem",
  "lexical_name": "occurrenceIntegrand_norm_le",
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
  "slug": "occurrenceintegrand-norm-le--be214a03648baafda59d78f2",
  "source": {
    "blob": "754ccac173094178192c7e051096f1ff06033325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be214a03648baafda59d78f25a128144e84b072d0bd5a3ed90aae2811a88663e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853f386d-4260-d978-6e2d-a2e564a40fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem occurrenceIntegrand_norm_le
    (s : ℂ) (o : ZeroOccurrence)
    (A : ℝ) (hA : 1 ≤ A) :
    ‖occurrenceIntegrand s o A‖ ≤
      scaleMajorant s A * modeWeight o := by
  have h :=
    expandedSummand_norm_le A hA o
  change
    ‖expandedSummand A (shiftedValue o)‖ ≤
      (4 * 266 ^ 2) * (1 + A ^ 8) *
        Real.exp A * modeWeight o at h
  have hexp :
      Real.exp (-s.re * A) * Real.exp A =
        Real.exp (-(s.re - 1) * A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    ‖occurrenceIntegrand s o A‖ =
        Real.exp (-s.re * A) *
          ‖expandedSummand A (shiftedValue o)‖ := by
      simp [occurrenceIntegrand,
        Complex.norm_exp, Complex.mul_re]
    _ ≤ Real.exp (-s.re * A) *
        ((4 * 266 ^ 2) * (1 + A ^ 8) *
          Real.exp A * modeWeight o) := by
      gcongr
    _ = scaleMajorant s A * modeWeight o := by
      unfold scaleMajorant
      rw [← hexp]
      ring

/-- Integrating the norm preserves the product majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant2023f6d173b0300b92c6a7dd6a399fe66b9fa98382eebcf09a2da45921d74a4d.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `754ccac173094178192c7e051096f1ff06033325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
