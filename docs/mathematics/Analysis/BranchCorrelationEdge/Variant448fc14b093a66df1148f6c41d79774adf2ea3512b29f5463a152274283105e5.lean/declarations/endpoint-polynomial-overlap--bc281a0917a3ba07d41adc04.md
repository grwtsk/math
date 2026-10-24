# endpoint_polynomial_overlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51bac452-c2dd-9895-f3dd-6745649e52ea",
  "kind": "theorem",
  "lexical_name": "endpoint_polynomial_overlap",
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
  "slug": "endpoint-polynomial-overlap--bc281a0917a3ba07d41adc04",
  "source": {
    "blob": "7a3a4701cef8979e811839c42115da9add5faef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 88,
    "path": "GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc281a0917a3ba07d41adc04a091ccf0522a34585a5bc43a3a7f6ea6cc8817b1",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51bac452-c2dd-9895-f3dd-6745649e52ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem endpoint_polynomial_overlap (A y : ℝ) :
    (∫ x : ℝ in (0 : ℝ)..y, edgePolynomial A x * edgePolynomial A (y - x)) =
      ∑ i : Fin 7, ∑ j : Fin 7,
        edgeCoefficient A i * edgeCoefficient A j * overlapWeight i j *
          y ^ (i.val + j.val + 5) := by
  have he : (fun x ↦ edgePolynomial A x * edgePolynomial A (y - x)) =
      fun x ↦ ∑ i : Fin 7, ∑ j : Fin 7,
        (edgeCoefficient A i * edgeCoefficient A j) *
          (x ^ (i.val + 2) * (y - x) ^ (j.val + 2)) := by
    funext x
    dsimp only [edgePolynomial]
    rw [Finset.sum_mul]
    simp_rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [he]
  simp (disch := (intros; apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_finsetSum, intervalIntegral.integral_const_mul, beta_seven]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Reflection and the exact √A √Z factors identify the complete source edge integrand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3a4701cef8979e811839c42115da9add5faef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
