# tailProperMass_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4ed295-66a7-66d1-2e36-99a62921a397",
  "kind": "theorem",
  "lexical_name": "tailProperMass_le_budget",
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
  "slug": "tailpropermass-le-budget--92e874b104b44d5d5bd62c2f",
  "source": {
    "blob": "9ac32079a51818a8a083473af661561a61ced0e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e874b104b44d5d5bd62c2f2a8fbcc243987090fb0dceb48323e7d064441532",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4ed295-66a7-66d1-2e36-99a62921a397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tailProperMass_le_budget (U N : ℕ) (hU : 1 ≤ U) :
    tailProperMass U N ≤ powerTailBudget U := by
  let P := (Ioc U N).filter Nat.Prime
  let K := Icc 2 N
  let f : ℕ × ℕ → ℝ := fun pk => Real.log (pk.1 : ℝ) / ((pk.1 : ℝ) ^ pk.2)
  have hf : ∀ pk ∈ P.product K, 0 ≤ f pk := by
    intro pk hpk
    have hp := (Finset.mem_filter.mp (Finset.mem_product.mp hpk).1).2
    exact div_nonneg (Real.log_nonneg (by exact_mod_cast hp.one_le)) (by positivity)
  calc
    tailProperMass U N = ∑ pk ∈ properExponentInventory U N, f pk :=
      tailProperMass_eq_exponent_sum U N
    _ ≤ ∑ pk ∈ P.product K, f pk :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _) (fun pk hpk _ => hf pk hpk)
    _ = ∑ p ∈ P, ∑ k ∈ K, Real.log (p : ℝ) / ((p : ℝ) ^ k) := by
      rw [Finset.product_eq_sprod, Finset.sum_product]
    _ ≤ ∑ p ∈ P, Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
      apply Finset.sum_le_sum
      intro p hp
      exact finite_geometric_proper_le p N (Finset.mem_filter.mp hp).2
    _ ≤ ∑ p ∈ Ioc U N, Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
      intro p hp hnot
      have hpU := (Finset.mem_Ioc.mp hp).1
      have hp1 : (1 : ℝ) < p := by exact_mod_cast (lt_of_le_of_lt hU hpU)
      exact div_nonneg (Real.log_nonneg hp1.le) (by positivity)
    _ ≤ powerTailBudget U := finite_integer_tail_budget U N hU

end RH16ProperPowerInventory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant0fe494f7da4f88a41a5d141aa2e1e62170b79fab5b6c9a85f63e6fc2df5962ef.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac32079a51818a8a083473af661561a61ced0e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
