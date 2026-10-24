# integral_condExp_le_of_ae_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0933768-bd6e-279f-21ad-1e9f5ec5f6b5",
  "kind": "lemma",
  "lexical_name": "integral_condExp_le_of_ae_nonneg",
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
  "slug": "integral-condexp-le-of-ae-nonneg--c477edd732d659d517e4398a",
  "source": {
    "blob": "2faccd3760ea9e89ba12318c38af1e476d192eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 112,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c477edd732d659d517e4398a837ea399cca62c938bcc5a30ab8a9cfc4b832c26",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0933768-bd6e-279f-21ad-1e9f5ec5f6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_condExp_le_of_ae_nonneg {f : α → ℝ} (hf : 0 ≤ᵐ[μ] f) :
    ∫ x, μ[f | m] x ∂μ ≤ ∫ x, f x ∂μ := calc
  ∫ x, μ[f | m] x ∂μ = ∫ x, |μ[f | m] x| ∂μ := by
    apply integral_congr_ae
    filter_upwards [condExp_nonneg hf] with ω hω using (abs_of_nonneg hω).symm
  _ ≤ ∫ x, |f x| ∂μ := integral_abs_condExp_le f
  _ = ∫ x, f x ∂μ := by
    apply integral_congr_ae
    filter_upwards [hf] with ω hω using abs_of_nonneg hω

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Varianta4b7569027222428eeb16f9e573ed55ae49f6b0a60ba58e0b6d3db922c5c8921.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2faccd3760ea9e89ba12318c38af1e476d192eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
