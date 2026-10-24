# heatRemainderPolynomial_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:effeb721-a40c-b6d5-0bef-240e6d1d2c83",
  "kind": "theorem",
  "lexical_name": "heatRemainderPolynomial_error",
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
  "slug": "heatremainderpolynomial-error--f2068205a90453d9df8edce1",
  "source": {
    "blob": "c2900e246d8cace336edf4924e96672d0a59d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2068205a90453d9df8edce1ff3c7690c092688ee8732f550af37adb59212779",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:effeb721-a40c-b6d5-0bef-240e6d1d2c83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heatRemainderPolynomial_error (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ) (x : ℝ) :
    |x * (1 - Real.exp (-τ * x ^ 2)) - heatRemainderPolynomial N τ x| ≤
      τ ^ (N + 2) / (N + 2).factorial * |x| ^ (2 * N + 5) := by
  have he := exp_neg_taylor_bound (N + 1) (mul_nonneg hτ (sq_nonneg x))
  have hi : 2 * N + 5 = 2 * (N + 2) + 1 := by omega
  calc
    _ = |x| * |Real.exp (-(τ * x ^ 2)) - negExpPolynomial (N + 1) (τ * x ^ 2)| := by
      unfold heatRemainderPolynomial
      rw [show x * (1 - Real.exp (-τ * x ^ 2)) -
        x * (1 - negExpPolynomial (N + 1) (τ * x ^ 2)) =
        -x * (Real.exp (-(τ * x ^ 2)) - negExpPolynomial (N + 1) (τ * x ^ 2)) by
          simp only [neg_mul]
          ring]
      rw [abs_mul, abs_neg]
    _ ≤ |x| * ((τ * x ^ 2) ^ (N + 2) / (N + 2).factorial) :=
      mul_le_mul_of_nonneg_left he (abs_nonneg x)
    _ = _ := by
      rw [← sq_abs x, mul_pow, ← pow_mul, hi, pow_succ (|x|) (2 * (N + 2))]
      ring

/-- Generic integration adapter: all three integrability obligations are explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2900e246d8cace336edf4924e96672d0a59d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
