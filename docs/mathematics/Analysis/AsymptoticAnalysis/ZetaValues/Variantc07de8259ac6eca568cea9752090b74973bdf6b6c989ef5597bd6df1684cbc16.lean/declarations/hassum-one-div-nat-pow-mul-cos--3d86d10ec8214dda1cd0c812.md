# hasSum_one_div_nat_pow_mul_cos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1111d7db-bf10-be4f-8f0f-4cc3f4d36e3f",
  "kind": "theorem",
  "lexical_name": "hasSum_one_div_nat_pow_mul_cos",
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
  "slug": "hassum-one-div-nat-pow-mul-cos--3d86d10ec8214dda1cd0c812",
  "source": {
    "blob": "30f95b33707dcd13666be1867b4952fedf428dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 266,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d86d10ec8214dda1cd0c81202a66ba68352dbc5b74e95fdd7cdc50d093d7b40",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1111d7db-bf10-be4f-8f0f-4cc3f4d36e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_one_div_nat_pow_mul_cos {k : ℕ} (hk : k ≠ 0) {x : ℝ} (hx : x ∈ Icc (0 : ℝ) 1) :
    HasSum (fun n : ℕ => 1 / (n : ℝ) ^ (2 * k) * Real.cos (2 * π * n * x))
      ((-1 : ℝ) ^ (k + 1) * (2 * π) ^ (2 * k) / 2 / (2 * k)! *
        (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli (2 * k))).eval x) := by
  have :
    HasSum (fun n : ℕ => 1 / (n : ℂ) ^ (2 * k) * (fourier n (x : 𝕌) + fourier (-n) (x : 𝕌)))
      ((-1 : ℂ) ^ (k + 1) * (2 * (π : ℂ)) ^ (2 * k) / (2 * k)! * bernoulliFun (2 * k) x) := by
    convert
      hasSum_one_div_nat_pow_mul_fourier (by linarith [Nat.one_le_iff_ne_zero.mpr hk] : 2 ≤ 2 * k)
        hx using 3
    · rw [pow_mul (-1 : ℂ), neg_one_sq, one_pow, one_mul]
    · rw [pow_add, pow_one]
      conv_rhs =>
        rw [mul_pow]
        congr
        congr
        · skip
        · rw [pow_mul, I_sq]
      ring
  have ofReal_two : ((2 : ℝ) : ℂ) = 2 := by norm_cast
  convert ((hasSum_iff _ _).mp (this.div_const 2)).1 with n
  · convert (ofReal_re _).symm
    rw [ofReal_mul]; rw [← mul_div]; congr
    · rw [ofReal_div, ofReal_one, ofReal_pow]; rfl
    · rw [ofReal_cos, ofReal_mul, fourier_coe_apply, fourier_coe_apply, cos, ofReal_one, div_one,
        div_one, ofReal_mul, ofReal_mul, ofReal_two, Int.cast_neg, Int.cast_ofNat,
        ofReal_nat_cast]
      congr 3
      · ring
      · ring
  · convert (ofReal_re _).symm
    rw [ofReal_mul, ofReal_div, ofReal_div, ofReal_mul, ofReal_pow, ofReal_pow, ofReal_neg,
      ofReal_nat_cast, ofReal_mul, ofReal_two, ofReal_one]
    rw [bernoulliFun]
    ring
#align has_sum_one_div_nat_pow_mul_cos hasSum_one_div_nat_pow_mul_cos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f95b33707dcd13666be1867b4952fedf428dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
