# coordinateMultiplication

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ec1220958cc6c3630bbb73af9c743b63f2bd3c354c6c5eb681804028968d0ae",
  "kind": "def",
  "lexical_name": "coordinateMultiplication",
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
  "slug": "coordinatemultiplication--898f300479c927910783977f",
  "source": {
    "blob": "9bdd203d57057601f12400f8cc7cb0700af798fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:898f300479c927910783977f43ad2b723d4f00db7f602eba5002792fffc19457",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ec1220958cc6c3630bbb73af9c743b63f2bd3c354c6c5eb681804028968d0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateMultiplication : Lp ℂ 2 μ →ₗ.[ℂ] Lp ℂ 2 μ where
  domain := coordinateDomain μ
  toFun :=
    { toFun := fun f => f.property.toLp (fun x : ℝ => (x : ℂ) * (f : Lp ℂ 2 μ) x)
      map_add' := by
        intro f g
        apply Lp.ext
        filter_upwards [MemLp.coeFn_toLp (f + g).property,
          MemLp.coeFn_toLp f.property, MemLp.coeFn_toLp g.property,
          Lp.coeFn_add (f : Lp ℂ 2 μ) (g : Lp ℂ 2 μ),
          Lp.coeFn_add (f.property.toLp _) (g.property.toLp _)] with x hfg hf hg ha hb
        simp only [Submodule.coe_add] at hfg ⊢
        simp only [Pi.add_apply] at ha hb
        simp only [hfg, hb, hf, hg, ha]
        exact mul_add _ _ _
      map_smul' := by
        intro c f
        apply Lp.ext
        filter_upwards [MemLp.coeFn_toLp (c • f).property,
          MemLp.coeFn_toLp f.property,
          Lp.coeFn_smul c (f : Lp ℂ 2 μ),
          Lp.coeFn_smul c (f.property.toLp _)] with x hcf hf ha hb
        simp only [Submodule.coe_smul, RingHom.id_apply] at hcf ⊢
        simp only [Pi.smul_apply] at ha hb
        simp only [hcf, hb, hf, ha]
        simp [smul_eq_mul, mul_left_comm] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdd203d57057601f12400f8cc7cb0700af798fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
