# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionalEquation.Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cd1cdac42fa5097779e9b49427b8a1613bb460a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cd1cdac42fa5097779e9b49427b8a1613bb460a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterSheetFlip](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/charactersheetflip--fe0417e066668bcc2ce150fa.md) | 30 | `declaration-track:fe0417e066668bcc2ce150fabbc956de2349c118f9fc8b09ae0ecee2e8eaf366` |
| 2 | `theorem` | [characterSheetFlip_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/charactersheetflip-involutive--fba88139d369366d025608b1.md) | 33 | `result-track:fba88139d369366d025608b1fb07623e612053489645f18a6408e8b0e5387ad1` |
| 3 | `def` | [spindleSpinSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/spindlespinsign--4768f4560195dac90692921f.md) | 38 | `declaration-track:4768f4560195dac90692921fdf071d874703c87d2a2030eb55536498b5e6e6c7` |
| 4 | `theorem` | [spindleSpinSign_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/spindlespinsign-norm--dc027770ae609aac6c2bb800.md) | 42 | `result-track:dc027770ae609aac6c2bb80047bdf3a67b21d8c409801135cfdc26e36bc46db6` |
| 5 | `theorem` | [spindleSpinSign_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/spindlespinsign-conj--50af454ae0094578e080b550.md) | 47 | `result-track:50af454ae0094578e080b550855dd1f7b68698d4dfa4975e7edaf4b97a9f03e2` |
| 6 | `theorem` | [spindleSpinSign_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/spindlespinsign-sq--7ae8d3dec4fb2f8cc942f015.md) | 52 | `result-track:7ae8d3dec4fb2f8cc942f0159afb4f2703bbd67676c03a5ad89c00966192564d` |
| 7 | `structure` | [FunctionalEquationDatum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationdatum--0f9e8c1b8cc3b5ed8949dc21.md) | 57 | `declaration-track:0f9e8c1b8cc3b5ed8949dc212bbdb788c68268f0ed02ca6f285c9698d71bd3ba` |
| 8 | `abbrev` | [OrbitHilbert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/orbithilbert--561bebbbaa06baa109c7c045.md) | 72 | `declaration-track:561bebbbaa06baa109c7c045c605d0d1efc2f61168a9ddc37a210990e366a857` |
| 9 | `def` | [coordinateReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/coordinatereflection--d851053b178d3166e3cc146d.md) | 76 | `declaration-track:d851053b178d3166e3cc146dd6eedfa6014f41de8e270d098efd18f66f35f0dc` |
| 10 | `theorem` | [coordinateReflection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/coordinatereflection-apply--0172d184afdfeaea3feee791.md) | 83 | `result-track:0172d184afdfeaea3feee79148b4ada38b9fe44d8a49a30fdcb0809627259ab8` |
| 11 | `theorem` | [coordinateReflection_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/coordinatereflection-involutive--fe98ab8e19d5b614022a7404.md) | 93 | `result-track:fe98ab8e19d5b614022a7404d5772f3cc9891f21eca05e64ff9e0795ee24eb92` |
| 12 | `theorem` | [rootNumber_mul_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/rootnumber-mul-conj--33c51769632a770ed4ac3cb3.md) | 101 | `result-track:33c51769632a770ed4ac3cb3252cc198f21f4dd90a0d8f3deb7e6fcc34fb4444` |
| 13 | `def` | [functionalEquationRealStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure--21f78f7dd09d35ffa10ff41b.md) | 112 | `declaration-track:21f78f7dd09d35ffa10ff41b0034c631e417f225ed7714326d643edfdb06a526` |
| 14 | `theorem` | [functionalEquationRealStructure_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-apply--9df1feeb504a1d771d1d2c51.md) | 120 | `result-track:9df1feeb504a1d771d1d2c519a9670129bc542da9bc391470ab1ee19d6576fbf` |
| 15 | `theorem` | [functionalEquationRealStructure_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-add--4d193a19319acc8dcd1bcb22.md) | 129 | `result-track:4d193a19319acc8dcd1bcb22f7fa79065fe4512f8c993c25e9c1c74658116bed` |
| 16 | `theorem` | [functionalEquationRealStructure_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-smul--b2e6a125f24c609865c14353.md) | 138 | `result-track:b2e6a125f24c609865c14353fbbbc93be56c4c4d4d54bd4f87333db944680cb4` |
| 17 | `theorem` | [functionalEquationRealStructure_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-norm--7a06c1d1fc412b89ede28d40.md) | 147 | `result-track:7a06c1d1fc412b89ede28d40194409b9890c7333f656a9d6631a263f4cc2d04e` |
| 18 | `theorem` | [functionalEquationRealStructure_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-involutive--40415f66746eaccca207e20a.md) | 162 | `result-track:40415f66746eaccca207e20ab6feb18365fe644b69ff5db71793d37898ab0728` |
| 19 | `structure` | [IsFiniteAntiunitary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/isfiniteantiunitary--beab4c7c61d49262d89fedc4.md) | 177 | `declaration-track:beab4c7c61d49262d89fedc43b2441f7d952b23c24b5b28604093d4ee4c6170b` |
| 20 | `theorem` | [functionalEquationRealStructure_antiunitary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-antiunitary--031e8ed420b0801be7645113.md) | 186 | `result-track:031e8ed420b0801be76451139b5bfa6f53c092da823b94ed64b8370e435fbc8c` |
| 21 | `def` | [orbitGammaAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/orbitgammaaction--8c5bf5d80e761aa9d1dabdef.md) | 197 | `declaration-track:8c5bf5d80e761aa9d1dabdef33cd9ea7465da04a290bf6914d9ab6cd8912fda4` |
| 22 | `theorem` | [functionalEquationRealStructure_intertwines](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionalEquation/Variantf12e27b9353d0d006415eb52e4db738d9ad1581209afa994bb63d615f3f49412.lean/declarations/functionalequationrealstructure-intertwines--7c7df1b27b3103a1b5b38d33.md) | 208 | `result-track:7c7df1b27b3103a1b5b38d33085327e9974d5a80962aac793ea1209252eea284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
