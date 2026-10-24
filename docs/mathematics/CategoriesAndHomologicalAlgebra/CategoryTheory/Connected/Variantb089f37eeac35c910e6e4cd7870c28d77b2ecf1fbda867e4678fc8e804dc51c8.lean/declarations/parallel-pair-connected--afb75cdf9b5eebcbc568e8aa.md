# parallel_pair_connected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69a6356eb9f819541800d66ac37a137866bc342d5582e5b8752cd443fa3b240c",
  "kind": "instance",
  "lexical_name": "parallel_pair_connected",
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
  "slug": "parallel-pair-connected--afb75cdf9b5eebcbc568e8aa",
  "source": {
    "blob": "416c082730a4c6a310a59f350b62566efe63d01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afb75cdf9b5eebcbc568e8aaa0f1e1cd2791ee9823778b10fedda4e287bc1fda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69a6356eb9f819541800d66ac37a137866bc342d5582e5b8752cd443fa3b240c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance parallel_pair_connected : IsConnected WalkingParallelPair := by
  apply IsConnected.of_induct
  · introv _ t
    cases j
    · rwa [t WalkingParallelPairHom.left]
    · assumption

end Examples

variable {C : Type u₂} [Category.{v₂} C]
variable [HasBinaryProducts C]
variable {J : Type v₂} [SmallCategory J]

namespace ProdPreservesConnectedLimits

/-- (Impl). The obvious natural transformation from (X × K -) to K. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb089f37eeac35c910e6e4cd7870c28d77b2ecf1fbda867e4678fc8e804dc51c8.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416c082730a4c6a310a59f350b62566efe63d01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
