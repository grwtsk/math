# center.commSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08a8f67feacdb6c9a5747948b2f55d9c33104feb826cd7ba424bc26e488991a0",
  "kind": "instance",
  "lexical_name": "center.commSemigroup",
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
  "slug": "center-commsemigroup--15624b88f90c8a903d9eb97e",
  "source": {
    "blob": "3bdfb2d15fa560c2802ace236e5fb7135585f651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15624b88f90c8a903d9eb97e5904ab0283422680b8e7c3750d2b565a567d454a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08a8f67feacdb6c9a5747948b2f55d9c33104feb826cd7ba424bc26e488991a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance center.commSemigroup : CommSemigroup (center M) :=
  { MulMemClass.toSemigroup (center M) with mul_comm := fun _ b => Subtype.ext <| b.2 _ }
#align subsemigroup.center.comm_semigroup Subsemigroup.center.commSemigroup
#align add_subsemigroup.center.add_comm_semigroup AddSubsemigroup.center.addCommSemigroup

end

section

variable (M) [CommSemigroup M]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant2bd10a6be00c00ca28ee5d66ddd4c30d9dafafd135417a207e42a5391349e674.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bdfb2d15fa560c2802ace236e5fb7135585f651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
