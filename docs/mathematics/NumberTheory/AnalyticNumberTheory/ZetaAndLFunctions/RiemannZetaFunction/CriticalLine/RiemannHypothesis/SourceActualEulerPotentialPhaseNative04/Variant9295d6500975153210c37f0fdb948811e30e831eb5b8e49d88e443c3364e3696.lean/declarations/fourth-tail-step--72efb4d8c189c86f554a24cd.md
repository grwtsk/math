# fourth_tail_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1955ea27-d1f1-a4f3-b0d9-fee4c0d8aa9e",
  "kind": "theorem",
  "lexical_name": "fourth_tail_step",
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
  "slug": "fourth-tail-step--72efb4d8c189c86f554a24cd",
  "source": {
    "blob": "6325e3e97c76b9bf02d96145689df6e8fb0061c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72efb4d8c189c86f554a24cda1d03d680fcc3c5ecd39d8f7853e2ec6a29461be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1955ea27-d1f1-a4f3-b0d9-fee4c0d8aa9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fourth_tail_step (x : ℝ) (hx : 3 ≤ x) :
    1/x^4 ≤ 1/(3*(x-1)^3)-1/(3*x^3) := by
  have hp : 0 < x := by linarith
  have hm : 0 < x-1 := by linarith
  have he : 1/(3*(x-1)^3)-1/(3*x^3) =
      (x^3-(x-1)^3)/(3*(x-1)^3*x^3) := by
    field_simp
  rw [he]
  apply (div_le_div_iff₀ (pow_pos hp 4)
    (mul_pos (mul_pos (by norm_num) (pow_pos hm 3)) (pow_pos hp 3))).mpr
  have heq : (x^3-(x-1)^3)*x^4-3*(x-1)^3*x^3 =
      x^3*(6*x^2-8*x+3) := by ring
  have hpol : 0 ≤ 6*x^2-8*x+3 := by nlinarith [sq_nonneg (x-1)]
  have hprod := mul_nonneg (pow_nonneg hp.le 3) hpol
  nlinarith [heq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhaseNative04/Variant9295d6500975153210c37f0fdb948811e30e831eb5b8e49d88e443c3364e3696.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6325e3e97c76b9bf02d96145689df6e8fb0061c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
