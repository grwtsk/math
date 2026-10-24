# setIntegral_condExp_le_of_ae_restrict_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b93ea446-0db5-d7f3-08d6-243083ecab67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5914d96-823c-b651-890a-e85685f83bf9",
  "kind": "lemma",
  "lexical_name": "setIntegral_condExp_le_of_ae_restrict_nonneg",
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
  "slug": "setintegral-condexp-le-of-ae-restrict-nonneg--74a592eeeeccf238ab0d4aad",
  "source": {
    "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74a592eeeeccf238ab0d4aad753fa46dc5c991f51e36111ddb1e50ba1a20af29",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5914d96-823c-b651-890a-e85685f83bf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_condExp_le_of_ae_restrict_nonneg {s : Set α} (hs : MeasurableSet[m] s) {f : α → ℝ}
    (hf : 0 ≤ᵐ[μ.restrict s] f) :
    ∫ x in s, μ[f | m] x ∂μ ≤ ∫ x in s, f x ∂μ := by
  by_cases! hm : ¬ m ≤ m0
  · simpa [condExp_of_not_le hm] using setIntegral_nonneg_of_ae_restrict hf
  by_cases! hfint : ¬ Integrable f μ
  · simpa [condExp_of_not_integrable hfint] using setIntegral_nonneg_of_ae_restrict hf
  by_cases! hsig : ¬ SigmaFinite (μ.trim hm)
  · simpa [condExp_of_not_sigmaFinite hm hsig] using setIntegral_nonneg_of_ae_restrict hf
  calc
  ∫ x in s, μ[f | m] x ∂μ = ∫ x in s, (μ.restrict s)[f | m] x ∂μ :=
    integral_congr_ae (condExp_restrict_ae_eq_restrict hm hs hfint).symm
  _ ≤ ∫ x in s, f x ∂μ := integral_condExp_le_of_ae_nonneg hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bae70a0814cdbf4b3d04248c71387e38d48603e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
