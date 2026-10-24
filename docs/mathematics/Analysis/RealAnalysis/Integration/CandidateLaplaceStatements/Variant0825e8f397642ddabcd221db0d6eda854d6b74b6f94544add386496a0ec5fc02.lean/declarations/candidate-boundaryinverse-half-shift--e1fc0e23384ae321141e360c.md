# candidate_boundaryInverse_half_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e4eaef0-6cca-2124-38ae-42314c153696",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_half_shift",
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
  "slug": "candidate-boundaryinverse-half-shift--e1fc0e23384ae321141e360c",
  "source": {
    "blob": "d7476eaaf4da6841163e4b09249ca9c4384323ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1fc0e23384ae321141e360c9de9fb8cd38dd80d690ee1db8e820da8ea92e13e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e4eaef0-6cca-2124-38ae-42314c153696`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_half_shift (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) :
    boundaryInverse (candidate X ε h) x = (Real.exp (-(ε / 2) * x) : ℂ) *
      boundaryInverse (candidate X (ε / 2) h) x := by
  have he := candidate_boundaryInverse_shift X hX (ε / 2) h (by positivity) hh hh1
    (ε / 2) (by positivity) x
  have hεid : ε / 2 + ε / 2 = ε := by ring
  rw [hεid] at he
  rw [he]
  have hmul : (Real.exp (-(ε / 2) * x) : ℂ) * (Real.exp (x * (ε / 2)) : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, ← Real.exp_add]
    ring_nf
    simp
  rw [← mul_assoc, hmul, one_mul]

/-- Every actual inverse has a genuine exponential bound, uniformly over the whole time axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant0825e8f397642ddabcd221db0d6eda854d6b74b6f94544add386496a0ec5fc02.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7476eaaf4da6841163e4b09249ca9c4384323ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
