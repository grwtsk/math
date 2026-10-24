# log_intervalLcm_eq_chebyshevPsi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4429c989-457d-0441-c325-0fce083ff0ae",
  "kind": "theorem",
  "lexical_name": "log_intervalLcm_eq_chebyshevPsi",
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
  "slug": "log-intervallcm-eq-chebyshevpsi--3610e6c8617b293d2e8c74de",
  "source": {
    "blob": "720201abbda1a13d36bb2cdd7d12fc84d40e37c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3610e6c8617b293d2e8c74dee690f945643cc19496b6122c35cff043d0dba26f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4429c989-457d-0441-c325-0fce083ff0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_intervalLcm_eq_chebyshevPsi
    (N : Nat) :
    Real.log (intervalLcm N) = chebyshevPsi N := by
  rw [chebyshevPsi_eq_sum_log_prime]
  rw [Real.log_nat_eq_sum_factorization]
  let F := Nat.factorization (intervalLcm N)
  have hsupport : F.support ⊆ primesUpTo N := by
    intro p hp_mem
    have hp_ne : F p ≠ 0 := Finsupp.mem_support_iff.mp hp_mem
    have hp_prime : Nat.Prime p := by
      by_contra hnp
      have hzero : F p = 0 := by
        simp [F, Nat.factorization_eq_zero_of_not_prime (intervalLcm N) hnp]
      exact hp_ne hzero
    have hlog : Nat.log p N ≠ 0 := by
      rwa [← factorization_intervalLcm_prime_log N hp_prime]
    have hp_le : p ≤ N := by
      by_contra hle
      have hlt : N < p := not_le.mp hle
      have hzero := Nat.log_of_lt hlt
      exact hlog hzero
    exact mem_primesUpTo_iff.mpr ⟨hp_prime, hp_le⟩
  have hsum :
      F.sum (fun p t => (t : Real) * Real.log (p : Real)) =
        ∑ p ∈ primesUpTo N, (F p : Real) * Real.log (p : Real) := by
    exact
      Finsupp.sum_of_support_subset
        (f := F)
        (s := primesUpTo N)
        hsupport
        (fun p t => (t : Real) * Real.log (p : Real))
        (by intro p hp; simp)
  rw [hsum]
  refine Finset.sum_congr rfl ?_
  intro p hp
  rw [factorization_intervalLcm_prime_log N (primesUpTo_prime hp)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variantd02a87855f6cdcbe2c796781367254992160917c0b511ea2fa26e265ee98ab9d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `720201abbda1a13d36bb2cdd7d12fc84d40e37c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
