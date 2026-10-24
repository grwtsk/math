# occurrenceIntegrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f42c337-9527-3405-3007-920070db3f5f",
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
  "slug": "occurrenceintegrand-norm-le--9d10375386f09c4a5e5a0555",
  "source": {
    "blob": "2adacbe11875d3e1ac1e540fc1412ce79b82d47e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 465,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d10375386f09c4a5e5a05553ee64500df8249294e5674f1fc0ebac6be0c80a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f42c337-9527-3405-3007-920070db3f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–497.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2adacbe11875d3e1ac1e540fc1412ce79b82d47e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
