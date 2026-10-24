# ProperCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:555ec56bf8590a99cfda84c4526f65f2bd8b225185bcb796b5c908395f459134",
  "kind": "structure",
  "lexical_name": "ProperCone",
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
  "slug": "propercone--cca360a5793fcf6dff901c39",
  "source": {
    "blob": "cd02462d122de8084b0fa28d43ea50fc83c65260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cca360a5793fcf6dff901c39ffd32517df7b27a84db70639ef02613656d60ca6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:555ec56bf8590a99cfda84c4526f65f2bd8b225185bcb796b5c908395f459134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProperCone (𝕜 : Type*) (E : Type*)
    [Semiring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜] [AddCommMonoid E]
    [TopologicalSpace E] [Module 𝕜 E] extends Submodule {c : 𝕜 // 0 ≤ c} E where
  isClosed' : IsClosed (carrier : Set E)

namespace ProperCone
section Module

variable {𝕜 : Type*} [Semiring 𝕜] [PartialOrder 𝕜] [IsOrderedRing 𝕜]
variable {E : Type*} [AddCommMonoid E] [TopologicalSpace E] [Module 𝕜 E]

/-- A `PointedCone` is defined as an alias of submodule. We replicate the abbreviation here and
define `toPointedCone` as an alias of `toSubmodule`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Proper/Variant0f8159b4c34e38cc7a5f5e8b1513b31ae12c4d4e09b6a9c07a0e7b39c1de8480.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd02462d122de8084b0fa28d43ea50fc83c65260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
