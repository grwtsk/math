# scaledEmpiricalDefect_sum_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1eaea15-5c35-0a13-d0ff-e6094b319464",
  "kind": "theorem",
  "lexical_name": "scaledEmpiricalDefect_sum_zero",
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
  "slug": "scaledempiricaldefect-sum-zero--1ae24484cc1d01e3fc495b5a",
  "source": {
    "blob": "24be06dc955cfb5f510992f3ec6db28c44807c60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 176,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ae24484cc1d01e3fc495b5a2333f587e1615c4462ca3abed82f3ffca0ad3b33",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1eaea15-5c35-0a13-d0ff-e6094b319464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledEmpiricalDefect_sum_zero
    (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → ι → Bool) :
    (∑ a : ι → Bool,
      (2 : ℚ) ^ Fintype.card ι *
        empiricalPattern roots (Finset.univ : Finset ι) x a - 1) = 0 := by
  classical
  have hchar (S : Finset ι) :
      (∑ a : ι → Bool, walshCharacter S a) =
        if S = ∅ then (2 : ℚ) ^ Fintype.card ι else 0 := by
    simpa only [walshCharacter_empty, mul_one] using
      (walshCharacter_orthogonality S (∅ : Finset ι))
  have hpoly (c : Finset ι → ℚ) :
      (∑ a : ι → Bool, walshPolynomial c a) =
        (2 : ℚ) ^ Fintype.card ι * c ∅ := by
    classical
    calc
      (∑ a : ι → Bool, walshPolynomial c a) =
          ∑ S : Finset ι,
            c S * (∑ a : ι → Bool, walshCharacter S a) := by
        unfold walshPolynomial
        rw [Finset.sum_comm]
        apply Finset.sum_congr rfl
        intro S hS
        rw [Finset.mul_sum]
      _ = (2 : ℚ) ^ Fintype.card ι * c ∅ := by
        simp [hchar, Finset.sum_ite_eq', mul_comm, mul_ite]
  have hcenter :
      (∑ a : ι → Bool, centeredWalshPolynomial roots hroots x a) = 0 := by
    unfold centeredWalshPolynomial
    rw [hpoly]
    simp
  simpa only [centeredWalshPolynomial_eq_empirical_defect] using hcenter

/-- Cast the exactly zero rational scaled defect to the same REAL law
used by the finite total-variation theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24be06dc955cfb5f510992f3ec6db28c44807c60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
