# log_square_le_self_add_inv_sub_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9f993b-d0f9-551f-a43f-9396f007a412",
  "kind": "theorem",
  "lexical_name": "log_square_le_self_add_inv_sub_two",
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
  "slug": "log-square-le-self-add-inv-sub-two--e22dbef0fe6b39b98df127c9",
  "source": {
    "blob": "ab6dd13f336cc0360a24f113bb72f1c6773c36cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e22dbef0fe6b39b98df127c92b57c9d9bdb586d4f51c4e41efba5d3d8d8e7723",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9f993b-d0f9-551f-a43f-9396f007a412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_square_le_self_add_inv_sub_two {t : ℝ} (ht : 1 ≤ t) :
    (Real.log t) ^ 2 ≤ t + t⁻¹ - 2 := by
  have ht0 : 0 < t := by linarith
  have hx : 0 ≤ Real.log t / 2 := div_nonneg (Real.log_nonneg ht) (by norm_num)
  have hs : Real.log t / 2 ≤ Real.sinh (Real.log t / 2) :=
    Real.self_le_sinh_iff.mpr hx
  have hy : 0 ≤ Real.sinh (Real.log t / 2) := Real.sinh_nonneg_iff.mpr hx
  have hsq := (sq_le_sq₀ hx hy).2 hs
  have hd := Real.cosh_two_mul (Real.log t / 2)
  rw [show 2 * (Real.log t / 2) = Real.log t by ring, Real.cosh_sq] at hd
  have he : Real.cosh (Real.log t) = (t + t⁻¹) / 2 := by
    rw [Real.cosh_eq, Real.exp_log ht0, Real.exp_neg, Real.exp_log ht0]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantb40ae2c132e4cf9a7d0ddb5ae8d6a1d8e267e569109f4a103634d3a79e9c0123.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6dd13f336cc0360a24f113bb72f1c6773c36cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
