# RhetoricalRole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41902b6fe69ad39596895ccb34bdf167926622ea471885468146afc1dbd61410",
  "kind": "inductive",
  "lexical_name": "RhetoricalRole",
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
  "slug": "rhetoricalrole--0a16ebc4b573fed3a423508e",
  "source": {
    "blob": "2da68a04d4d7819451943243c8daa08ed27624d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RhetoricalRole/Variantc4c9df6a1895550dd9aec0744ffb26fa0744976c096d9e8d1e5339010f44bd21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a16ebc4b573fed3a423508ef1c50e512c7e5ec727366fb5ff83257066d7d94a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RhetoricalRole/Variantc4c9df6a1895550dd9aec0744ffb26fa0744976c096d9e8d1e5339010f44bd21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41902b6fe69ad39596895ccb34bdf167926622ea471885468146afc1dbd61410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RhetoricalRole where
  | base
  | premise
  | conclusion
  | positive
  | negative
  | source
  | target
  deriving DecidableEq, Repr, Fintype

/-- Canonical transport tag.  Downstream runtimes may mirror this only as a
checked adapter to a Lean-generated manifest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RhetoricalRole/Variantc4c9df6a1895550dd9aec0744ffb26fa0744976c096d9e8d1e5339010f44bd21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RhetoricalRole/Variantc4c9df6a1895550dd9aec0744ffb26fa0744976c096d9e8d1e5339010f44bd21.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da68a04d4d7819451943243c8daa08ed27624d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
