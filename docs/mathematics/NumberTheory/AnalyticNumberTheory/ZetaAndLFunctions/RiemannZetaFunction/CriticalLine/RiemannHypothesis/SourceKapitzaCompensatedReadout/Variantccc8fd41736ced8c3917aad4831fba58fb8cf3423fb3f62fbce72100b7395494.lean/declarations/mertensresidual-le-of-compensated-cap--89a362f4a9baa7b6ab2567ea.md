# mertensResidual_le_of_compensated_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb13471-0d22-d5b0-aad1-5a0318ceab8c",
  "kind": "theorem",
  "lexical_name": "mertensResidual_le_of_compensated_cap",
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
  "slug": "mertensresidual-le-of-compensated-cap--89a362f4a9baa7b6ab2567ea",
  "source": {
    "blob": "f036a3251ade74af7aaf065ba9ab87fc70580966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a362f4a9baa7b6ab2567ea7189528e127b683ef18716966efb2eb29d84c1f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb13471-0d22-d5b0-aad1-5a0318ceab8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_le_of_compensated_cap (R A B : ℝ)
    (hR : 1 ≤ R) (hRA : R ≤ A) (hS : compensatedSourceSum A ≤ B) :
    mertensResidual A ≤ B - 1 + continuousDefect R + 10 / R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hR0 : 0 < R := by linarith
  have hq := (abs_le.mp (quadratureError_abs_le A hA)).2
  have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
  have hi := one_add_continuous_eq_defect A hA
  have hr : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) hR0 hRA
  rw [mertensResidual_eq_compensated_add_moment_error A hA]
  linarith

end FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadout/Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f036a3251ade74af7aaf065ba9ab87fc70580966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
