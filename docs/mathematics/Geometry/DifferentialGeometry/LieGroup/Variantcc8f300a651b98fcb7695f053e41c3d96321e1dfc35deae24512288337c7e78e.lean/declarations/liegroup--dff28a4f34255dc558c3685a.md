# LieGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:812459fd1b4666813a57eb3501d9f5bfcbf460146c42ceee0334958e556d0a30",
  "kind": "class",
  "lexical_name": "LieGroup",
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
  "slug": "liegroup--dff28a4f34255dc558c3685a",
  "source": {
    "blob": "ade2c9a1688396460956a6205fdad7f2ea573f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dff28a4f34255dc558c3685a612015ea9abfa9e484e07dd8e2fe43a5ab8a091c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:812459fd1b4666813a57eb3501d9f5bfcbf460146c42ceee0334958e556d0a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LieGroup {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H]
    {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] (I : ModelWithCorners 𝕜 E H)
    (n : WithTop ℕ∞) (G : Type*)
    [Group G] [TopologicalSpace G] [ChartedSpace H G] : Prop extends ContMDiffMul I n G where
  /-- Inversion is smooth in a Lie group. -/
  contMDiff_inv : ContMDiff I I n fun a : G => a⁻¹

/-!
  ### Smoothness of inversion, negation, division and subtraction

  Let `f : M → G` be a `C^n` function into a Lie group, then `f` is point-wise
  invertible with smooth inverse `f`. If `f` and `g` are two such functions, the quotient
  `f / g` (i.e., the point-wise product of `f` and the point-wise inverse of `g`) is also `C^n`. -/
section PointwiseDivision

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {H : Type*} [TopologicalSpace H] {E : Type*}
  [NormedAddCommGroup E] [NormedSpace 𝕜 E] {I : ModelWithCorners 𝕜 E H} {n : WithTop ℕ∞} {G : Type*}
  [TopologicalSpace G] [ChartedSpace H G] [Group G] {E' : Type*}
  [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*} [TopologicalSpace H']
  {I' : ModelWithCorners 𝕜 E' H'} {M : Type*} [TopologicalSpace M] [ChartedSpace H' M]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade2c9a1688396460956a6205fdad7f2ea573f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
