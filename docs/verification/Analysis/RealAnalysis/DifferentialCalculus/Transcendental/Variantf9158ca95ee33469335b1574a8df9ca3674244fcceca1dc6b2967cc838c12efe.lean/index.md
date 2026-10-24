# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Transcendental.Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d541b49ed7d0224a11b2215b1f4531a5bc888f3d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d541b49ed7d0224a11b2215b1f4531a5bc888f3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sin--95b02ebe1b657f9bbbdea2e6.md) | 50 | `declaration-track:95b02ebe1b657f9bbbdea2e6e0b50a383d086193cdb9836a33f38419de88f4a0` |
| 2 | `def` | [cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/cos--98075fccd631badca4e805e1.md) | 55 | `declaration-track:98075fccd631badca4e805e11e778049a26de96063f2c3efeac17737f529f8f1` |
| 3 | `def` | [exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/exp--6357f108a9647c0cf3ad49a0.md) | 60 | `declaration-track:6357f108a9647c0cf3ad49a044cef85ce5cf357e80746177fa3821b7b30e68be` |
| 4 | `def` | [unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/unitinterval--6296667320631b2221c1748b.md) | 65 | `declaration-track:6296667320631b2221c1748becb60b4c87fc6abfcc616a3908700b7233fda74f` |
| 5 | `theorem` | [arctan_deriv_factor_mem_unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/arctan-deriv-factor-mem-unitinterval--057a5222329c21a2413d9cd3.md) | 68 | `result-track:057a5222329c21a2413d9cd386f2a60fba0c3835337acdfbb6cbaac9ef930fe9` |
| 6 | `theorem` | [arsinh_deriv_factor_mem_unitInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/arsinh-deriv-factor-mem-unitinterval--c8827f4cc35cafcf8032e4fa.md) | 78 | `result-track:c8827f4cc35cafcf8032e4faf1d44ce828932aaa44c5231d14f9307ecfa5faff` |
| 7 | `def` | [atan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/atan--5aa168ccbf45e5dc57c6ff93.md) | 93 | `declaration-track:5aa168ccbf45e5dc57c6ff93194b5ef1294f978f28ffbcfbc8acd9b8f349afe7` |
| 8 | `def` | [arsinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/arsinh--2ab9ef3c6bb2c9661edab441.md) | 100 | `declaration-track:2ab9ef3c6bb2c9661edab441735f57f78608ec8486773cc9a90d4a15d643b996` |
| 9 | `def` | [sinh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sinh--43d5ea421a9769cac533439a.md) | 107 | `declaration-track:43d5ea421a9769cac533439a75ebed3f743263499b33f52e5b0c90a39310a487` |
| 10 | `def` | [cosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/cosh--25d61d5d054d6f78488a3362.md) | 113 | `declaration-track:25d61d5d054d6f78488a3362ac9fd00608a889e756b41bd030a3b91ba24d779a` |
| 11 | `def` | [tanh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/tanh--2652644683c660862cd34919.md) | 120 | `declaration-track:2652644683c660862cd349191be743924476c1a9897ff1f7a0cbeb051c9d43ba` |
| 12 | `def` | [two_div_sqrt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/two-div-sqrt-pi--6941de00042606d4e366bdb1.md) | 126 | `declaration-track:6941de00042606d4e366bdb1cd7b22c39ed83960af9323e9c24b1c4d33413edf` |
| 13 | `def` | [erf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/erf--56f8a3be85cdea84c44e26c9.md) | 131 | `declaration-track:56f8a3be85cdea84c44e26c968cc19eb374f54aac2ce11c24f56db727d22e2c6` |
| 14 | `def` | [erfCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/erfcore--01785fa5bc77c1b883783608.md) | 141 | `declaration-track:01785fa5bc77c1b8837836083f6946976290d442adf01822ca86e94b3b9823d9` |
| 15 | `def` | [sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sqrt--09f7951800633aad732eed4e.md) | 154 | `declaration-track:09f7951800633aad732eed4e013c323bd285406df34e1934e2b6ae2ad500bcfa` |
| 16 | `def` | [sincDerivBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sincderivbound--901dc05f03a24f58994df713.md) | 161 | `declaration-track:901dc05f03a24f58994df713c64775de7aa4b276a918593db6a412de4a1ddef5` |
| 17 | `def` | [sinc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sinc--010525d33250f07291984c13.md) | 166 | `declaration-track:010525d33250f07291984c134ec7c821d4a20d415af989261ece3d94cb83998c` |
| 18 | `def` | [atanh?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/atanh--b7000800ab4a8bf753c3d764.md) | 175 | `declaration-track:b7000800ab4a8bf753c3d76456ad2796931eb877f197e273f0b1e45b9e5d120f` |
| 19 | `def` | [inv?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/inv--40f8de75e948fe2c68dc9e73.md) | 196 | `declaration-track:40f8de75e948fe2c68dc9e73f4cfd6427d1adcdc211912df22b60479025ed0fe` |
| 20 | `def` | [log?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/log--1fa5d13fe6a3a917460fd41f.md) | 208 | `declaration-track:1fa5d13fe6a3a917460fd41fb66efe312a8a73101834ce32eefd8ea8974d60b1` |
| 21 | `def` | [sqrtDerivCoefBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sqrtderivcoefbound--2c1c15362e4059e4653bc00a.md) | 226 | `declaration-track:2c1c15362e4059e4653bc00ab0b6416c627c8dd376c274249961634979610aae` |
| 22 | `theorem` | [sqrtDerivCoef_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sqrtderivcoef-bound--e4815efc7c21c44da74b9a38.md) | 235 | `result-track:e4815efc7c21c44da74b9a386cc8c0c73d93dc7ac5b4c1f3eda4229925f798b5` |
| 23 | `def` | [sqrt?](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variantf9158ca95ee33469335b1574a8df9ca3674244fcceca1dc6b2967cc838c12efe.lean/declarations/sqrt--0ce936704e9b7acf83e7aaf1.md) | 288 | `declaration-track:0ce936704e9b7acf83e7aaf1f55d03a90b8e1de8e9daadff82c88b238bea45c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
