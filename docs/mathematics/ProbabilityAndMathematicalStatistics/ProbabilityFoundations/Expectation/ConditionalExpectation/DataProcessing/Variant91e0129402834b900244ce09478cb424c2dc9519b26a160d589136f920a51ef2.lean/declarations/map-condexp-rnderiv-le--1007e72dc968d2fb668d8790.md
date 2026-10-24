# map_condExp_rnDeriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c36f4f2-2f28-067c-a44c-13537ffc83f8",
  "kind": "lemma",
  "lexical_name": "map_condExp_rnDeriv_le",
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
  "slug": "map-condexp-rnderiv-le--1007e72dc968d2fb668d8790",
  "source": {
    "blob": "93946a6fef0ae4d0214857d8d031e11e9aaae0a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1007e72dc968d2fb668d8790c66fc928bd651b520acd56e5e461c990029f0410",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c36f4f2-2f28-067c-a44c-13537ffc83f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_condExp_rnDeriv_le (hm : m ≤ m𝓧) (hf : StronglyMeasurable f)
    (hf_cvx : ConvexOn ℝ (Ici 0) f) (hf_cont_at : ContinuousWithinAt f (Ici 0) 0)
    (h_int : Integrable (fun x ↦ f (μ.rnDeriv ν x).toReal) ν) :
    (fun x ↦ f ((ν[fun x ↦ (μ.rnDeriv ν x).toReal | m]) x)) ≤ᵐ[ν.trim hm]
      ν[fun x ↦ f (μ.rnDeriv ν x).toReal | m] :=
  hf_cvx.map_condExp_le_trim hm (hf_cvx.continuousOn_Ici hf_cont_at).lowerSemicontinuousOn hf
    (ae_of_all _ fun _ ↦ ENNReal.toReal_nonneg) isClosed_Ici Measure.integrable_toReal_rnDeriv h_int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/DataProcessing/Variant91e0129402834b900244ce09478cb424c2dc9519b26a160d589136f920a51ef2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93946a6fef0ae4d0214857d8d031e11e9aaae0a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
