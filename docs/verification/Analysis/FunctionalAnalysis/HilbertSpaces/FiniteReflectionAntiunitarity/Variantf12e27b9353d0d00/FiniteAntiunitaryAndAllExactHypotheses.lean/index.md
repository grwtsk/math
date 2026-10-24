# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteReflectionAntiunitarity.Variantf12e27b9353d0d00.FiniteAntiunitaryAndAllExactHypotheses

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "671a225ffd4750d45f2e088c1a820910b44548a8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `671a225ffd4750d45f2e088c1a820910b44548a8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.GammaSpindle` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [characterSheetFlip](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/charactersheetflip--f73d7e4e496546ceab1b5b7f.md) | 48 | `declaration-track:f73d7e4e496546ceab1b5b7f420264949f5df33fbba5ba78652c935760177937` |
| 2 | `theorem` | [characterSheetFlip_involutive](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/charactersheetflip-involutive--5eeb03c043455d13f3e3d9ff.md) | 51 | `result-track:5eeb03c043455d13f3e3d9ff4443f547cbe3faed2cfec84505ed5175d93546ad` |
| 3 | `def` | [spindleSpinSign](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/spindlespinsign--c10dff8a50e0c7651033d63f.md) | 56 | `declaration-track:c10dff8a50e0c7651033d63f1c51306b6384f1b4721494baa2030b5406979363` |
| 4 | `theorem` | [spindleSpinSign_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/spindlespinsign-norm--f873c3ae6b7d9972ca0edb41.md) | 60 | `result-track:f873c3ae6b7d9972ca0edb41b5c9c125389e9ceedb9aa1d5991f785687b471cc` |
| 5 | `theorem` | [spindleSpinSign_conj](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/spindlespinsign-conj--e04f98e96c25fdb5e728f3d2.md) | 65 | `result-track:e04f98e96c25fdb5e728f3d27c8607352a988fdef1c17173db4d54291dfe2db9` |
| 6 | `theorem` | [spindleSpinSign_sq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/spindlespinsign-sq--adda4449eb8eed4f56cf91fe.md) | 70 | `result-track:adda4449eb8eed4f56cf91fe9ed196ffc53943afe44c9b740535c37216eabde1` |
| 7 | `structure` | [FunctionalEquationDatum](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationdatum--cd990fb428538bbe1a00cab6.md) | 75 | `declaration-track:cd990fb428538bbe1a00cab67cdcad0ecb56cce20d2bb99ee8190f147e7ef18a` |
| 8 | `abbrev` | [OrbitHilbert](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/orbithilbert--33ec3ba3308e55df1f9c1903.md) | 90 | `declaration-track:33ec3ba3308e55df1f9c190364c18caae60820345d2caf09ba9ffc4679c1510d` |
| 9 | `def` | [coordinateReflection](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/coordinatereflection--6138f98520ee0a0b5039905d.md) | 94 | `declaration-track:6138f98520ee0a0b5039905d3092dda6cfe96d137d5264b014a49eda1b1c10bd` |
| 10 | `theorem` | [coordinateReflection_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/coordinatereflection-apply--c547bb8bffdf2456a2987b03.md) | 101 | `result-track:c547bb8bffdf2456a2987b03313843b34958d7ac051ab71f5d80054afaef3e50` |
| 11 | `theorem` | [coordinateReflection_involutive](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/coordinatereflection-involutive--be5c4205453c8000e9be0d74.md) | 111 | `result-track:be5c4205453c8000e9be0d7452792788494441666148b953f421074db92caee2` |
| 12 | `theorem` | [rootNumber_mul_conj](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/rootnumber-mul-conj--3a203d9b81fc5b715a204682.md) | 119 | `result-track:3a203d9b81fc5b715a204682542a555facba79dbb19c481ad257e70e57b4ea3c` |
| 13 | `def` | [functionalEquationRealStructure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure--94f6758815b3c4d36ad952a8.md) | 130 | `declaration-track:94f6758815b3c4d36ad952a85f869f0cc5a6629eb5bc5b2926a3ecb9b42113cc` |
| 14 | `theorem` | [functionalEquationRealStructure_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-apply--b573bf48eb821da44ef2c131.md) | 138 | `result-track:b573bf48eb821da44ef2c131fe1628566675a6dbebfb51d50217af3cd3e66db4` |
| 15 | `theorem` | [functionalEquationRealStructure_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-add--73f4994252ad51c97c469a76.md) | 147 | `result-track:73f4994252ad51c97c469a7641e2404f70f769cc2990e8a8682b056fb4af0169` |
| 16 | `theorem` | [functionalEquationRealStructure_smul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-smul--c5cb52792759d8a3d03d1728.md) | 156 | `result-track:c5cb52792759d8a3d03d1728fc1b2c6d99508aacc4d8b7bcec27f52dde9772dc` |
| 17 | `theorem` | [functionalEquationRealStructure_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-norm--e4328165a670152c81a53c54.md) | 165 | `result-track:e4328165a670152c81a53c5415041910e24a9034c4c86144b6c14ea6e1b1e516` |
| 18 | `theorem` | [functionalEquationRealStructure_involutive](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-involutive--23a623468a096e75d7973746.md) | 180 | `result-track:23a623468a096e75d7973746250463f1ee21455cec522bfe81066099fcd0ea67` |
| 19 | `structure` | [IsFiniteAntiunitary](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/isfiniteantiunitary--4f8ee90cfc829f21af366d65.md) | 195 | `declaration-track:4f8ee90cfc829f21af366d65be9de1ef86f4baa5ed5241aef540760c3433638e` |
| 20 | `theorem` | [functionalEquationRealStructure_antiunitary](../../../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertSpaces/FiniteReflectionAntiunitarity/Variantf12e27b9353d0d00/FiniteAntiunitaryAndAllExactHypotheses.lean/declarations/functionalequationrealstructure-antiunitary--5de07aa62ba410e19223de1d.md) | 204 | `result-track:5de07aa62ba410e19223de1d97ec343da609c3d5cc8ccf983d91aded82e8f4d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
