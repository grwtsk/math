# LocalAnalyticGeneratorSchema

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe25b43931c1005ce551ce3c7386a1b3571c047be29ffae771817334db226441",
  "kind": "structure",
  "lexical_name": "LocalAnalyticGeneratorSchema",
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
  "slug": "localanalyticgeneratorschema--7575e74e58a716ace17a06c9",
  "source": {
    "blob": "fbf3f5a51501f25efcfaf4ca148095c28e1d9940",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 149,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7575e74e58a716ace17a06c9c96aafbdb7bb68f288e720346cf42c7e2ab2c96a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe25b43931c1005ce551ce3c7386a1b3571c047be29ffae771817334db226441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalAnalyticGeneratorSchema
    (X : Type u) (Y : Type v) (Rep : Type w)
    (P : LocalAnalyticCertificatePredicates X Y Rep) where
  generator : AnalyticGeneratorClass
  hypotheses : (X → Y) → X → Prop
  recognizesCertificate :
    RecognizesLocalAnalyticCertificate P hypotheses

/--
Any local generator schema yields analyticity once paired with a local analytic
certificate theorem schema using the same certificate predicates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticGenerators/Variante0051b8ab7f35ccea3cdd018c0b85fae08be070fd6128240e90a5ac4f4c5022c.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf3f5a51501f25efcfaf4ca148095c28e1d9940` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
