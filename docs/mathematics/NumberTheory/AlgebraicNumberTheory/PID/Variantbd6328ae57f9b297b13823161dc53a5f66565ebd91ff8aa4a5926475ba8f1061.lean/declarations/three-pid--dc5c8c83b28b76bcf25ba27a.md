# three_pid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6d084d1-8555-9136-93b6-1ccc786de5e1",
  "kind": "theorem",
  "lexical_name": "three_pid",
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
  "slug": "three-pid--dc5c8c83b28b76bcf25ba27a",
  "source": {
    "blob": "ef8e0ef50be77e22cf4b84baa097b43e04e7d214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5c8c83b28b76bcf25ba27a6d3b0fd68601f1ea060702ebc2beab03d3259ec8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6d084d1-8555-9136-93b6-1ccc786de5e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_pid [IsCyclotomicExtension {3} ℚ K] : IsPrincipalIdealRing (𝓞 K) := by
  apply RingOfIntegers.isPrincipalIdealRing_of_abs_discr_lt
  rw [absdiscr_prime 3 K, IsCyclotomicExtension.finrank (n := 3) K
    (irreducible_rat (by norm_num)), nrComplexPlaces_eq_totient_div_two 3, totient_prime
      PNat.prime_three]
  simp only [Int.reduceNeg, PNat.val_ofNat, succ_sub_succ_eq_sub, tsub_zero, zero_lt_two,
    Nat.div_self, pow_one, cast_ofNat, neg_mul, one_mul, abs_neg, Int.cast_abs, Int.cast_ofNat,
    factorial_two, gt_iff_lt, abs_of_pos (show (0 : ℝ) < 3 by norm_num)]
  suffices (2 * (3 / 4) * (2 ^ 2 / 2)) ^ 2 < (2 * (π / 4) * (2 ^ 2 / 2)) ^ 2 from
    lt_trans (by norm_num) this
  gcongr
  exact pi_gt_three

/-- If `IsCyclotomicExtension {5} ℚ K` then `𝓞 K` is a principal ideal domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/PID/Variantbd6328ae57f9b297b13823161dc53a5f66565ebd91ff8aa4a5926475ba8f1061.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8e0ef50be77e22cf4b84baa097b43e04e7d214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
