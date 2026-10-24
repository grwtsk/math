# goldbachCenteredExponentialSum_eq_residueClassKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66ddeac-b30c-a924-fe69-a06afa6c1bec",
  "kind": "theorem",
  "lexical_name": "goldbachCenteredExponentialSum_eq_residueClassKernel",
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
  "slug": "goldbachcenteredexponentialsum-eq-residueclasskernel--9249d4b195bdaf22cd34eabe",
  "source": {
    "blob": "b434cfac8e8defaaf20c5e36387c564910a74ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 135,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9249d4b195bdaf22cd34eabe3a771b4ce9e9334dcaf9bbbf869eccf5473bf5b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66ddeac-b30c-a924-fe69-a06afa6c1bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCenteredExponentialSum_eq_residueClassKernel
    (N a q : ℕ) (hq : 0 < q) (β : ℝ) :
    goldbachCenteredExponentialSum N a q β =
      goldbachResidueClassExponentialKernel N a q β := by
  unfold goldbachCenteredExponentialSum
    goldbachExponentialSum
    goldbachResidueClassExponentialKernel
    goldbachResidueClassPrimeSum
  simp_rw [unitCharacter_add_argument]
  calc
    (∑ n ∈ Finset.range (N + 1),
        (primeLogWeight n : ℂ) *
          (unitCharacter (n : ℤ) (goldbachRationalArcCenter a q) *
            unitCharacter (n : ℤ) β)) =
      ∑ n ∈ Finset.range (N + 1),
        goldbachRationalPhase a q (n % q) *
          ((primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β) := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [unitCharacter_at_rational_eq_phase_mod hq]
        ring
    _ = ∑ r ∈ Finset.range q,
        ∑ n ∈ Finset.range (N + 1) with n % q = r,
          goldbachRationalPhase a q (n % q) *
            ((primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β) := by
        exact (Finset.sum_fiberwise_of_maps_to
          (s := Finset.range (N + 1))
          (t := Finset.range q)
          (g := fun n : ℕ => n % q)
          (fun n hn => Finset.mem_range.mpr (Nat.mod_lt n hq))
          (fun n : ℕ =>
            goldbachRationalPhase a q (n % q) *
              ((primeLogWeight n : ℂ) *
                unitCharacter (n : ℤ) β))).symm
    _ = ∑ r ∈ Finset.range q,
        goldbachRationalPhase a q r *
          ∑ n ∈ Finset.range (N + 1) with n % q = r,
            (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β := by
        apply Finset.sum_congr rfl
        intro r hr
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro n hn
        have hmod : n % q = r := (Finset.mem_filter.mp hn).2
        rw [hmod]

/-- Exact residue-class reconstruction of the exponential sum at every real
frequency, not only points already presented in local coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b434cfac8e8defaaf20c5e36387c564910a74ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
