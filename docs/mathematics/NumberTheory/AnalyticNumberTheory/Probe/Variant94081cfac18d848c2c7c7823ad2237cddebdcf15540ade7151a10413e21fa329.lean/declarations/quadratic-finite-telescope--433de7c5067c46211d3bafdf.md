# quadratic_finite_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44e8b3da-c41d-a24b-d481-2abd3a3b0ae6",
  "kind": "theorem",
  "lexical_name": "quadratic_finite_telescope",
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
  "slug": "quadratic-finite-telescope--433de7c5067c46211d3bafdf",
  "source": {
    "blob": "e295536122f02b71ebacaf5caee52cb11df62669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433de7c5067c46211d3bafdfd8cc91a6f0d4b65101a647ab253b8605e075e435",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44e8b3da-c41d-a24b-d481-2abd3a3b0ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_finite_telescope [CompleteSpace H]
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (u : ℕ → H) (n : ℕ) :
    quadraticReadout K (u n) - quadraticReadout K (u 0) =
      ∑ j ∈ Finset.range n, (quadraticReadout K (stateIncrement u j) +
        2 * (⟪stateIncrement u j, K (u j)⟫_ℂ).re) := by
  rw [← Finset.sum_range_sub (fun j ↦ quadraticReadout K (u j)) n]
  apply Finset.sum_congr rfl
  intro j hj
  exact quadratic_difference_eq_diagonal_cross K hK _ _

/-- The same finite telescope keeps each complete increment paired with its whole row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e295536122f02b71ebacaf5caee52cb11df62669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
