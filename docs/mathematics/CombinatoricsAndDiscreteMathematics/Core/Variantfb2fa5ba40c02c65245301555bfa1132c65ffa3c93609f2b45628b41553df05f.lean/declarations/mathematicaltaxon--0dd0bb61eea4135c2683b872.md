# MathematicalTaxon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc3087a4675b0b40c8824b8d736b0b9a2dd6ea6144682f224525ac15ce505e36",
  "kind": "structure",
  "lexical_name": "MathematicalTaxon",
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
  "slug": "mathematicaltaxon--0dd0bb61eea4135c2683b872",
  "source": {
    "blob": "c84604066dafb47b68a73cef98d8301744142cbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dd0bb61eea4135c2683b872202324b46032be5a65c14f38b440c4b2c873d6c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc3087a4675b0b40c8824b8d736b0b9a2dd6ea6144682f224525ac15ce505e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MathematicalTaxon where
  id : TaxonId
  conceptId : ConceptId
  primaryRole : OntologicalRole
  secondaryRoles : Finset OntologicalRole
  principalDomain : DomainPath
  secondaryDomains : Finset DomainPath
  facets : Finset FacetId
  level : StructuralLevel
  status : MathematicalStatus
  authority : Concept.Profile
  evidenceId : TaxonomyEvidenceId
  deriving DecidableEq

namespace MathematicalTaxon

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantfb2fa5ba40c02c65245301555bfa1132c65ffa3c93609f2b45628b41553df05f.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c84604066dafb47b68a73cef98d8301744142cbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
