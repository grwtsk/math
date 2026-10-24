# algebraMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4314e47c-b2ed-fc4b-5285-4be321af4961",
  "kind": "theorem",
  "lexical_name": "algebraMap_apply",
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
  "slug": "algebramap-apply--8e7089a3cd9819d3c43a37b5",
  "source": {
    "blob": "2e71c00c890995178465124f2912166de722d50a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1043,
    "line": 1028,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7089a3cd9819d3c43a37b57eca7cde0da89278819289de631b800c9c34afbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4314e47c-b2ed-fc4b-5285-4be321af4961`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1028–1043.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem algebraMap_apply (r : R) (m : M₂) : algebraMap R (M₂ →L[R] M₂) r m = r • m := rfl

end CommRing

section RestrictScalars

section Semiring
variable {A M₁ M₂ R S : Type*} [Semiring A] [Semiring R] [Semiring S]
  [AddCommMonoid M₁] [Module A M₁] [Module R M₁] [TopologicalSpace M₁]
  [AddCommMonoid M₂] [Module A M₂] [Module R M₂] [TopologicalSpace M₂]
  [LinearMap.CompatibleSMul M₁ M₂ R A]

variable (R) in
/-- If `A` is an `R`-algebra, then a continuous `A`-linear map can be interpreted as a continuous
`R`-linear map. We assume `LinearMap.CompatibleSMul M₁ M₂ R A` to match assumptions of
`LinearMap.map_smul_of_tower`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean#L1028).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e71c00c890995178465124f2912166de722d50a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
