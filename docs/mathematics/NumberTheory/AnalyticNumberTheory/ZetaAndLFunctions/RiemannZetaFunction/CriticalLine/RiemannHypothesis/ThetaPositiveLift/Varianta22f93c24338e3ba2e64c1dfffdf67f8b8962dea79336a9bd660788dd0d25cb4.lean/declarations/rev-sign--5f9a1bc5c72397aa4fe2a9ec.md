# rev_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad0999c3-9856-2761-e059-ede2fae6ff04",
  "kind": "theorem",
  "lexical_name": "rev_sign",
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
  "slug": "rev-sign--5f9a1bc5c72397aa4fe2a9ec",
  "source": {
    "blob": "7acb19a2c79c05fc693d63775e83e1ed1cdea5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f9a1bc5c72397aa4fe2a9ecafe2f865d32c15cdb686ad6f02d537922728f194",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad0999c3-9856-2761-e059-ede2fae6ff04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rev_sign (k : ℕ) :
    Equiv.Perm.sign (Fin.revPerm : Equiv.Perm (Fin k)) =
      (-1 : ℤˣ) ^ (k * (k - 1) / 2) := by
  rw [Equiv.Perm.sign_eq_prod_prod_Iio]
  have hp : (∏ j : Fin k, ∏ i ∈ Finset.Iio j,
      (if Fin.revPerm i < Fin.revPerm j then (1 : ℤˣ) else -1)) =
      ∏ j : Fin k, (-1 : ℤˣ) ^ j.val := by
    apply Finset.prod_congr rfl
    intro j _
    calc
      _ = ∏ _i ∈ Finset.Iio j, (-1 : ℤˣ) := by
        apply Finset.prod_congr rfl
        intro i hi
        have hij : i < j := Finset.mem_Iio.mp hi
        have hnot : ¬ Fin.revPerm i < Fin.revPerm j := by
          change ¬ i.rev < j.rev
          exact (Fin.rev_lt_rev.mpr hij).not_gt
        rw [if_neg hnot]
      _ = _ := by simp
  rw [hp, Finset.prod_pow_eq_pow_sum]
  congr 1
  rw [Fin.sum_univ_eq_sum_range (fun i : ℕ => i)]
  exact Finset.sum_range_id k

/-- Reversing rows multiplies the determinant by the exact permutation sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta22f93c24338e3ba2e64c1dfffdf67f8b8962dea79336a9bd660788dd0d25cb4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acb19a2c79c05fc693d63775e83e1ed1cdea5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
