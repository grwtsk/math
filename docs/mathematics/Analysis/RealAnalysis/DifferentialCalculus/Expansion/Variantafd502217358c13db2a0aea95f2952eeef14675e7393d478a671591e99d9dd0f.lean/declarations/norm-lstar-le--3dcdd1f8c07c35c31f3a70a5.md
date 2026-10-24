# norm_Lstar_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed9724f-9978-9183-6104-5201a5c58d90",
  "kind": "theorem",
  "lexical_name": "norm_Lstar_le",
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
  "slug": "norm-lstar-le--3dcdd1f8c07c35c31f3a70a5",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1075,
    "line": 1063,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dcdd1f8c07c35c31f3a70a503036918d9e3284f0566e1e1f9fcc27208ff3218",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed9724f-9978-9183-6104-5201a5c58d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1063–1075.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Lstar_le {τ : ℝ} (hτ : 2 ≤ τ) : ‖Lstar τ‖ ≤ Real.log τ / 2 + 2 := by
  have hτ0 : 0 < τ := by linarith
  unfold Lstar
  refine (norm_add_le _ _).trans ?_
  rw [Complex.norm_real, Complex.norm_mul, Complex.norm_I, one_mul, Complex.norm_real, Real.norm_eq_abs,
    Real.norm_eq_abs, abs_of_pos (by positivity : (0:ℝ) < Real.pi / 4), Real.log_div hτ0.ne' (by positivity)]
  have hlogτ : 0 ≤ Real.log τ := Real.log_nonneg (by linarith)
  have h2π : 0 ≤ Real.log (2 * Real.pi) := Real.log_nonneg (by linarith [Real.pi_gt_three])
  have : |(Real.log τ - Real.log (2 * Real.pi)) / 2| ≤ Real.log τ / 2 + 1 := by
    rw [abs_le]; constructor <;> linarith [log_two_pi_le_two]
  linarith [Real.pi_lt_d2]

/-- ‖L(5/4+it)‖ ≤ M log(2+|t|) for all t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L1063).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
