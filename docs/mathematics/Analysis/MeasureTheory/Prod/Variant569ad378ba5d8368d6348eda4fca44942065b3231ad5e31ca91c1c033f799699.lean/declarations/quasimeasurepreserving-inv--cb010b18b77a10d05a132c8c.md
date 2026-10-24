# quasiMeasurePreserving_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:689ae989-3be3-441a-f1b6-e5a68ef003c1",
  "kind": "theorem",
  "lexical_name": "quasiMeasurePreserving_inv",
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
  "slug": "quasimeasurepreserving-inv--cb010b18b77a10d05a132c8c",
  "source": {
    "blob": "410b654404585236b88a6422692d03d7259f3ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb010b18b77a10d05a132c8c977bcf1f3c3d79b9d378b2169f560450c730112a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:689ae989-3be3-441a-f1b6-e5a68ef003c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiMeasurePreserving_inv : QuasiMeasurePreserving (Inv.inv : G → G) μ μ := by
  refine ⟨measurable_inv, AbsolutelyContinuous.mk fun s hsm hμs => ?_⟩
  rw [map_apply measurable_inv hsm, inv_preimage]
  have hf : Measurable fun z : G × G => (z.2 * z.1, z.1⁻¹) :=
    (measurable_snd.mul measurable_fst).prodMk measurable_fst.inv
  suffices map (fun z : G × G => (z.2 * z.1, z.1⁻¹)) (μ.prod μ) (s⁻¹ ×ˢ s⁻¹) = 0 by
    simpa only [(measurePreserving_mul_prod_inv μ μ).map_eq, prod_prod, mul_eq_zero (M₀ := ℝ≥0∞),
      or_self_iff] using this
  have hsm' : MeasurableSet (s⁻¹ ×ˢ s⁻¹) := hsm.inv.prod hsm.inv
  simp_rw [map_apply hf hsm', prod_apply_symm (μ := μ) (ν := μ) (hf hsm'), preimage_preimage,
    mk_preimage_prod, inv_preimage, inv_inv, measure_mono_null inter_subset_right hμs,
    lintegral_zero]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b654404585236b88a6422692d03d7259f3ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
