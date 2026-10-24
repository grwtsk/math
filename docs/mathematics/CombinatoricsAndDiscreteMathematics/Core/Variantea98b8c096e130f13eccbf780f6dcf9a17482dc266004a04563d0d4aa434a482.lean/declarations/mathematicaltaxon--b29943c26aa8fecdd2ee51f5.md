# MathematicalTaxon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cae33ae521343be7b0c1a4a818aad48882130c8a4fe0db4f48e77f023f3ad701",
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
  "slug": "mathematicaltaxon--b29943c26aa8fecdd2ee51f5",
  "source": {
    "blob": "6b72e9a5b8d299196ffc8a68e8e053676d2ea8d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b29943c26aa8fecdd2ee51f53fff7222d3c1f689da08473d01932cb81b539580",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cae33ae521343be7b0c1a4a818aad48882130c8a4fe0db4f48e77f023f3ad701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–25.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantea98b8c096e130f13eccbf780f6dcf9a17482dc266004a04563d0d4aa434a482.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b72e9a5b8d299196ffc8a68e8e053676d2ea8d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
