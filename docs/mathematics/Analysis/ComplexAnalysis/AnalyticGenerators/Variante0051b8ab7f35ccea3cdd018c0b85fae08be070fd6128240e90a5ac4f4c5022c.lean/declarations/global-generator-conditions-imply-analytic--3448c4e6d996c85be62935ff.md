# global_generator_conditions_imply_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:427112de-0667-714c-f0d7-7e63dcfd5a36",
  "kind": "theorem",
  "lexical_name": "global_generator_conditions_imply_analytic",
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
  "slug": "global-generator-conditions-imply-analytic--3448c4e6d996c85be62935ff",
  "source": {
    "blob": "fbf3f5a51501f25efcfaf4ca148095c28e1d9940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3448c4e6d996c85be62935ff461a2e1f0d663c5c7b841e0cef85de72ee17f1fe",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427112de-0667-714c-f0d7-7e63dcfd5a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_generator_conditions_imply_analytic
    {X : Type u} {Y : Type v} {Rep : Type w} {I : Type z}
    (T : UniversalGlobalAnalyticTheoremSchema X Y Rep I)
    (G : GlobalAnalyticGeneratorSchema X Y Rep I T.predicates)
    {F : X → Y} {S : Set X} :
    G.hypotheses F S → T.analyticOn F S :=
  fun h => positive_global_certificate_implies_analytic T
    (G.recognizesCertificate F S h)

/-- The generator class of a global schema is one of the exhaustive classes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf3f5a51501f25efcfaf4ca148095c28e1d9940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
