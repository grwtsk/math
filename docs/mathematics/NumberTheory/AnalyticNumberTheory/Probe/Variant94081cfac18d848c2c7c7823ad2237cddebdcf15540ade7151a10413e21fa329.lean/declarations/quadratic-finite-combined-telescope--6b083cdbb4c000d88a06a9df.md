# quadratic_finite_combined_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1ea5320-e7e5-7672-0ded-51a71332f78d",
  "kind": "theorem",
  "lexical_name": "quadratic_finite_combined_telescope",
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
  "slug": "quadratic-finite-combined-telescope--6b083cdbb4c000d88a06a9df",
  "source": {
    "blob": "e295536122f02b71ebacaf5caee52cb11df62669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b083cdbb4c000d88a06a9dfb72502eccf138e8cf6cca051d72dd83d1b8184a5",
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

Occurrence: `result:c1ea5320-e7e5-7672-0ded-51a71332f78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_finite_combined_telescope [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (u : ℕ → H) (n : ℕ) :
    quadraticReadout K (u n) - quadraticReadout K (u 0) =
      ∑ j ∈ Finset.range n, (⟪stateIncrement u j, K (u (j + 1) + u j)⟫_ℂ).re := by
  rw [← Finset.sum_range_sub (fun j ↦ quadraticReadout K (u j)) n]
  apply Finset.sum_congr rfl
  intro j hj
  exact quadratic_difference_eq_combined K hK _ _

/-- Finite Hilbert Cauchy–Schwarz controls the actual prescribed signed pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e295536122f02b71ebacaf5caee52cb11df62669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
