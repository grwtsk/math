# goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04331cd8-80f8-80b0-d06a-44126ca21dba",
  "kind": "theorem",
  "lexical_name": "goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum",
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
  "slug": "goldbachfinitecoefficienteulerproduct-eq-primorialdivisorsum--38b237b486d6be2fd62a331b",
  "source": {
    "blob": "fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 107,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b237b486d6be2fd62a331b9a44b449f045893c4ad0b2b1eaf0b645495d0903",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04331cd8-80f8-80b0-d06a-44126ca21dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachFiniteCoefficientEulerProduct_eq_primorialDivisorSum
    (Q N : ℕ) :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N =
      goldbachPrimorialCoefficientDivisorSum Q N := by
  let f := goldbachDenominatorCoefficientArithmeticFunction N
  have hmult : f.IsMultiplicative :=
    isMultiplicative_goldbachDenominatorCoefficientArithmeticFunction N
  have h :=
    hmult.prodPrimeFactors_one_add_of_squarefree
      (squarefree_primorial Q)
  unfold goldbachFiniteCoefficientEulerProduct
    goldbachPrimeCoefficientEulerFactor
    goldbachPrimorialCoefficientDivisorSum
  rw [primeFactors_primorial,
    ← goldbachPrimeCutoff_eq_primesLE] at h
  have hleft :
      (∏ p ∈ goldbachPrimeCutoff Q, (1 + f p)) =
        ∏ p ∈ goldbachPrimeCutoff Q,
          (1 + goldbachProgressionDenominatorCoefficient p N) := by
    apply Finset.prod_congr rfl
    intro p hp
    have hp0 : 0 < p := (mem_goldbachPrimeCutoff.mp hp).1.pos
    rw [show f p = goldbachProgressionDenominatorCoefficient p N from
      goldbachDenominatorCoefficientArithmeticFunction_apply_pos hp0]
  have hright :
      (∑ d ∈ (primorial Q).divisors, f d) =
        ∑ d ∈ (primorial Q).divisors,
          goldbachProgressionDenominatorCoefficient d N := by
    apply Finset.sum_congr rfl
    intro d hd
    exact goldbachDenominatorCoefficientArithmeticFunction_apply_pos
      (Nat.pos_of_mem_divisors hd)
  exact hleft.symm.trans (h.trans hright)

/-- The full primorial divisor sum splits exactly at the rational denominator
cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
