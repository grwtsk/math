# TaxonomyRelationKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ae87bcb71133528b3927e368a283621df1ef8b5876ff4bb621866cad774c431",
  "kind": "inductive",
  "lexical_name": "TaxonomyRelationKind",
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
  "slug": "taxonomyrelationkind--9f64b9980bd105099b728be5",
  "source": {
    "blob": "7eda77e2c2209c8e7359664cda08552174fa85c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 22,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/AFe6f72d177e533ae/Variantf0e7f5842e0599bcfeffac0044fa5fd268ef8f18ed0ea171d8b838d53735eb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f64b9980bd105099b728be5adab6208c63a686e20f892093cb665a8c436e639",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/AFe6f72d177e533ae/Variantf0e7f5842e0599bcfeffac0044fa5fd268ef8f18ed0ea171d8b838d53735eb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ae87bcb71133528b3927e368a283621df1ef8b5876ff4bb621866cad774c431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TaxonomyRelationKind
  | isA | instanceOf | specializes | generalizes | substructureOf
  | quotientOf | completionOf | localizationOf | memberOfFamily
  | hasCarrier | hasOperation | hasRelation | hasLaw | hasInvariant
  | hasBoundary | hasFiber | hasBase | hasSection
  | assumes | implies | equivalentTo | contradicts | proves | refutes
  | isIndependentOf
  | constructedFrom | induces | extends | restricts | dualizes
  | linearizes | completes | deforms
  | actsOn | generatesFlow | evolvesUnder | preserves | dissipates
  | convergesTo | approximates | hasSpectrum | isEigenobjectOf
  | formalizedBy | representedBy | encodedBy | implementedBy
  | renderedBy | approximatedBy | certifiedBy
  deriving DecidableEq, Inhabited

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/AFe6f72d177e533ae/Variantf0e7f5842e0599bcfeffac0044fa5fd268ef8f18ed0ea171d8b838d53735eb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/AFe6f72d177e533ae/Variantf0e7f5842e0599bcfeffac0044fa5fd268ef8f18ed0ea171d8b838d53735eb7f.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eda77e2c2209c8e7359664cda08552174fa85c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
