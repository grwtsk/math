# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d56f6afc3f71c23b940e9ae30439817e9310e08df0c9c456ba74aa27291f466",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7c51db819bedd02caba5448a",
  "source": {
    "blob": "f8f85669875d9fb682ee00d27395e4c67f932b7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 793,
    "path": "GRWTSK/Algebra/GroupTheory/Index/Variant9bf3c1df09409ab85a1ce19884fe7cf7817d69860eb86855fba728c54d3f14f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c51db819bedd02caba5448a67670e6dffa39e729e847260d36c15705806cd06",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Index/Variant9bf3c1df09409ab85a1ce19884fe7cf7817d69860eb86855fba728c54d3f14f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d56f6afc3f71c23b940e9ae30439817e9310e08df0c9c456ba74aa27291f466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 793–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (H' : Subgroup G') [H'.FiniteIndex] : (H'.comap f).FiniteIndex where
  index_ne_zero := by
    rw [index_comap]
    exact FiniteIndex.index_ne_zero

variable (H) in
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Index/Variant9bf3c1df09409ab85a1ce19884fe7cf7817d69860eb86855fba728c54d3f14f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Index/Variant9bf3c1df09409ab85a1ce19884fe7cf7817d69860eb86855fba728c54d3f14f0.lean#L793).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f85669875d9fb682ee00d27395e4c67f932b7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
