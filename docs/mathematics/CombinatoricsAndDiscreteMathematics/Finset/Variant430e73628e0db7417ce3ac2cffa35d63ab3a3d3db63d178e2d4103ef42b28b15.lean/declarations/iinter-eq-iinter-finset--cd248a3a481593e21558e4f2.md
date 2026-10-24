# iInter_eq_iInter_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be423666-84f3-f19b-e47c-ff28d2c74a9e",
  "kind": "theorem",
  "lexical_name": "iInter_eq_iInter_finset",
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
  "slug": "iinter-eq-iinter-finset--cd248a3a481593e21558e4f2",
  "source": {
    "blob": "dc244b4f6ce32dba547591fe2fc4d229cdc7d75d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd248a3a481593e21558e4f291d4fddf5f9000fcf07aafa8d5de3b95733d304b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be423666-84f3-f19b-e47c-ff28d2c74a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInter_eq_iInter_finset (s : ι → Set α) : ⋂ i, s i = ⋂ t : Finset ι, ⋂ i ∈ t, s i :=
  iInf_eq_iInf_finset s

/-- Intersection of an indexed family of sets `s : ι → Set α` is equal to the intersection of the
intersections of finite subfamilies. This version works for `ι : Sort*`. See also
`iInter_eq_iInter_finset` for a version that assumes `ι : Type*` but avoids `PLift`s in the right
hand side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant430e73628e0db7417ce3ac2cffa35d63ab3a3d3db63d178e2d4103ef42b28b15.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc244b4f6ce32dba547591fe2fc4d229cdc7d75d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
