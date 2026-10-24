# coeff_isUnit_isNilpotent_of_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c750c2c-35ef-29ae-3ca4-f502783de448",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53e9b20c-ad63-1424-63c7-5047d201889b",
  "kind": "theorem",
  "lexical_name": "coeff_isUnit_isNilpotent_of_isUnit",
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
  "slug": "coeff-isunit-isnilpotent-of-isunit--98f4568f18b338e5336473c6",
  "source": {
    "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98f4568f18b338e5336473c6c8b186a75de8c462fb6e9a24c6fd4f9ff9689d27",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e9b20c-ad63-1424-63c7-5047d201889b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_isUnit_isNilpotent_of_isUnit (hunit : IsUnit P) :
    IsUnit (P.coeff 0) ∧ (∀ i, i ≠ 0 → IsNilpotent (P.coeff i)) := by
  obtain ⟨Q, hQ⟩ := IsUnit.exists_right_inv hunit
  constructor
  · refine isUnit_of_mul_eq_one _ (Q.coeff 0) ?_
    have h := (mul_coeff_zero P Q).symm
    rwa [hQ, coeff_one_zero] at h
  · intros n hn
    rw [nilpotent_iff_mem_prime]
    intros I hI
    let f := mapRingHom (Ideal.Quotient.mk I)
    have hPQ : degree (f P) = 0 ∧ degree (f Q) = 0 := by
      rw [← Nat.WithBot.add_eq_zero_iff, ← degree_mul, ← map_mul, hQ, map_one, degree_one]
    have hcoeff : (f P).coeff n = 0 := by
      refine coeff_eq_zero_of_degree_lt ?_
      rw [hPQ.1]
      exact WithBot.coe_pos.2 hn.bot_lt
    rw [coe_mapRingHom, coeff_map, ← RingHom.mem_ker, Ideal.mk_ker] at hcoeff
    exact hcoeff

/-- Let `P` be a polynomial over `R`. `P` is a unit if and only if all its coefficients are
nilpotent, except its constant term which is a unit.

See also `Polynomial.isUnit_iff'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
