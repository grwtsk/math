# AutomorphicAnalyticSourceDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc1adcdc5bc31b825ddff74bfbac40102d040a1215bd81118104de72e21ae100",
  "kind": "structure",
  "lexical_name": "AutomorphicAnalyticSourceDescriptor",
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
  "slug": "automorphicanalyticsourcedescriptor--06f99e5fe54af1aba71cf358",
  "source": {
    "blob": "71bbf346b0fa6dca7768cb204fefec97a1d230e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3220,
    "line": 3165,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06f99e5fe54af1aba71cf358520382ae6d3477077e666fcaf8006ce98a60c461",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc1adcdc5bc31b825ddff74bfbac40102d040a1215bd81118104de72e21ae100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3165–3220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AutomorphicAnalyticSourceDescriptor
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L A) where
  automorphicProvenanceCertified :
    A.certifiedForBSD
  objectKindCompatibilityCertified :
    Knd.certifiedForBSD
  sourceKind :
    AutomorphicAnalyticSourceKind
  SourceStatement :
    Type u
  sourceStatement :
    SourceStatement
  SourceHypotheses :
    Type u
  sourceHypotheses :
    SourceHypotheses
  sourceStatementMatchesSourceKind : Prop
  sourceStatementMatchesSourceKindCertified :
    sourceStatementMatchesSourceKind
  sourceHypothesesTypeMatchesStatement : Prop
  sourceHypothesesTypeMatchesStatementCertified :
    sourceHypothesesTypeMatchesStatement
  sourceHypothesesMatchScope : Prop
  sourceHypothesesMatchScopeCertified :
    sourceHypothesesMatchScope
  sourceHypothesesMatchObjectKind : Prop
  sourceHypothesesMatchObjectKindCertified :
    sourceHypothesesMatchObjectKind
  curveSatisfiesSourceHypotheses : Prop
  curveSatisfiesSourceHypothesesCertified :
    curveSatisfiesSourceHypotheses
  sourceConclusionSuppliesAutomorphicObject : Prop
  sourceConclusionSuppliesAutomorphicObjectCertified :
    sourceConclusionSuppliesAutomorphicObject
  sourceConclusionSuppliesAnalyticContinuation : Prop
  sourceConclusionSuppliesAnalyticContinuationCertified :
    sourceConclusionSuppliesAnalyticContinuation
  sourceConclusionSuppliesFunctionalEquation : Prop
  sourceConclusionSuppliesFunctionalEquationCertified :
    sourceConclusionSuppliesFunctionalEquation
  sourceConclusionSuppliesLocalGlobalCompatibility : Prop
  sourceConclusionSuppliesLocalGlobalCompatibilityCertified :
    sourceConclusionSuppliesLocalGlobalCompatibility
  sourceNormalizationMatchesObjectDescriptor : Prop
  sourceNormalizationMatchesObjectDescriptorCertified :
    sourceNormalizationMatchesObjectDescriptor
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/-- BSD-facing quality predicate for the typed automorphic analytic source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean#L3165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bbf346b0fa6dca7768cb204fefec97a1d230e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
