# sum_moebius_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77988b9f-eda3-1edd-0465-f571891e8bf4",
  "kind": "theorem",
  "lexical_name": "sum_moebius_div_sq",
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
  "slug": "sum-moebius-div-sq--4afaafcf54933860093a1f8d",
  "source": {
    "blob": "7774530b068098c253438684ce708e5cd50f6a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 250,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afaafcf54933860093a1f8d08ad6710cffa6b2774e5596d0b12d872f366fc57",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77988b9f-eda3-1edd-0465-f571891e8bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_moebius_div_sq : ∑' n, (moebius n) / (n : ℝ) ^ 2 = 1 / (riemannZeta 2).re := by
  have h_sum : ∑' n, (moebius n) / (n : ℂ) ^ 2 = 1 / riemannZeta 2 := by
    have h_zeta2 : riemannZeta 2 * ∑' n, (moebius n : ℂ) / (n : ℂ) ^ 2 = 1 := by
      convert LSeries_zeta_mul_Lseries_moebius (show 1 < (2 : ℂ).re by norm_num) using 1
      norm_num [LSeries]; congr! 1
      · rw [zeta_eq_tsum_one_div_nat_cpow] <;> norm_num [LSeries.term]
        exact tsum_congr fun n ↦ by aesop
      · norm_num [LSeries.term]; exact tsum_congr fun n ↦ by aesop
    exact eq_one_div_of_mul_eq_one_right h_zeta2
  convert congr_arg re h_sum using 1
  · rw_mod_cast [re_tsum]
    · rfl
    · contrapose! h_sum
      rw [tsum_eq_zero_of_not_summable h_sum]; norm_num [riemannZeta_two]
      exact (div_ne_zero (by norm_num)
        (pow_ne_zero 2 (ofReal_ne_zero.mpr Real.pi_ne_zero))).symm
  · norm_num [normSq, div_re]
    rw [inv_eq_one_div, div_eq_div_iff] <;> norm_num [riemannZeta_two]
    · norm_cast
    · norm_cast; positivity
    · norm_cast; positivity

/-- The integral `∫ u in 0..x, M(√(x/u)) = x · ∑' n, μ(n)/n²`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7774530b068098c253438684ce708e5cd50f6a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
