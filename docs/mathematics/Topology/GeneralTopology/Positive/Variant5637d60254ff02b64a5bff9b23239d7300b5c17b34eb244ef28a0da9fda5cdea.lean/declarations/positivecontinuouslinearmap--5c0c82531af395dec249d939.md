# PositiveContinuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33cf0d5c8ee79a78da7dcc0be13bdd4ae0261f0cede9c5771be261a32d68fc60",
  "kind": "structure",
  "lexical_name": "PositiveContinuousLinearMap",
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
  "slug": "positivecontinuouslinearmap--5c0c82531af395dec249d939",
  "source": {
    "blob": "4cd390aa97fa412f1cbf6d43eb0fc2f43855d951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c0c82531af395dec249d939c8bdda5a0bc16236da0bf4b78205d9541a307319",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33cf0d5c8ee79a78da7dcc0be13bdd4ae0261f0cede9c5771be261a32d68fc60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveContinuousLinearMap (R E₁ E₂ : Type*) [Semiring R]
    [AddCommMonoid E₁] [PartialOrder E₁] [TopologicalSpace E₁]
    [AddCommMonoid E₂] [PartialOrder E₂] [TopologicalSpace E₂]
    [Module R E₁] [Module R E₂] extends E₁ →ₚ[R] E₂, E₁ →L[R] E₂

/-- Notation for a `PositiveContinuousLinearMap`. -/
notation:25 E " →P[" R:25 "] " F:0 => PositiveContinuousLinearMap R E F

/-- The `ContinuousLinearMap` underlying a `PositiveContinuousLinearMap`. -/
add_decl_doc PositiveContinuousLinearMap.toContinuousLinearMap
/-- The `PositiveLinearMap` underlying a `PositiveContinuousLinearMap`. -/
add_decl_doc PositiveContinuousLinearMap.toPositiveLinearMap

namespace PositiveContinuousLinearMap

section General

variable {R E₁ E₂ E₃ E₄ : Type*} [Semiring R]
  [AddCommMonoid E₁] [PartialOrder E₁] [AddCommMonoid E₂] [PartialOrder E₂]
  [Module R E₁] [Module R E₂] [TopologicalSpace E₁] [TopologicalSpace E₂]

@[macro_inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Positive/Variant5637d60254ff02b64a5bff9b23239d7300b5c17b34eb244ef28a0da9fda5cdea.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd390aa97fa412f1cbf6d43eb0fc2f43855d951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
