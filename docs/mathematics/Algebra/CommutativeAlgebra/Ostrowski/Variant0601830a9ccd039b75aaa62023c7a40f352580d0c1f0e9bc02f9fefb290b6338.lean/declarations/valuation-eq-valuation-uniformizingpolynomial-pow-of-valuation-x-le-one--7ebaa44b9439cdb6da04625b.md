# valuation_eq_valuation_uniformizingPolynomial_pow_of_valuation_X_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d529f936-d8b7-95df-b1ae-23fe3bd6787a",
  "kind": "lemma",
  "lexical_name": "valuation_eq_valuation_uniformizingPolynomial_pow_of_valuation_X_le_one",
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
  "slug": "valuation-eq-valuation-uniformizingpolynomial-pow-of-valuation-x-le-one--7ebaa44b9439cdb6da04625b",
  "source": {
    "blob": "6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 154,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ebaa44b9439cdb6da04625bb2c5c8cd50f146c0345c9228002c9ba24f125073",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d529f936-d8b7-95df-b1ae-23fe3bd6787a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valuation_eq_valuation_uniformizingPolynomial_pow_of_valuation_X_le_one {p : K[X]}
    (hp : p ≠ 0) :
    v (algebraMap K[X] (RatFunc K) p) = v (πᵥ ^ ((Associates.mk (Pᵥ).asIdeal).count
      (Associates.mk (Ideal.span {p})).factors)) := by
  set π := πᵥ
  have hne := setOfPred_polynomial_valuation_lt_one_and_ne_zero_nonempty hle
  have hπirr : Irreducible π := irreducible_min_polynomial_valuation_lt_one_and_ne_zero hne
  obtain ⟨k, q, hnq, heq⟩ := WfDvdMonoid.max_power_factor hp hπirr
  have hπ : π ∈ _ := degree_lt_wf.min_mem _ hne
  simp only [ne_eq, mem_ofPred] at hπ
  nth_rw 1 [heq]
  simp only [map_mul, map_pow]
  suffices v (algebraMap K[X] (RatFunc K) q) = 1 by
    simp only [this, mul_one]
    congr
    exact (Ideal.count_associates_eq (irreducible_iff_prime.mp hπirr) hnq heq).symm
  rw [← mod_add_div q π, map_add]
  rw [← mod_eq_zero] at hnq
  suffices v (algebraMap K[X] (RatFunc K) (q % π)) = 1 ∧
      v (algebraMap K[X] (RatFunc K) (π * (q / π))) < 1 by
    obtain ⟨h₁, h₂⟩ := this
    rw [← h₁] at h₂ ⊢
    exact Valuation.map_add_eq_of_lt_left _ h₂
  constructor
  · rw [← coePolynomial_eq_algebraMap]
    have hnπ : q % π ∉ {p : K[X] | v ↑p < 1 ∧ p ≠ 0} :=
      imp_not_comm.mp (degree_lt_wf.not_lt_min _) (EuclideanDomain.remainder_lt q hπ.2)
    have := Polynomial.valuation_le_one_of_valuation_X_le_one _ hle (q % π)
    grind
  · simpa only [map_mul, ← coePolynomial_eq_algebraMap]
      using mul_lt_one_of_lt_of_le hπ.1 <| (q / π).valuation_le_one_of_valuation_X_le_one _ hle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Ostrowski/Variant0601830a9ccd039b75aaa62023c7a40f352580d0c1f0e9bc02f9fefb290b6338.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d103a3e7f61246c5f5b2dc9bc481c8d95ad43e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
