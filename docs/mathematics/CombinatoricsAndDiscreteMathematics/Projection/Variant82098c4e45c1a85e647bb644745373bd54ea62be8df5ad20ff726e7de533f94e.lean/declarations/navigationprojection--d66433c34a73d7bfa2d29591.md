# NavigationProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9b1b20acd0ac690ff1509277bcadb44441094acb1b4228045b048d55cb7d987",
  "kind": "structure",
  "lexical_name": "NavigationProjection",
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
  "slug": "navigationprojection--d66433c34a73d7bfa2d29591",
  "source": {
    "blob": "4b395ee45e931483cff41ba5e3669800f4cd0764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Projection/Variant82098c4e45c1a85e647bb644745373bd54ea62be8df5ad20ff726e7de533f94e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d66433c34a73d7bfa2d295916087cfcaabe521279e40fa83d35ea14db0d60ed8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Projection/Variant82098c4e45c1a85e647bb644745373bd54ea62be8df5ad20ff726e7de533f94e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9b1b20acd0ac690ff1509277bcadb44441094acb1b4228045b048d55cb7d987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NavigationProjection where
  id : NavigationProjectionId
  rootDomain : DomainId
  selectedRelations : Finset TaxonomyRelationKind
  tieBreakPolicy : StableId
  multipleInheritance : MultipleInheritancePolicy
  omittedRelations : Finset TaxonomyRelationKind
  authority : HomeCandidateAuthority := .navigationOnly
  deriving DecidableEq

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Projection/Variant82098c4e45c1a85e647bb644745373bd54ea62be8df5ad20ff726e7de533f94e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Projection/Variant82098c4e45c1a85e647bb644745373bd54ea62be8df5ad20ff726e7de533f94e.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b395ee45e931483cff41ba5e3669800f4cd0764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
