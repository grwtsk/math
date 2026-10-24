# root_parent_absent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1110aa5-f115-7f57-ac37-dfbc723406de",
  "kind": "theorem",
  "lexical_name": "root_parent_absent",
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
  "slug": "root-parent-absent--0ef3575b9844a35c27f7343d",
  "source": {
    "blob": "1a351c17d90040f2cc4151f2a6be14bec6885fac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ef3575b9844a35c27f7343d547e7b35ea739f78fb555d5a2b95cd3b05aae74b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1110aa5-f115-7f57-ac37-dfbc723406de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem root_parent_absent
    (hierarchy : RankedAuditHierarchy Node)
    (parent : Node) :
    ¬ hierarchy.ParentStep parent hierarchy.projection.root := by
  intro parentWitness
  change
    hierarchy.projection.parent hierarchy.projection.root =
      some parent at parentWitness
  rw [hierarchy.root_has_no_parent] at parentWitness
  cases parentWitness

/-- A parent is always strictly closer to the root in the certified rank. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variantbd956f86bc0f71d81d0e23bcf95f0424d757f073378272b8ed47cc148ee98c14.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a351c17d90040f2cc4151f2a6be14bec6885fac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
