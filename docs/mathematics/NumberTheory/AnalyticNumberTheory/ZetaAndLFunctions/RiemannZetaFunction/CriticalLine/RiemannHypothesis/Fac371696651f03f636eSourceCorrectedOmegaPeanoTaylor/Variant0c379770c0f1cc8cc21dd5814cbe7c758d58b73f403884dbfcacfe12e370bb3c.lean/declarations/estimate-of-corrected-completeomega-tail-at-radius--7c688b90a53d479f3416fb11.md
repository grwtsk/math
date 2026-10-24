# estimate_of_corrected_completeOmega_tail_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c12bf05b-3181-8c10-c858-cd24ef22c05b",
  "kind": "theorem",
  "lexical_name": "estimate_of_corrected_completeOmega_tail_at_radius",
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
  "slug": "estimate-of-corrected-completeomega-tail-at-radius--7c688b90a53d479f3416fb11",
  "source": {
    "blob": "66e9331d1f1eef00ffb5dc65276f8156dbc042f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant0c379770c0f1cc8cc21dd5814cbe7c758d58b73f403884dbfcacfe12e370bb3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c688b90a53d479f3416fb11b121777a14948d695a47142a487988a18ce08a33",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant0c379770c0f1cc8cc21dd5814cbe7c758d58b73f403884dbfcacfe12e370bb3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12bf05b-3181-8c10-c858-cd24ef22c05b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_corrected_completeOmega_tail_at_radius {K R : ℝ} (hR : 117 ≤ R)
    (hrow : ∀ A : ℝ, R ≤ A → ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4)
    (hOmega : ∀ A : ℝ, R ≤ A → correctedCompleteOmega A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + (riemannZeta (1 / 2)).re + 3 / 50), le_max_left _ _,
    R, (by linarith), ?_⟩
  intro A hRA
  have hc := (abs_lt.mp (residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound
    A (hR.trans hRA) (hrow A hRA))).2
  have ho := hOmega A hRA
  have hm := le_max_right 0 (K + (riemannZeta (1 / 2)).re + 3 / 50)
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCorrectedOmegaPeanoTaylor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant0c379770c0f1cc8cc21dd5814cbe7c758d58b73f403884dbfcacfe12e370bb3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fac371696651f03f636eSourceCorrectedOmegaPeanoTaylor/Variant0c379770c0f1cc8cc21dd5814cbe7c758d58b73f403884dbfcacfe12e370bb3c.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e9331d1f1eef00ffb5dc65276f8156dbc042f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
