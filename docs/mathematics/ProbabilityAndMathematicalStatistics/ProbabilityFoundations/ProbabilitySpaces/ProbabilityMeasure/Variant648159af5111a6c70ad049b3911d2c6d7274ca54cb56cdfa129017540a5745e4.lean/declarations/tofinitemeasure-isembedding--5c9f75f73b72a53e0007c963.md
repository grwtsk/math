# toFiniteMeasure_isEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa783e06-11c4-14da-341c-dec54a8bafd5",
  "kind": "theorem",
  "lexical_name": "toFiniteMeasure_isEmbedding",
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
  "slug": "tofinitemeasure-isembedding--5c9f75f73b72a53e0007c963",
  "source": {
    "blob": "689ef4107b6389a920e7edaa9fd2b5f03fb0a7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 296,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant648159af5111a6c70ad049b3911d2c6d7274ca54cb56cdfa129017540a5745e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c9f75f73b72a53e0007c963c97b9e9b3dfe15e50131708ec26739e1c88465c8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant648159af5111a6c70ad049b3911d2c6d7274ca54cb56cdfa129017540a5745e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa783e06-11c4-14da-341c-dec54a8bafd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFiniteMeasure_isEmbedding (Ω : Type*) [MeasurableSpace Ω] [TopologicalSpace Ω]
    [OpensMeasurableSpace Ω] :
    IsEmbedding (toFiniteMeasure : ProbabilityMeasure Ω → FiniteMeasure Ω) where
  eq_induced := rfl
  injective _μ _ν h := Subtype.eq <| congr_arg FiniteMeasure.toMeasure h

@[deprecated (since := "2024-10-26")]
alias toFiniteMeasure_embedding := toFiniteMeasure_isEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant648159af5111a6c70ad049b3911d2c6d7274ca54cb56cdfa129017540a5745e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant648159af5111a6c70ad049b3911d2c6d7274ca54cb56cdfa129017540a5745e4.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `689ef4107b6389a920e7edaa9fd2b5f03fb0a7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
