# Verification target: GRWTSK.Analysis.MeasureTheory.Prod.Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6235d063a20206fcf20a4db10f60203df6b95d4c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Measure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasurableEquiv.shearMulRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurableequiv-shearmulright--3eb225166fe3513e9335e10a.md) | 56 | `declaration-track:3eb225166fe3513e9335e10a6d5a5c36259b74a1fe65e60bed5aa92d7aae4503` |
| 2 | `def` | [MeasurableEquiv.shearDivRight](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurableequiv-sheardivright--d4d73b7fbf99cce3ccbc08e2.md) | 66 | `declaration-track:d4d73b7fbf99cce3ccbc08e2e8aead1a2801d4a1d9b77a7516faa164618f9c85` |
| 3 | `theorem` | [measurePreserving_prod_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-mul--97d9cb1b122032300d623d5d.md) | 86 | `result-track:97d9cb1b122032300d623d5d8b6ad9cdc7c298a4cbc6a9925404487d3caf514f` |
| 4 | `theorem` | [measurePreserving_prod_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-mul-swap--ad52289401cc1d4601a9848e.md) | 98 | `result-track:ad52289401cc1d4601a9848ef562627688347082f001791d9a8fc650ad7e3f97` |
| 5 | `theorem` | [measurable_measure_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurable-measure-mul-right--c38509c48d97224895786d84.md) | 105 | `result-track:c38509c48d97224895786d84d1183fd376ec7db48fbc0778f61e40b30b87031d` |
| 6 | `theorem` | [measurePreserving_prod_inv_mul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-inv-mul--38c692d2b642891ad4c89398.md) | 124 | `result-track:38c692d2b642891ad4c89398cdfd206b5eacfb93dd18c945462f852e490ab511` |
| 7 | `theorem` | [measurePreserving_prod_inv_mul_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-inv-mul-swap--bffab0dcb4a76aca833aa1f1.md) | 137 | `result-track:bffab0dcb4a76aca833aa1f11523e0d825f0d9d1beff34ef616baab425d5321f` |
| 8 | `theorem` | [measurePreserving_mul_prod_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-mul-prod-inv--873f0608159525a0069b15bb.md) | 148 | `result-track:873f0608159525a0069b15bb48fe97c501b2844341263762ebf7f1b20477e09a` |
| 9 | `theorem` | [quasiMeasurePreserving_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-inv--28c8c50235001d0eaaa6c99b.md) | 158 | `result-track:28c8c50235001d0eaaa6c99b35a91fe55445217bded624f987fd880d5bbb3114` |
| 10 | `theorem` | [measure_inv_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-inv-null--11054ac9b20ce9cfa3e9007e.md) | 174 | `result-track:11054ac9b20ce9cfa3e9007e7b193d3e50af23084b639f6b5771c64d433126fb` |
| 11 | `theorem` | [inv_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/inv-absolutelycontinuous--12ce275dd35b9705bcff97d8.md) | 182 | `result-track:12ce275dd35b9705bcff97d801326746983412cdcc2cb2137b5f49427e26eb79` |
| 12 | `theorem` | [absolutelyContinuous_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/absolutelycontinuous-inv--ad65b4fd8daed78ddfc8308c.md) | 188 | `result-track:ad65b4fd8daed78ddfc8308c3c98c57b1f9c467f50b06ad36226103c0b147266` |
| 13 | `theorem` | [lintegral_lintegral_mul_inv](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/lintegral-lintegral-mul-inv--e6c9e8319575f6b8a61caec5.md) | 195 | `result-track:e6c9e8319575f6b8a61caec574d3fb0b9687dce2eaf061537c004ef3bcce8c06` |
| 14 | `theorem` | [measure_mul_right_null](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-mul-right-null--8bc3b0f540fdf5f48588a032.md) | 212 | `result-track:8bc3b0f540fdf5f48588a0322251081d3ab588b2689978886d4700bf08a267fa` |
| 15 | `theorem` | [measure_mul_right_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-mul-right-ne-zero--8eda5361b831c6c5af46f9c7.md) | 221 | `result-track:8eda5361b831c6c5af46f9c75722864caa71869fb902f836efcc9d46dce59106` |
| 16 | `theorem` | [absolutelyContinuous_map_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/absolutelycontinuous-map-mul-right--404a462a1af942e3040405e2.md) | 227 | `result-track:404a462a1af942e3040405e27bb1ed0e334dbc2ea845cb6d152939892c003159` |
| 17 | `theorem` | [absolutelyContinuous_map_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/absolutelycontinuous-map-div-left--f309ae1397d418b00f9a123d.md) | 234 | `result-track:f309ae1397d418b00f9a123dc1ea70731dc66a1b3e2999ab688dadfd1c836554` |
| 18 | `theorem` | [measure_mul_lintegral_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-mul-lintegral-eq--3e761ccd6c03b8a63e0455ce.md) | 244 | `result-track:3e761ccd6c03b8a63e0455ce855005cf03cbdd549468c9e0a719a1cc998f44d9` |
| 19 | `theorem` | [absolutelyContinuous_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/absolutelycontinuous-of-ismulleftinvariant--9932a15f0e1dd99e08d5fca4.md) | 266 | `result-track:9932a15f0e1dd99e08d5fca491d015f876a5180599d988b5c0d44062cd5ab7fa` |
| 20 | `theorem` | [ae_measure_preimage_mul_right_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/ae-measure-preimage-mul-right-lt-top--7486d0fe0e469afecef8e6bd.md) | 276 | `result-track:7486d0fe0e469afecef8e6bd93dc7cebe4a656a91d9d72dda4b401de267b1e6a` |
| 21 | `theorem` | [ae_measure_preimage_mul_right_lt_top_of_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/ae-measure-preimage-mul-right-lt-top-of-ne-zero--485ccf230c1fc250e6a506de.md) | 293 | `result-track:485ccf230c1fc250e6a506def973524b0b91c42fae26480b52572fb3dd560fcd` |
| 22 | `constant` | [&#96;c&#96;](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/c--c23dc97d419e71a1430a6006.md) | 316 | `declaration-track:c23dc97d419e71a1430a60066d6a3344a0d091c3172f57143e645c10172aa7d7` |
| 23 | `theorem` | [measure_lintegral_div_measure](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-lintegral-div-measure--d2cde78ae7957f96cb1c866c.md) | 322 | `result-track:d2cde78ae7957f96cb1c866c305d677a4ae63fcd15bba98e8f4ef099cea311e0` |
| 24 | `theorem` | [measure_mul_measure_eq](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-mul-measure-eq--1e849364bd86b53cbb014040.md) | 336 | `result-track:1e849364bd86b53cbb01404031091248107723b47b32c16b8dbc5ce8b11ff66d` |
| 25 | `theorem` | [measure_eq_div_smul](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measure-eq-div-smul--1f5954a4af799fe3222d1e9b.md) | 352 | `result-track:1f5954a4af799fe3222d1e9b7543970ac504c4151215c1d29d7e1896966ad704` |
| 26 | `theorem` | [measurePreserving_prod_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-mul-right--c6caa0ae234ebc70316d74ce.md) | 365 | `result-track:c6caa0ae234ebc70316d74cebef6bcca2bbc435d57232de0c63cd5d026ddff24` |
| 27 | `theorem` | [measurePreserving_prod_mul_swap_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-mul-swap-right--9ec89750c69c6699b3227531.md) | 375 | `result-track:9ec89750c69c6699b322753100292316ecc17e68aaceb8b725543bcc02236018` |
| 28 | `theorem` | [measurePreserving_mul_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-mul-prod--156f984a54e7be09a1d3337f.md) | 384 | `result-track:156f984a54e7be09a1d3337fbf47c8216c71db2493beab03724dafe61b7337c0` |
| 29 | `theorem` | [measurePreserving_prod_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-div--eee01121586f6fd72530fa4d.md) | 394 | `result-track:eee01121586f6fd72530fa4d597151ee06090fa69e22baf48a4a26d7e20850ac` |
| 30 | `theorem` | [measurePreserving_prod_div_swap](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-prod-div-swap--711e945c235519accf8be4f1.md) | 403 | `result-track:711e945c235519accf8be4f18d54cf34c54d2791d52990f0c4d4669093af98a9` |
| 31 | `theorem` | [measurePreserving_div_prod](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-div-prod--7c71fd33cf6cf56a01b6655f.md) | 412 | `result-track:7c71fd33cf6cf56a01b6655f7d7c59385a8d7a34c2cab2d21878f3948ce98e1f` |
| 32 | `theorem` | [measurePreserving_mul_prod_inv_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/measurepreserving-mul-prod-inv-right--39c241a2f6f14fb5d060b45d.md) | 421 | `result-track:39c241a2f6f14fb5d060b45d4b455c796100a96538632ab279d7ca2c69bb0d63` |
| 33 | `theorem` | [quasiMeasurePreserving_inv_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-inv-of-right-invariant--636a71811adea67936c848ab.md) | 437 | `result-track:636a71811adea67936c848ab20700870a8b13081ca61276b60240798bd31b52d` |
| 34 | `theorem` | [quasiMeasurePreserving_div_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-div-left--ea8c988feff0a14a422ffeca.md) | 447 | `result-track:ea8c988feff0a14a422ffecafca555dfa2807959fb67e1b952b3cac3164a9fb7` |
| 35 | `theorem` | [quasiMeasurePreserving_div_left_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-div-left-of-right-invariant--76655fa95ea8ddf73004264f.md) | 456 | `result-track:76655fa95ea8ddf73004264fd432154118aadc9174c377f5e4c430ef7cd1cfb0` |
| 36 | `theorem` | [quasiMeasurePreserving_div_of_right_invariant](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-div-of-right-invariant--7ff9abd50a5c7131f1f084f5.md) | 466 | `result-track:7ff9abd50a5c7131f1f084f5906e196e87ad77afff9b3f2a1b42d9e4b7af6cbf` |
| 37 | `theorem` | [quasiMeasurePreserving_div](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-div--0c08844a45095eaa0e6d12c8.md) | 474 | `result-track:0c08844a45095eaa0e6d12c8c069b31aa510aa0a396bd4bce2585aec0e5176dc` |
| 38 | `theorem` | [quasiMeasurePreserving_mul_right](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-mul-right--e3118421c01538aebe8c4204.md) | 486 | `result-track:e3118421c01538aebe8c4204be6d0a29705e3d99efb0a10368b22004580a0cad` |
| 39 | `theorem` | [quasiMeasurePreserving_mul_left](../../../../../mathematics/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/declarations/quasimeasurepreserving-mul-left--2d7d856019ff84daa0037963.md) | 498 | `result-track:2d7d856019ff84daa003796341942e4d5abb76c2f79e5b472cd8ba93050c5919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
