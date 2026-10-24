# Multipliable.tprod_le_of_prod_range_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f049da45-d682-7c1f-aa08-6d65853ed928",
  "kind": "theorem",
  "lexical_name": "Multipliable.tprod_le_of_prod_range_le",
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
  "slug": "multipliable-tprod-le-of-prod-range-le--2d6f5134ebbafa40b174bf7e",
  "source": {
    "blob": "2f605d29771de7d413b680255fc3b8d13a1904c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d6f5134ebbafa40b174bf7e4eb944df5d002f0602b66368e7728bf760cf3a1b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f049da45-d682-7c1f-aa08-6d65853ed928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Multipliable.tprod_le_of_prod_range_le [ClosedIicTopology α] {f : ℕ → α}
    (hf : Multipliable f) (h : ∀ n, ∏ i ∈ range n, f i ≤ c) : ∏' n, f n ≤ c :=
  le_of_tendsto' hf.hasProd.tendsto_prod_nat h

@[deprecated (since := "2025-04-12")] alias tsum_le_of_sum_range_le :=
  Summable.tsum_le_of_sum_range_le
@[to_additive existing, deprecated (since := "2025-04-12")] alias tprod_le_of_prod_range_le :=
  Multipliable.tprod_le_of_prod_range_le

end Preorder

section OrderedCommMonoid

variable [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α]
  [TopologicalSpace α] [OrderClosedTopology α] {f g : ι → α}
  {a a₁ a₂ : α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant23b50b4052f3c1c1277e4e31e79ee0dcf32f19ee4b5f25b93a9ce604d39a0e91.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f605d29771de7d413b680255fc3b8d13a1904c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
