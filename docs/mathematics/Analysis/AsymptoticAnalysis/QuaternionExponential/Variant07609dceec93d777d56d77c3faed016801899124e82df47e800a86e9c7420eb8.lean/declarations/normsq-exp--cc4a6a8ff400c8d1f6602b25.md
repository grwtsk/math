# normSq_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b384a274-da7a-6d0a-60d9-5f06762f8016",
  "kind": "theorem",
  "lexical_name": "normSq_exp",
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
  "slug": "normsq-exp--cc4a6a8ff400c8d1f6602b25",
  "source": {
    "blob": "15287878301247a7d9c50e40de784564e2c8c5ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 121,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4a6a8ff400c8d1f6602b25de8348b1a32285c9ddca16b21d6d490b8660f0fb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b384a274-da7a-6d0a-60d9-5f06762f8016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_exp (q : ℍ[ℝ]) : normSq (exp ℝ q) = exp ℝ q.re ^ 2 :=
  calc
    normSq (exp ℝ q) =
        normSq (exp ℝ q.re • (↑(Real.cos ‖q.im‖) + (Real.sin ‖q.im‖ / ‖q.im‖) • q.im)) := by
      rw [exp_eq]
    _ = exp ℝ q.re ^ 2 * normSq (↑(Real.cos ‖q.im‖) + (Real.sin ‖q.im‖ / ‖q.im‖) • q.im) := by
      rw [normSq_smul]
    _ = exp ℝ q.re ^ 2 * (Real.cos ‖q.im‖ ^ 2 + Real.sin ‖q.im‖ ^ 2) := by
      congr 1
      obtain hv | hv := eq_or_ne ‖q.im‖ 0
      · simp [hv]
      rw [normSq_add, normSq_smul, star_smul, coe_mul_eq_smul, smul_re, smul_re, star_re, im_re,
        smul_zero, smul_zero, mul_zero, add_zero, div_pow, normSq_coe,
        normSq_eq_norm_mul_self, ← sq, div_mul_cancel₀ _ (pow_ne_zero _ hv)]
    _ = exp ℝ q.re ^ 2 := by rw [Real.cos_sq_add_sin_sq, mul_one]

/-- Note that this implies that exponentials of pure imaginary quaternions are unit quaternions
since in that case the RHS is `1` via `NormedSpace.exp_zero` and `norm_one`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/QuaternionExponential/Variant07609dceec93d777d56d77c3faed016801899124e82df47e800a86e9c7420eb8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15287878301247a7d9c50e40de784564e2c8c5ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
