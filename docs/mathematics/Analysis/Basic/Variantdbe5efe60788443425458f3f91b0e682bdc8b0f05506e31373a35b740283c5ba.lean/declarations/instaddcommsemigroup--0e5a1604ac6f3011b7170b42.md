# instAddCommSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fbe261289d3f4110cda684467a044c87d0fd4afe51b42e73874287968ee90cd",
  "kind": "instance",
  "lexical_name": "instAddCommSemigroup",
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
  "slug": "instaddcommsemigroup--0e5a1604ac6f3011b7170b42",
  "source": {
    "blob": "c6f463e7334b5820e579b56cf61c1d46e2349855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 490,
    "path": "GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e5a1604ac6f3011b7170b428b3f15cd6a91d1152998409a22906af12ba7d875",
  "verification": {
    "reference": "docs/verification/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fbe261289d3f4110cda684467a044c87d0fd4afe51b42e73874287968ee90cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommSemigroup : AddCommSemigroup (ConvexCone 𝕜 E) where
  add := Add.add
  add_assoc _ _ _ := SetLike.coe_injective <| Set.addCommSemigroup.add_assoc _ _ _
  add_comm _ _ := SetLike.coe_injective <| Set.addCommSemigroup.add_comm _ _

end Module

end OrderedSemiring

end ConvexCone

namespace Submodule

/-! ### Submodules are cones -/


section OrderedSemiring

variable [OrderedSemiring 𝕜]

section AddCommMonoid

variable [AddCommMonoid E] [Module 𝕜 E]

/-- Every submodule is trivially a convex cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f463e7334b5820e579b56cf61c1d46e2349855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
