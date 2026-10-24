# bernoulliFun_eval_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:943856b3-a39f-b6c8-947d-99e2049ad447",
  "kind": "theorem",
  "lexical_name": "bernoulliFun_eval_half",
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
  "slug": "bernoullifun-eval-half--2b7d66a4f6ed86264b05bee8",
  "source": {
    "blob": "87d1246d617e62cf3e1b45180465d6d0d45f07b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b7d66a4f6ed86264b05bee8718101e2315a7f62ab8c157314f07532ac2b9255",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:943856b3-a39f-b6c8-947d-99e2049ad447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulliFun_eval_half (k : ℕ) : bernoulliFun k 2⁻¹ = (2 / 2 ^ k - 1) * bernoulli k := by
  by_cases k1 : k = 1
  · simp [k1]
  · have m := bernoulliFun_mul k two_ne_zero 2⁻¹
    simp_rw [Nat.cast_ofNat, mul_inv_cancel₀ (two_ne_zero' ℝ), Finset.sum_range_succ,
      Finset.sum_range_zero, Nat.cast_zero, Nat.cast_one, ← one_div, add_halves,
      bernoulliFun_eval_one, ite_eq_right k1, bernoulliFun_eval_zero, zero_div, add_zero,
      zero_add] at m
    rw [← inv_mul_eq_iff_eq_mul₀ (by positivity), ← sub_eq_iff_eq_add, ← sub_one_mul, inv_div] at m
    rw [m, one_div]

end BernoulliFunProps

section BernoulliFourierCoeffs

/-! Compute the Fourier coefficients of the Bernoulli functions via integration by parts. -/


/-- The `n`-th Fourier coefficient of the `k`-th Bernoulli function on the interval `[0, 1]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d1246d617e62cf3e1b45180465d6d0d45f07b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
