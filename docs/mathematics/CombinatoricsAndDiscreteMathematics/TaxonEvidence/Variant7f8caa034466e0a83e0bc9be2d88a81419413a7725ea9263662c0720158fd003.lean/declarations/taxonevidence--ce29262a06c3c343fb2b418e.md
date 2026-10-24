# TaxonEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65e78c0afd1773b6c297193d2eb6a5d80b1964e94c14eb30d78f29413104f701",
  "kind": "structure",
  "lexical_name": "TaxonEvidence",
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
  "slug": "taxonevidence--ce29262a06c3c343fb2b418e",
  "source": {
    "blob": "541daa4392d365e3b9099bf7979aaeb0d1e86185",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TaxonEvidence/Variant7f8caa034466e0a83e0bc9be2d88a81419413a7725ea9263662c0720158fd003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce29262a06c3c343fb2b418e627a7b439e7fdcb065a75df3b857d1b0ae1ab796",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TaxonEvidence/Variant7f8caa034466e0a83e0bc9be2d88a81419413a7725ea9263662c0720158fd003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65e78c0afd1773b6c297193d2eb6a5d80b1964e94c14eb30d78f29413104f701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TaxonEvidence where
  id : TaxonomyEvidenceId
  conceptId : ConceptId
  primaryRole : RoleEvidence
  secondaryRoles : List RoleEvidence
  principalDomain : DomainEvidence
  secondaryDomains : List DomainEvidence
  facets : List FacetEvidence
  status : StatusEvidence
  sourceHistorySubordinate : Bool
  reviewer : StableId
  digest : Digest
  deriving DecidableEq

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TaxonEvidence/Variant7f8caa034466e0a83e0bc9be2d88a81419413a7725ea9263662c0720158fd003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TaxonEvidence/Variant7f8caa034466e0a83e0bc9be2d88a81419413a7725ea9263662c0720158fd003.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `541daa4392d365e3b9099bf7979aaeb0d1e86185` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
