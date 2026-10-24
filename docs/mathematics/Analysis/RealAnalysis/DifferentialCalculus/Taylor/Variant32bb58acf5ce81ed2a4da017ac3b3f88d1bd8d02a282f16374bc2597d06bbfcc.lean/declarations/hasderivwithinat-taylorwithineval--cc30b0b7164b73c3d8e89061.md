# hasDerivWithinAt_taylorWithinEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9d41c74-4439-496c-09e0-2c6ce9a2676a",
  "kind": "theorem",
  "lexical_name": "hasDerivWithinAt_taylorWithinEval",
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
  "slug": "hasderivwithinat-taylorwithineval--cc30b0b7164b73c3d8e89061",
  "source": {
    "blob": "0f3fda733c56ec3b5b896cef4062ede4082eafa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc30b0b7164b73c3d8e890615e37dd4ba56831e22866d14ff4858e92b4fe86cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9d41c74-4439-496c-09e0-2c6ce9a2676a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivWithinAt_taylorWithinEval {f : ℝ → E} {x y : ℝ} {n : ℕ} {s s' : Set ℝ}
    (hs_unique : UniqueDiffOn ℝ s) (hs' : s' ∈ 𝓝[s] y)
    (hy : y ∈ s') (h : s' ⊆ s) (hf : ContDiffOn ℝ n f s)
    (hf' : DifferentiableWithinAt ℝ (iteratedDerivWithin n f s) s y) :
    HasDerivWithinAt (fun t => taylorWithinEval f n s t x)
      (((n ! : ℝ)⁻¹ * (x - y) ^ n) • iteratedDerivWithin (n + 1) f s y) s' y := by
  have hs'_unique : UniqueDiffWithinAt ℝ s' y :=
    UniqueDiffWithinAt.mono_nhds (hs_unique _ (h hy)) (nhdsWithin_le_iff.mpr hs')
  induction n with
  | zero =>
    simp only [taylor_within_zero_eval, Nat.factorial_zero, Nat.cast_one, inv_one, pow_zero,
      mul_one, zero_add, one_smul]
    simp only [iteratedDerivWithin_zero] at hf'
    rw [iteratedDerivWithin_one]
    exact hf'.hasDerivWithinAt.mono h
  | succ k hk =>
    simp_rw [Nat.add_succ, taylorWithinEval_succ]
    simp only [add_zero, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
    have coe_lt_succ : (k : WithTop ℕ) < k.succ := Nat.cast_lt.2 k.lt_succ_self
    have hdiff : DifferentiableOn ℝ (iteratedDerivWithin k f s) s' :=
      (hf.differentiableOn_iteratedDerivWithin (mod_cast coe_lt_succ) hs_unique).mono h
    specialize hk hf.of_succ ((hdiff y hy).mono_of_mem_nhdsWithin hs')
    convert hk.add (hasDerivWithinAt_taylor_coeff_within hs'_unique
      (nhdsWithin_mono _ h self_mem_nhdsWithin) hf') using 1
    exact (add_sub_cancel _ _).symm

/-- Calculate the derivative of the Taylor polynomial with respect to `x₀`.

Version for open intervals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant32bb58acf5ce81ed2a4da017ac3b3f88d1bd8d02a282f16374bc2597d06bbfcc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f3fda733c56ec3b5b896cef4062ede4082eafa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
