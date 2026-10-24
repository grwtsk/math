# monomial_mem_adjoin_monomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d2e4f8-13a6-591a-fb27-44db89432926",
  "kind": "theorem",
  "lexical_name": "monomial_mem_adjoin_monomial",
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
  "slug": "monomial-mem-adjoin-monomial--b75c3fa565e851df46cdb887",
  "source": {
    "blob": "9ea5b70e34fa9c3999aad96f6d13de7c8af18648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b75c3fa565e851df46cdb887974c1e1e393aee3467c35342bb0f05a0450d68c4",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d2e4f8-13a6-591a-fb27-44db89432926`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_mem_adjoin_monomial {I : Ideal R} {n : ℕ} {r : R} (hr : r ∈ I ^ n) :
    monomial n r ∈ Algebra.adjoin R (Submodule.map (monomial 1 : R →ₗ[R] R[X]) I : Set R[X]) := by
  induction n generalizing r with
  | zero => exact Subalgebra.algebraMap_mem _ _
  | succ n hn =>
    rw [pow_succ'] at hr
    refine Submodule.smul_induction_on hr ?_ ?_
    · intro r hr s hs
      rw [add_comm n 1, smul_eq_mul, ← monomial_mul_monomial]
      exact Subalgebra.mul_mem _ (Algebra.subset_adjoin (Set.mem_image_of_mem _ hr)) (hn hs)
    · intro x y hx hy
      rw [map_add]
      exact Subalgebra.add_mem _ hx hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant39e5be026fa4d55eeea2018b9b7c06edd61d12d82e29c87598dd84e00fd85074.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea5b70e34fa9c3999aad96f6d13de7c8af18648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
