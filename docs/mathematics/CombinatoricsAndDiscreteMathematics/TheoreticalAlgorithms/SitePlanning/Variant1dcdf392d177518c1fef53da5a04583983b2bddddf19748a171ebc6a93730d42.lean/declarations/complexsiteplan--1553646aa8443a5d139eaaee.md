# complexSitePlan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4460dcad18ebcacd5d103d8c54b1105ce8268fd55726bf352b2a4f20e4516f7",
  "kind": "def",
  "lexical_name": "complexSitePlan",
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
  "slug": "complexsiteplan--1553646aa8443a5d139eaaee",
  "source": {
    "blob": "e21dbaa8b73ce7a082a466d3d84a2b5461d7f73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1553646aa8443a5d139eaaeee9faa6fea2c719c4359e77fc42d2a7a6f38edbd2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4460dcad18ebcacd5d103d8c54b1105ce8268fd55726bf352b2a4f20e4516f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexSitePlan
    (R : NormalizationRules)
    (T : BinaryLogicTree)
    (localObjects covers : List String)
    (obstructionBoundary : List String) :
    ComplexSitePlan where
  tree := T
  normalForm := normalize R T
  localObjects := localObjects
  covers := covers
  irreduciblePrimeModularities := primeFactorsCore (normalizeCore R T)
  topologyPrime := topologyPrimeIdentity R T
  obstructionBoundary := obstructionBoundary
  claimBoundary := [
    "ComplexSitePlan is site-planning metadata only.",
    "Site-theoretic universality requires checked AffineTopos or NativeSyntacticTopos theorems."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SitePlanning/Variant1dcdf392d177518c1fef53da5a04583983b2bddddf19748a171ebc6a93730d42.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e21dbaa8b73ce7a082a466d3d84a2b5461d7f73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
