# iIndepFun_iff_map_fun_eq_infinitePi_map₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fdc082b-0526-b184-5a0a-83f73314f8a2",
  "kind": "lemma",
  "lexical_name": "iIndepFun_iff_map_fun_eq_infinitePi_map₀'",
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
  "slug": "iindepfun-iff-map-fun-eq-infinitepi-map--562cc1ab4e5409cb52c4395e",
  "source": {
    "blob": "6b5eecbb1a02572e83ab1891c92c24df4f92f720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:562cc1ab4e5409cb52c4395e711922645196c15c98aa67b65e2e55a7ce561793",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fdc082b-0526-b184-5a0a-83f73314f8a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun_iff_map_fun_eq_infinitePi_map₀' [IsProbabilityMeasure P] [Countable ι]
    (mX : ∀ i, AEMeasurable (X i) P) :
    iIndepFun X P ↔ P.map (fun ω i ↦ X i ω) = infinitePi (fun i ↦ P.map (X i)) :=
  iIndepFun_iff_map_fun_eq_infinitePi_map₀ <| aemeasurable_pi_iff.2 mX

/-- If random variables are independent then their joint distribution is the product measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/InfinitePi/Variant2039e6cfcd497cecfa76deb9e2bd9f4987c599bce3aa72ee94bc82e40ee75360.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b5eecbb1a02572e83ab1891c92c24df4f92f720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
