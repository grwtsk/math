# balanced_full_work_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c88c776-7d8b-6a49-c06a-295cdcba9013",
  "kind": "theorem",
  "lexical_name": "balanced_full_work_eq_physical",
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
  "slug": "balanced-full-work-eq-physical--da7ccf10b82b98cf76e4c0bb",
  "source": {
    "blob": "f48219135d4a68dd26eba34564defd7fb3abdde6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant66789ee2feaf61b661528f48ee065a00f865bf462e65addc7b12d977a7be04f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da7ccf10b82b98cf76e4c0bbe401b5b2722794c5328529efdf94a769609e363e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant66789ee2feaf61b661528f48ee065a00f865bf462e65addc7b12d977a7be04f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c88c776-7d8b-6a49-c06a-295cdcba9013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_full_work_eq_physical (A : ℝ) (hA : 0 < A) :
    balancedFirstPrimeFullWork A =
      ∫ t in Real.log 7..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t := by
  have h := balanced_physical_head_eq_trace_sub_curvature A (2 * A) hA
  rw [minusCorrelationWeight_at_upper A hA] at h
  simpa only [mul_zero, zero_sub, balancedFirstPrimeFullWork] using h.symm

/-- Exact original first-prime-plus-main recovery with zero and seven corrections retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant66789ee2feaf61b661528f48ee065a00f865bf462e65addc7b12d977a7be04f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant66789ee2feaf61b661528f48ee065a00f865bf462e65addc7b12d977a7be04f0.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48219135d4a68dd26eba34564defd7fb3abdde6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
