# cell_integrand_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:463d5817-35ba-f0ef-a8e4-b2840cc5d915",
  "kind": "theorem",
  "lexical_name": "cell_integrand_abs_le",
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
  "slug": "cell-integrand-abs-le--cec3ca1629fec8be826009ae",
  "source": {
    "blob": "53b14b1dbad950d54decd71b6c46e2313d7acb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cec3ca1629fec8be826009ae359ded6a19e9b5f2459b28275d7ce0c7a332864b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:463d5817-35ba-f0ef-a8e4-b2840cc5d915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cell_integrand_abs_le {A : ℝ} (hA : 200 ≤ A) {n : ℕ} (hn : 1 ≤ n)
    {x : ℝ} (hx : x ∈ Icc (n : ℝ) ((n : ℝ) + 1)) :
    |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x| ≤
      (10 / A ^ 2) * cellMajorant x := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := hn1.trans hx.1
  have hx0 : 0 < x := by linarith
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx1
  have h := sourceCorrelation_log_increment_bound hA hn1 hx.1
  have h' := mul_le_mul_of_nonneg_left (log_cell_increment_le hn hx)
    (by positivity : 0 ≤ (5 / A ^ 2) * Real.log x)
  rw [abs_div, abs_of_pos hs]
  calc
    _ ≤ ((5 / A ^ 2) * Real.log x * (2 / x)) / Real.sqrt x :=
      div_le_div_of_nonneg_right (h.trans h') hs.le
    _ = (10 / A ^ 2) * cellMajorant x := by
      simp only [cellMajorant, div_eq_mul_inv, mul_inv_rev]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/0212c686efa8cc8da0c022aded3b5301c13941fea083877ed077b5805d7b6ea4SourceCorrelatio/Variant9714c84bb2259dfa16a28a026ac8eff3e7dc8d927f39f3d9de94dadcd3844740.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b14b1dbad950d54decd71b6c46e2313d7acb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
