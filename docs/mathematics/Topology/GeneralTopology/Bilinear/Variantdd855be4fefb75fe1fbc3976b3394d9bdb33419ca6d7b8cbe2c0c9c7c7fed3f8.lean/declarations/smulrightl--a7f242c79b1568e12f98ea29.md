# smulRightL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a11d1dbd4af2d272e4e79d02098767c17249121b7d84f829bda5145cfbb93a81",
  "kind": "def",
  "lexical_name": "smulRightL",
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
  "slug": "smulrightl--a7f242c79b1568e12f98ea29",
  "source": {
    "blob": "569d3f985165d6ca2ccc475a507b636ba459afdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 391,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7f242c79b1568e12f98ea29edc9b21184f035023288ef2682cb62a47fd1c03b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a11d1dbd4af2d272e4e79d02098767c17249121b7d84f829bda5145cfbb93a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulRightL : (E →L[𝕜] 𝕜) →L[𝕜] Fₗ →L[𝕜] E →L[𝕜] Fₗ :=
  LinearMap.mkContinuous₂
    { toFun := smulRightₗ
      map_add' := fun c₁ c₂ => by
        ext x
        simp only [add_smul, coe_smulRightₗ, add_apply, smulRight_apply, LinearMap.add_apply]
      map_smul' := fun m c => by
        ext x
        dsimp
        rw [smul_smul] }
    1 fun c x => by
      simp only [coe_smulRightₗ, one_mul, norm_smulRight_apply, LinearMap.coe_mk, AddHom.coe_mk,
        le_refl]


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569d3f985165d6ca2ccc475a507b636ba459afdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
