# norm_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8b49892f12821ace044443b8061b099706c5450",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56a2b51b-182e-1490-beb4-47338d67c689",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04b88030-404a-9fb3-9d7c-170cbfd818ae",
  "kind": "theorem",
  "lexical_name": "norm_comp_le",
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
  "slug": "norm-comp-le--19ba234ce2ccf5eb33701f97",
  "source": {
    "blob": "d8b49892f12821ace044443b8061b099706c5450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 86,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ba234ce2ccf5eb33701f9777a94a91bac451bad4b26c4f94438fdd4dea6731",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04b88030-404a-9fb3-9d7c-170cbfd818ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_comp_le (g : W₂ →ᴬ[𝕜] V) : ‖f.comp g‖ ≤ ‖f‖ * ‖g‖ + ‖f 0‖ := by
  rw [norm_def, max_le_iff]
  constructor
  · calc
      ‖f.comp g 0‖ = ‖f (g 0)‖ := by simp
      _ = ‖f.contLinear (g 0) + f 0‖ := by rw [f.decomp]; simp
      _ ≤ ‖f.contLinear‖ * ‖g 0‖ + ‖f 0‖ := by grw [norm_add_le, f.contLinear.le_opNorm]
      _ ≤ ‖f‖ * ‖g‖ + ‖f 0‖ := by grw [f.norm_contLinear_le, g.norm_image_zero_le]
  · calc
      ‖(f.comp g).contLinear‖ ≤ ‖f.contLinear‖ * ‖g.contLinear‖ :=
        (g.comp_contLinear f).symm ▸ f.contLinear.opNorm_comp_le _
      _ ≤ ‖f‖ * ‖g‖ := by grw [f.norm_contLinear_le, g.norm_contLinear_le]
      _ ≤ ‖f‖ * ‖g‖ + ‖f 0‖ := by rw [le_add_iff_nonneg_right]; apply norm_nonneg

variable (𝕜 R V W) [Ring R] [Module R W] [ContinuousConstSMul R W] [SMulCommClass 𝕜 R W]

/-- The space of affine maps between two normed spaces is linearly isometric to the product of the
codomain with the space of linear maps, by taking the value of the affine map at `(0 : V)` and the
linear part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b49892f12821ace044443b8061b099706c5450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
