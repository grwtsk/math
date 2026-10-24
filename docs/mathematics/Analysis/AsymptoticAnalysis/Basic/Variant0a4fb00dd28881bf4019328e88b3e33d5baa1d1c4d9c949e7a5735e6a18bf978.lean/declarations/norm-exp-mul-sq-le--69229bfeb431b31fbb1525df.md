# norm_exp_mul_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4499cd5-9e76-6b00-6e00-252fe12d1d6c",
  "kind": "theorem",
  "lexical_name": "norm_exp_mul_sq_le",
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
  "slug": "norm-exp-mul-sq-le--69229bfeb431b31fbb1525df",
  "source": {
    "blob": "6fde4002d242155609497fc30e009e920b66a329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69229bfeb431b31fbb1525df8f17c61bf41ab5640e016a6f1869f1ab1124a171",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4499cd5-9e76-6b00-6e00-252fe12d1d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_mul_sq_le {z : ℂ} (hz : 0 < z.im) (n : ℤ) :
    ‖cexp (π * I * (n : ℂ) ^ 2 * z)‖ ≤ rexp (-π * z.im) ^ n.natAbs := by
  let y := rexp (-π * z.im)
  have h : y < 1 := exp_lt_one_iff.mpr (mul_neg_of_neg_of_pos (neg_lt_zero.mpr pi_pos) hz)
  refine' (le_of_eq _).trans (_ : y ^ n ^ 2 ≤ _)
  · rw [Complex.norm_eq_abs, Complex.abs_exp]
    have : (↑π * I * (n : ℂ) ^ 2 * z).re = -π * z.im * (n : ℝ) ^ 2 := by
      rw [(by push_cast; ring : ↑π * I * (n : ℂ) ^ 2 * z = ↑(π * (n : ℝ) ^ 2) * (z * I)),
        ofReal_mul_re, mul_I_re]
      ring
    obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le (sq_nonneg n)
    rw [this, exp_mul, ← Int.cast_pow, rpow_int_cast, hm, zpow_ofNat]
  · have : n ^ 2 = ↑(n.natAbs ^ 2) := by rw [Nat.cast_pow, Int.natAbs_sq]
    rw [this, zpow_ofNat]
    exact pow_le_pow_of_le_one (exp_pos _).le h.le ((sq n.natAbs).symm ▸ n.natAbs.le_mul_self)
#align norm_exp_mul_sq_le norm_exp_mul_sq_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fde4002d242155609497fc30e009e920b66a329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
