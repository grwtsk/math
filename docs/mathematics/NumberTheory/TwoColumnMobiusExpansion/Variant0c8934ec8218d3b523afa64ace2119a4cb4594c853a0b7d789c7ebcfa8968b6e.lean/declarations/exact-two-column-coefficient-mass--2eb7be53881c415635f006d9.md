# exact_two_column_coefficient_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d31499d7-cd3b-1e90-c361-752347f7c44a",
  "kind": "theorem",
  "lexical_name": "exact_two_column_coefficient_mass",
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
  "slug": "exact-two-column-coefficient-mass--2eb7be53881c415635f006d9",
  "source": {
    "blob": "843f31a66253ce123b3508acd9aee9760351d18e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 82,
    "path": "GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb7be53881c415635f006d9d501986f2425dd97a2627a0a95dfc4da99ee690e",
  "verification": {
    "reference": "docs/verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d31499d7-cd3b-1e90-c361-752347f7c44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_two_column_coefficient_mass (s : Finset ℕ) (hs : ∀ p ∈ s, p.Prime) :
    (∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      |μ (∏ p ∈ u, p) * μ (∏ p ∈ v, p)|) = (4 : ℤ) ^ s.card := by
  have hc : (∑ u ∈ s.powerset, ∑ v ∈ s.powerset,
      |μ (∏ p ∈ u, p) * μ (∏ p ∈ v, p)|) =
      ∑ _u ∈ s.powerset, ∑ _v ∈ s.powerset, (1 : ℤ) := by
    apply Finset.sum_congr rfl
    intro u hu
    apply Finset.sum_congr rfl
    intro v hv
    rw [subset_mobius_sign u (fun p hp => hs p (Finset.mem_powerset.mp hu hp)),
      subset_mobius_sign v (fun p hp => hs p (Finset.mem_powerset.mp hv hp)), abs_mul]
    simp
  rw [hc]
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, Finset.card_powerset,
    Nat.cast_pow, Nat.cast_ofNat]
  rw [← mul_pow]
  norm_num

/-- Absolute expansion pays every pair of subsets and retains its common row cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/TwoColumnMobiusExpansion/Variant0c8934ec8218d3b523afa64ace2119a4cb4594c853a0b7d789c7ebcfa8968b6e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843f31a66253ce123b3508acd9aee9760351d18e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
