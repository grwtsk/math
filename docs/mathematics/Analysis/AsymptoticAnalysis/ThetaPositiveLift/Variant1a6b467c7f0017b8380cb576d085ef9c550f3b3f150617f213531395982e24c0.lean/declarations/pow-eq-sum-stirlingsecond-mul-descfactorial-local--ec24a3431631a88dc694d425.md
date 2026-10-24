# pow_eq_sum_stirlingSecond_mul_descFactorial_local

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65625a4b-ee51-32b2-d763-b99e1588af6e",
  "kind": "theorem",
  "lexical_name": "pow_eq_sum_stirlingSecond_mul_descFactorial_local",
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
  "slug": "pow-eq-sum-stirlingsecond-mul-descfactorial-local--ec24a3431631a88dc694d425",
  "source": {
    "blob": "80627356bd904b18e8f330661adc869c7a59d500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec24a3431631a88dc694d4256de52a04e60eb78302565e7ae214e8a8e76e4db3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65625a4b-ee51-32b2-d763-b99e1588af6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pow_eq_sum_stirlingSecond_mul_descFactorial_local
    (n k : ℕ) :
    n ^ k =
      ∑ j ∈ Finset.range (k + 1),
        Nat.stirlingSecond k j * n.descFactorial j := by
  induction k with
  | zero =>
      simp
  | succ k ih =>
      have hshift :
          ∑ j ∈ Finset.range (k + 1),
              Nat.stirlingSecond k j *
                (j * n.descFactorial j) =
            ∑ j ∈ Finset.range (k + 1),
              (j + 1) *
                (Nat.stirlingSecond k (j + 1) *
                  n.descFactorial (j + 1)) := by
        rw [Finset.sum_range_succ'
              (fun j =>
                Nat.stirlingSecond k j *
                  (j * n.descFactorial j)) k,
          Finset.sum_range_succ
              (fun j =>
                (j + 1) *
                  (Nat.stirlingSecond k (j + 1) *
                    n.descFactorial (j + 1))) k,
          Nat.stirlingSecond_eq_zero_of_lt k.lt_add_one]
        simp [mul_left_comm]
      rw [pow_succ, ih, Finset.sum_mul,
        Finset.sum_range_succ'
          (fun j =>
            Nat.stirlingSecond (k + 1) j *
              n.descFactorial j) (k + 1)]
      simp only [mul_assoc, descFactorial_mul_self_local,
        mul_add, Finset.sum_add_distrib, hshift,
        Nat.stirlingSecond_succ_succ, add_mul,
        Nat.stirlingSecond_succ_zero, zero_mul, add_zero]
      exact add_comm _ _

/-- Signed Touchard value T_n(-y) written with Stirling numbers of the second
kind. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80627356bd904b18e8f330661adc869c7a59d500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
