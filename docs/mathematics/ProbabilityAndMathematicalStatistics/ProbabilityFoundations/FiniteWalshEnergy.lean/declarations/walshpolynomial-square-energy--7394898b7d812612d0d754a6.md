# walshPolynomial_square_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77943b70-739d-ab22-550c-cea2e7f934e3",
  "kind": "theorem",
  "lexical_name": "walshPolynomial_square_energy",
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
  "slug": "walshpolynomial-square-energy--7394898b7d812612d0d754a6",
  "source": {
    "blob": "be67e54070eb916bb7ac9871351fe8e8032a6811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 127,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7394898b7d812612d0d754a6108d01ffa6f123e41a90190f12397f6153814fc6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77943b70-739d-ab22-550c-cea2e7f934e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem walshPolynomial_square_energy (c : Finset ι → ℚ) :
    (∑ a : ι → Bool, (walshPolynomial c a) ^ 2) =
      (2 : ℚ) ^ Fintype.card ι * ∑ S : Finset ι, (c S) ^ 2 := by
  classical
  have hexpand (a : ι → Bool) :
      (walshPolynomial c a) ^ 2 =
        ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
    unfold walshPolynomial
    calc
      (∑ S : Finset ι, c S * walshCharacter S a) ^ 2 =
          (∑ S : Finset ι, c S * walshCharacter S a) *
          (∑ T : Finset ι, c T * walshCharacter T a) := by ring
      _ = ∑ S : Finset ι, ∑ T : Finset ι,
            (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
        rw [Finset.sum_mul]
        apply Finset.sum_congr rfl
        intro S hS
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro T hT
        ring
  calc
    (∑ a : ι → Bool, (walshPolynomial c a) ^ 2) =
        ∑ a : ι → Bool, ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) * (walshCharacter S a * walshCharacter T a) := by
      apply Finset.sum_congr rfl
      intro a ha
      exact hexpand a
    _ = ∑ S : Finset ι, ∑ T : Finset ι,
          (c S * c T) *
            (∑ a : ι → Bool, walshCharacter S a * walshCharacter T a) := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro S hS
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro T hT
      rw [Finset.mul_sum]
    _ = ∑ S : Finset ι, (2 : ℚ) ^ Fintype.card ι * (c S) ^ 2 := by
      apply Finset.sum_congr rfl
      intro S hS
      simp [walshCharacter_orthogonality, mul_ite, Finset.sum_ite_eq',
        pow_two, mul_comm, mul_left_comm, mul_assoc]
    _ = (2 : ℚ) ^ Fintype.card ι * ∑ S : Finset ι, (c S) ^ 2 := by
      rw [Finset.mul_sum]

/-- The actual ordinary Cesaro-normalized sign moment on the source's
finite root identities; the nonempty-root hypothesis is deliberately part
of the interface. The empty moment is therefore exactly 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be67e54070eb916bb7ac9871351fe8e8032a6811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
