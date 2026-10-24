# Verification target: GRWTSK.Analysis.MeasureTheory.FiniteMeasureProd.Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1869d9577e98c93aeadaedd04ba08443c5a8307a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1869d9577e98c93aeadaedd04ba08443c5a8307a`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod--ec6e8d1e50d98783532cd65a.md) | 50 | `declaration-track:ec6e8d1e50d98783532cd65a1684effb8e7fb0b26d00bb3ada1ac75b630133d2` |
| 2 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/tomeasure-prod--de805dd9d045a70a9278a987.md) | 55 | `result-track:de805dd9d045a70a9278a98741f0533b8748169790c0fa145e59b808ad28431a` |
| 3 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-apply--23c3508122b7d1d5c74a54d9.md) | 57 | `result-track:23c3508122b7d1d5c74a54d9b5c8f68e51ee7d24469c2f194f354464743a1962` |
| 4 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-apply-symm--cb380ea6c92977e7d94bc161.md) | 61 | `result-track:cb380ea6c92977e7d94bc1611eb83182bf6a806636a7107d597518be7e27b4c6` |
| 5 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-prod--1acae254b6e027f479488226.md) | 65 | `result-track:1acae254b6e027f479488226ad9d05fca22453455b2003be8e845b34312a7d33` |
| 6 | `lemma` | [mass_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/mass-prod--f05cc737b591154b7128f724.md) | 67 | `result-track:f05cc737b591154b7128f7247a18cf681bc40abe238ce7954d03e1ff25eb4642` |
| 7 | `lemma` | [zero_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/zero-prod--cbcfd1a2a8c1111fa9e551bc.md) | 72 | `result-track:cbcfd1a2a8c1111fa9e551bc9040383d62f2ac7c99a5f1f8644672f3a35393c0` |
| 8 | `lemma` | [prod_zero](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-zero--89fe3f4e5f646973700d706f.md) | 75 | `result-track:89fe3f4e5f646973700d706f0bae2bd9eb0fb6b90675fb912229f95f75e6c01b` |
| 9 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-fst-prod--6e0df0a1c8e01b3dd53fa39a.md) | 78 | `result-track:6e0df0a1c8e01b3dd53fa39a8acea7225dfb81191a5ce9ab6c77395b0d9e2337` |
| 10 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-snd-prod--576ba4b0d6405fbe6e0fb624.md) | 79 | `result-track:576ba4b0d6405fbe6e0fb624bcb883ee8b86baad5f59cc458ddd0ef5d5bc2c99` |
| 11 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-prod-map--882823b0c3438cbb3d0f1a6d.md) | 81 | `result-track:882823b0c3438cbb3d0f1a6d768da042419d30757baae5b7495467c394a18e25` |
| 12 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-swap--6cc408f37ab49d6c092c4151.md) | 88 | `result-track:6cc408f37ab49d6c092c4151481efba40f6cd24ed38d9c34fc934078998ba5a2` |
| 13 | `def` | [prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod--4456789704d1f2dd93345518.md) | 103 | `declaration-track:4456789704d1f2dd9334551815d5b008ccb3e67c2080bbd586d4589a38b5a6d5` |
| 14 | `lemma` | [toMeasure_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/tomeasure-prod--08300dd2f5e23398a64119cf.md) | 109 | `result-track:08300dd2f5e23398a64119cf7e6d12d6864ba017372f5ab141ce771369ddef03` |
| 15 | `lemma` | [prod_apply](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-apply--41eab65b8dc266b96ec71cdf.md) | 111 | `result-track:41eab65b8dc266b96ec71cdf7563a7c7a3875f1aeca91f07a3e2baccc3d7f675` |
| 16 | `lemma` | [prod_apply_symm](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-apply-symm--42aad933100f32f9ef9711aa.md) | 115 | `result-track:42aad933100f32f9ef9711aa11a461fc01cf02be5b0a496c52d09236ea2dcd4b` |
| 17 | `lemma` | [prod_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-prod--3010dac7dec3891524457411.md) | 119 | `result-track:3010dac7dec3891524457411e3368634c5ea0a1232aecc3ee25dc5e700deef1c` |
| 18 | `lemma` | [map_fst_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-fst-prod--8fa4ca4de0640160f9ff350e.md) | 122 | `result-track:8fa4ca4de0640160f9ff350e769cf57bf0bfb2697edfb6e94687290d0725d7cb` |
| 19 | `lemma` | [map_snd_prod](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-snd-prod--6bedba652f72591c78689766.md) | 128 | `result-track:6bedba652f72591c78689766f0b97d102e3361501370fb6554008ce7c45278f9` |
| 20 | `lemma` | [map_prod_map](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/map-prod-map--5d97e442b554b230dc30ac8f.md) | 133 | `result-track:5d97e442b554b230dc30ac8f108b4d0d37de01817f7f9463209834197503bb0f` |
| 21 | `lemma` | [prod_swap](../../../../../mathematics/Analysis/MeasureTheory/FiniteMeasureProd/Variant5f818b28ba6e683c2348ff557dc82ab98c256a3bc5f13324bc3bc0f1de75fbd9.lean/declarations/prod-swap--ad1a1ac27932f5c371043505.md) | 141 | `result-track:ad1a1ac27932f5c3710435055042299dbe8fd5322cf34d83a5ad9c2f285348e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
