# interior_edge_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37936d67-ca8e-72ff-eca6-2a65492bb996",
  "kind": "theorem",
  "lexical_name": "interior_edge_product",
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
  "slug": "interior-edge-product--e289b1a12ce91541e8d33796",
  "source": {
    "blob": "7a3a4701cef8979e811839c42115da9add5faef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 116,
    "path": "GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e289b1a12ce91541e8d33796de9c89b38dc9f8ab032df36c95bf6568c75adce6",
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

Occurrence: `result:37936d67-ca8e-72ff-eca6-2a65492bb996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_edge_product {A : ℝ} (hA : 0 < A) (y x : ℝ) :
    normalizedInterior A x * normalizedInterior A (x - (2 * A - y)) =
      (edgePolynomial A (A - x) * edgePolynomial A (y - (A - x))) /
        (A * sourceNormalization A) := by
  have hx := normalizedInterior_edge_polynomial hA (A - x)
  have hy := normalizedInterior_edge_polynomial hA (y - (A - x))
  rw [show A - (A - x) = x by ring] at hx
  rw [show A - (y - (A - x)) = -(x - (2 * A - y)) by ring,
    normalizedInterior_even A] at hy
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hr : (Real.sqrt A * Real.sqrt (sourceNormalization A)) *
      (Real.sqrt A * Real.sqrt (sourceNormalization A)) = A * sourceNormalization A := by
    calc
      _ = (Real.sqrt A) ^ 2 * (Real.sqrt (sourceNormalization A)) ^ 2 := by ring
      _ = _ := by rw [Real.sq_sqrt hA.le, Real.sq_sqrt hz.le]
  rw [hx, hy, div_mul_div_comm, hr]

/-- The full finite beta sum is the actual correlation for every edge distance in [0,2A]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3a4701cef8979e811839c42115da9add5faef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
