# diagonal_upper_succ_of_new_products_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0eb610d6eb0d12edd35060becb80187c3cec035",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aab2445-4fc5-c71d-42b0-396e8a62af44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05f1cfad-a36a-32ad-ebf6-153a24d032d0",
  "kind": "theorem",
  "lexical_name": "diagonal_upper_succ_of_new_products_zero",
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
  "slug": "diagonal-upper-succ-of-new-products-zero--220d96192453f11eca67d9b2",
  "source": {
    "blob": "b0eb610d6eb0d12edd35060becb80187c3cec035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220d96192453f11eca67d9b2e044ed874d6adecee7be0d5da71c8d9700b3f6f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05f1cfad-a36a-32ad-ebf6-153a24d032d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ) (b : ℕ → ℝ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    diagonal (Finset.Ioc U (N + 1)) (sourceKernel A) b =
      diagonal (Finset.Ioc U N) (sourceKernel A) b := by
  classical
  have hk : N + 1 ∉ Finset.Ioc U N := by simp
  rw [upperInventory_succ U N hUN, diagonal_insert _ _ _ _ hk,
    sourceKernel_upper_corner_of_new_products_zero A U N hUN hz]
  ring

/-- Every signed row retains its exact unequal-index deletion at the event. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variant129f079d82e2652b2a7d0ac4c7293b27d39559b6b73e5c74fc6a94ac5eeceda4.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0eb610d6eb0d12edd35060becb80187c3cec035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
