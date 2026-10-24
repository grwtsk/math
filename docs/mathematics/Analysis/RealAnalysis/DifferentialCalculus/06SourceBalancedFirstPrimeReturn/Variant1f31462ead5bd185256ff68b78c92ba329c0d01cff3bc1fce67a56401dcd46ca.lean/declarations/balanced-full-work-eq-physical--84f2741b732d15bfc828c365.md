# balanced_full_work_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77be6230-0227-688b-a2cc-09acc05e1e83",
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
  "slug": "balanced-full-work-eq-physical--84f2741b732d15bfc828c365",
  "source": {
    "blob": "633b83a0ae3d7ba28474f267a16673561bc2b130",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84f2741b732d15bfc828c365e6c88c94f72a78f78996520a64f11472e42a667a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77be6230-0227-688b-a2cc-09acc05e1e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–244.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceBalancedFirstPrimeReturn/Variant1f31462ead5bd185256ff68b78c92ba329c0d01cff3bc1fce67a56401dcd46ca.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633b83a0ae3d7ba28474f267a16673561bc2b130` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
