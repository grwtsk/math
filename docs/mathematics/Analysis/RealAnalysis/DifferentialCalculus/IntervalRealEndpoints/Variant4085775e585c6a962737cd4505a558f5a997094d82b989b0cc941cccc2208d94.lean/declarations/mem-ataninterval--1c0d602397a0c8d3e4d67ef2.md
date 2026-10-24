# mem_atanInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:444a08ff-b201-8288-6381-b890c239678e",
  "kind": "theorem",
  "lexical_name": "mem_atanInterval",
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
  "slug": "mem-ataninterval--1c0d602397a0c8d3e4d67ef2",
  "source": {
    "blob": "a8bfe74749149205173be5f0435832353e0c6d91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c0d602397a0c8d3e4d67ef24a0a4eabf68ffd1204a4714309ac3dc39f88c8ad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:444a08ff-b201-8288-6381-b890c239678e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_atanInterval {x : ℝ} {I : IntervalReal} (_hx : x ∈ I) :
    Real.arctan x ∈ atanInterval I := by
  simp only [mem_def, atanInterval]
  constructor
  · have := Real.neg_pi_div_two_lt_arctan x
    have hpi : Real.pi < 4 := Real.pi_lt_four
    linarith
  · have := Real.arctan_lt_pi_div_two x
    have hpi : Real.pi < 4 := Real.pi_lt_four
    linarith

/-- The derivative of arsinh is bounded by 1: |arsinh'(x)| = 1/√(1+x²) ≤ 1 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8bfe74749149205173be5f0435832353e0c6d91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
