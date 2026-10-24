# sum_divisors_filter_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc5ced1d-e27b-25f5-3447-ea72d01acb31",
  "kind": "theorem",
  "lexical_name": "sum_divisors_filter_squarefree",
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
  "slug": "sum-divisors-filter-squarefree--e92600e13ee07b2fdfba8d41",
  "source": {
    "blob": "82768a42121429627bca02a10ce73934f81d1e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 302,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92600e13ee07b2fdfba8d4170d1e613ba2efb146c95d3b9b6c623e0bf6a7209",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc5ced1d-e27b-25f5-3447-ea72d01acb31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_divisors_filter_squarefree {n : ℕ} (h0 : n ≠ 0) {α : Type*} [AddCommMonoid α]
    {f : ℕ → α} :
    ∑ d ∈ n.divisors with Squarefree d, f d =
      ∑ i ∈ (UniqueFactorizationMonoid.normalizedFactors n).toFinset.powerset, f i.val.prod := by
  rw [Finset.sum_eq_multiset_sum, divisors_filter_squarefree h0, Multiset.map_map,
    Finset.sum_eq_multiset_sum]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82768a42121429627bca02a10ce73934f81d1e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
