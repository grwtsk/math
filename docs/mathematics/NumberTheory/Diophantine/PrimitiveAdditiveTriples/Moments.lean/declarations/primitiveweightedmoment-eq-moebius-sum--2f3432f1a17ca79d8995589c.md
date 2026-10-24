# primitiveWeightedMoment_eq_moebius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5568714-dd54-885b-131a-2463826a0dae",
  "kind": "theorem",
  "lexical_name": "primitiveWeightedMoment_eq_moebius_sum",
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
  "slug": "primitiveweightedmoment-eq-moebius-sum--2f3432f1a17ca79d8995589c",
  "source": {
    "blob": "4be8f0955d15541386c9ae3c20a6ea36c1a05741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3432f1a17ca79d8995589c515f9c11d07f2fa32dd4c7ce1ca9ccf116269393",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5568714-dd54-885b-131a-2463826a0dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveWeightedMoment_eq_moebius_sum {R : Type*} [Ring R] (N : ℕ)
    (W : ℕ → ℕ → ℕ → R) :
    primitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorWeightedMoment N d W := by
  unfold primitiveWeightedMoment commonDivisorWeightedMoment
  calc
    (∑ p ∈ additivePairs N,
        if Nat.Coprime p.1 p.2 then W p.1 p.2 (p.1 + p.2) else 0) =
        ∑ p ∈ additivePairs N,
          (∑ d ∈ Finset.Icc 1 N,
            if d ∣ p.1 ∧ d ∣ p.2 then (ArithmeticFunction.moebius d : R) else 0) *
            W p.1 p.2 (p.1 + p.2) := by
      apply Finset.sum_congr rfl
      intro p hp
      obtain ⟨ha, haN, hb, _, _⟩ := mem_additivePairs.mp hp
      rw [GRWTSK.NumberTheory.ArithmeticFunctions.CoprimeDivisorFilter.sum_moebius_common_divisors_Icc
        (show 0 < p.1 from ha) (show 0 < p.2 from hb)
        (le_trans (Nat.min_le_left _ _) haN)]
      by_cases h : Nat.Coprime p.1 p.2 <;> simp [h]
    _ = ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) *
          ∑ p ∈ additivePairs N,
            if d ∣ p.1 ∧ d ∣ p.2 then W p.1 p.2 (p.1 + p.2) else 0 := by
      simp_rw [Finset.sum_mul]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro d _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p _
      by_cases h : d ∣ p.1 ∧ d ∣ p.2 <;> simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Moments.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4be8f0955d15541386c9ae3c20a6ea36c1a05741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
