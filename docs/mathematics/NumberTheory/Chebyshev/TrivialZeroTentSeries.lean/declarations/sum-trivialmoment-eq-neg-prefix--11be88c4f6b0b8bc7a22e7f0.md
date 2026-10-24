# sum_trivialMoment_eq_neg_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b16f9b1-20f6-a3d1-7e1a-9873d9042d42",
  "kind": "theorem",
  "lexical_name": "sum_trivialMoment_eq_neg_prefix",
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
  "slug": "sum-trivialmoment-eq-neg-prefix--11be88c4f6b0b8bc7a22e7f0",
  "source": {
    "blob": "b186fd321c90002175fcbdfa2d818365675317c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11be88c4f6b0b8bc7a22e7f06eed7f1beb93c4f0925c479cfac8b4196c34adc5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b16f9b1-20f6-a3d1-7e1a-9873d9042d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_trivialMoment_eq_neg_prefix (N : ℕ) (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) :
    (∑ k ∈ Finset.range N, trivialMoment x h k) = -correctionPrefix N x h := by
  unfold correctionPrefix densityPrefix
  simp only [neg_neg, Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum
    (fun k _ => powerWeight_intervalIntegrable x h k ha (by linarith))]
  rfl

/-- Nonnegative power moments sum to minus the independently defined negative correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b186fd321c90002175fcbdfa2d818365675317c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
