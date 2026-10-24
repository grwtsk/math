# instCStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5aa50fcdaa3a68a254c97ddcd0c659c7b55aacbee3d576851b286144b7d9e7",
  "kind": "instance",
  "lexical_name": "instCStarRing",
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
  "slug": "instcstarring--e6f8dbd12e0e3419a2298ac2",
  "source": {
    "blob": "194ed19a841cb0dbb1f16a631b68b82107192c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant451907e1a5e3e6ec01871f3411438232a1c7f0695c91c56e3ca785cd1530e4f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6f8dbd12e0e3419a2298ac225b9c1d1a013acb551d9dd2213e5e3871e80c3cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant451907e1a5e3e6ec01871f3411438232a1c7f0695c91c56e3ca785cd1530e4f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5aa50fcdaa3a68a254c97ddcd0c659c7b55aacbee3d576851b286144b7d9e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCStarRing : CStarRing (α →ᵇ β) where
  norm_mul_self_le f := by
    rw [← sq, ← Real.le_sqrt (norm_nonneg _) (norm_nonneg _), norm_le (Real.sqrt_nonneg _)]
    intro x
    rw [Real.le_sqrt (norm_nonneg _) (norm_nonneg _), sq, ← CStarRing.norm_star_mul_self]
    exact norm_coe_le_norm (star f * f) x

end CStarRing

section NormedAlgebra

variable (𝕜 : Type*) [NormedField 𝕜] [TopologicalSpace α]
  [NormedRing β] [NormedAlgebra 𝕜 β] [StarAddMonoid β] [NormedStarGroup β]

/-- The ⋆-algebra-homomorphism forgetting that a bounded continuous function is bounded. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant451907e1a5e3e6ec01871f3411438232a1c7f0695c91c56e3ca785cd1530e4f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant451907e1a5e3e6ec01871f3411438232a1c7f0695c91c56e3ca785cd1530e4f7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `194ed19a841cb0dbb1f16a631b68b82107192c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
