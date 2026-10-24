# lintegral_lintegral_mul_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbb1d0ea-d627-3ff3-19ba-25432f007274",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81adbbba-d518-548f-576d-7b43a038bdd9",
  "kind": "theorem",
  "lexical_name": "lintegral_lintegral_mul_inv",
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
  "slug": "lintegral-lintegral-mul-inv--2aee2131402a27f3e5d35797",
  "source": {
    "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aee2131402a27f3e5d357970676371a5cc59d4ae590f3e8e41b2e7d79ddcb2c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81adbbba-d518-548f-576d-7b43a038bdd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_lintegral_mul_inv [IsMulLeftInvariant ν] (f : G → G → ℝ≥0∞)
    (hf : AEMeasurable (uncurry f) (μ.prod ν)) :
    (∫⁻ x, ∫⁻ y, f (y * x) x⁻¹ ∂ν ∂μ) = ∫⁻ x, ∫⁻ y, f x y ∂ν ∂μ := by
  have h : Measurable fun z : G × G => (z.2 * z.1, z.1⁻¹) :=
    (measurable_snd.mul measurable_fst).prodMk measurable_fst.inv
  have h2f : AEMeasurable (uncurry fun x y => f (y * x) x⁻¹) (μ.prod ν) :=
    hf.comp_quasiMeasurePreserving (measurePreserving_mul_prod_inv μ ν).quasiMeasurePreserving
  simp_rw [lintegral_lintegral h2f, lintegral_lintegral hf]
  conv_rhs => rw [← (measurePreserving_mul_prod_inv μ ν).map_eq]
  symm
  exact
    lintegral_map' (hf.mono' (measurePreserving_mul_prod_inv μ ν).map_eq.absolutelyContinuous)
      h.aemeasurable

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b431b4bc0f51b61638f97f50660c7a184d302fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
