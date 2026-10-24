# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b679299408cab75256d229ad3442189d3d7f9bf67a6d8f7306e3379448b0d88",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0cfa31acd77f80df2e4e6463",
  "source": {
    "blob": "ade2c9a1688396460956a6205fdad7f2ea573f7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 270,
    "path": "GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cfa31acd77f80df2e4e6463c67adc977c51af3db55fd4578013d91b1a96bdb4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b679299408cab75256d229ad3442189d3d7f9bf67a6d8f7306e3379448b0d88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [HasContinuousInv₀ G] : ContMDiffInv₀ I 0 G := by
  have : T1Space G := I.t1Space G
  constructor
  have A : ContMDiffOn I I 0 (fun (x : G) ↦ x⁻¹) {0}ᶜ := by
    rw [contMDiffOn_zero_iff]
    exact continuousOn_inv₀
  intro x hx
  have : ContMDiffWithinAt I I 0 (fun (x : G) ↦ x⁻¹) {0}ᶜ x := A x hx
  apply ContMDiffWithinAt.contMDiffAt this
  exact IsOpen.mem_nhds isOpen_compl_singleton hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/LieGroup/Variantcc8f300a651b98fcb7695f053e41c3d96321e1dfc35deae24512288337c7e78e.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade2c9a1688396460956a6205fdad7f2ea573f7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
