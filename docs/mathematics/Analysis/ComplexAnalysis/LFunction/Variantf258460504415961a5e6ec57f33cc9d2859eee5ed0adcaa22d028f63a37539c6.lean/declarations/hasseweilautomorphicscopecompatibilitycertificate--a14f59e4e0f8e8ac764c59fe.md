# HasseWeilAutomorphicScopeCompatibilityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a31d5fa0f8b940912865089a986c4d5b981d70c4e9b8239c57e28ed0c62bb098",
  "kind": "structure",
  "lexical_name": "HasseWeilAutomorphicScopeCompatibilityCertificate",
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
  "slug": "hasseweilautomorphicscopecompatibilitycertificate--a14f59e4e0f8e8ac764c59fe",
  "source": {
    "blob": "71bbf346b0fa6dca7768cb204fefec97a1d230e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2691,
    "line": 2667,
    "path": "GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a14f59e4e0f8e8ac764c59fe88e1c830587fe11ad1a46654e2fbba994dc9aed8",
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

Occurrence: `declaration:a31d5fa0f8b940912865089a986c4d5b981d70c4e9b8239c57e28ed0c62bb098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2667–2691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HasseWeilAutomorphicScopeCompatibilityCertificate
    {K : LawfulFieldLike.{u}}
    {E : ShortWeierstrass K.field}
    (N : NumberFieldCertificate K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (L : HasseWeilLFunction K.field E)
    (A : HasseWeilAutomorphicProvenanceCertificate N P L) where
  automorphicProvenanceCertified :
    A.certifiedForBSD
  scopeSupport :
    AutomorphicScopeSupportCertificate N L A.scope
  scopeSupportCertified :
    scopeSupport.certifiedForBSD
  scopeSourceMatchesAutomorphicObject : Prop
  scopeSourceMatchesAutomorphicObjectCertified :
    scopeSourceMatchesAutomorphicObject
  scopeSourceSuppliesAnalyticContinuation : Prop
  scopeSourceSuppliesAnalyticContinuationCertified :
    scopeSourceSuppliesAnalyticContinuation
  scopeSourceSuppliesFunctionalEquation : Prop
  scopeSourceSuppliesFunctionalEquationCertified :
    scopeSourceSuppliesFunctionalEquation
  boundary : List String

/-- BSD-facing quality predicate for automorphic scope compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean#L2667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bbf346b0fa6dca7768cb204fefec97a1d230e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
