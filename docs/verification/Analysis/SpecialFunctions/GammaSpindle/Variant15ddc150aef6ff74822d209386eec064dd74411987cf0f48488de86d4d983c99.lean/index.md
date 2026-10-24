# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaSpindle.Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3830ee6d5869dd3e096bccfadb544f35a63125f0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3830ee6d5869dd3e096bccfadb544f35a63125f0`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.DirichletCharacterProfile` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Reflection` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimitiveCharacter](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/primitivecharacter--26df8a6fdac082d79cfb8b6f.md) | 40 | `declaration-track:26df8a6fdac082d79cfb8b6f84cec42f9c5bafc42db798cd52e3e4ab5f574a0c` |
| 2 | `def` | [conductorScale](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/conductorscale--aa45dd62d7070b2fa2f9c0ad.md) | 43 | `declaration-track:aa45dd62d7070b2fa2f9c0adb2742af0e1caf71992936dd7957e084b4a65a59f` |
| 3 | `theorem` | [conductorScale_pos](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/conductorscale-pos--f88e5ad315a4ad9e6afda65f.md) | 46 | `result-track:f88e5ad315a4ad9e6afda65fa9dd1123c504dc2277144757fa3b982a571c24b3` |
| 4 | `theorem` | [conductorScale_conjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/conductorscale-conjugate--be1263926290c1db6e7d31e0.md) | 51 | `result-track:be1263926290c1db6e7d31e0007c41a344438a03ed9d1ea46c21cbe76cca2e21` |
| 5 | `def` | [parityScalar](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/parityscalar--f9f4e392234a33a85f8a3e21.md) | 56 | `declaration-track:f9f4e392234a33a85f8a3e21e883ee024bdf51a97466b08023bc2efb6aa2fd2a` |
| 6 | `def` | [gammaFactor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammafactor--f24225b8d8f620cfd5f7fe83.md) | 64 | `declaration-track:f24225b8d8f620cfd5f7fe8370dd8d3a24b94b51dfad29bd7b6b3623478d0132` |
| 7 | `theorem` | [gammaFactor_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammafactor-conj--b8f9d8e746405b04058fb2a4.md) | 69 | `result-track:b8f9d8e746405b04058fb2a46517ccf14ce49de9dbb2d9cdf94734fffd35139c` |
| 8 | `theorem` | [gammaFactor_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammafactor-characterconjugate--f2f63dd4ea3859510ebd062c.md) | 86 | `result-track:f2f63dd4ea3859510ebd062c0a293f34df072674f3d361dc0ab0cf3c2a3109fe` |
| 9 | `def` | [criticalLine](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/criticalline--133475e0d34ce6756868c997.md) | 92 | `declaration-track:133475e0d34ce6756868c9979b9c2a42b2855a5520b5e286c1e9172c0148a8b1` |
| 10 | `theorem` | [criticalLine_neg](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/criticalline-neg--b7256a77ac7e78c5cdcaa2da.md) | 95 | `result-track:b7256a77ac7e78c5cdcaa2dabf6bc44144eabd354b32b549878698f268caddaf` |
| 11 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/digamma-conj--6325a0fa0cc7764c7ec0d42d.md) | 104 | `result-track:6325a0fa0cc7764c7ec0d42de296276180a72055b657c42dc40a02382faec052` |
| 12 | `def` | [criticalGammaFactor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/criticalgammafactor--40873a0c654d01479ff7078a.md) | 122 | `declaration-track:40873a0c654d01479ff7078aa13ed74045af46bca65d1d5e95b822a195fe9ce9` |
| 13 | `theorem` | [criticalArgument_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/criticalargument-re-pos--960bd89bd0c83f475bdd89f4.md) | 125 | `result-track:960bd89bd0c83f475bdd89f4481d1d1b35ddede43739b0415981ffdba5e8108c` |
| 14 | `theorem` | [criticalGammaFactor_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/criticalgammafactor-ne-zero--73c4efca1a9b46dde6aa654f.md) | 135 | `result-track:73c4efca1a9b46dde6aa654fbb180580debfc4cad6dac6585e74d36db0f03f60` |
| 15 | `def` | [gammaRotor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammarotor--1b58e72c398d7512769afc7f.md) | 146 | `declaration-track:1b58e72c398d7512769afc7fb29d15980479d3d823bc41d28dbea9445e5fcc57` |
| 16 | `theorem` | [gammaRotor_unitary](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammarotor-unitary--3c02283ac4893a8ff437f0ef.md) | 150 | `result-track:3c02283ac4893a8ff437f0ef7a47958a80f9eb2e814a3d0927ff6939305f0203` |
| 17 | `theorem` | [gammaRotor_eq_reflected_factor](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammarotor-eq-reflected-factor--4272d53f104512c346479cc7.md) | 157 | `result-track:4272d53f104512c346479cc7f126dd5a2cdf918dd6788c3176c34fe86fb7cab8` |
| 18 | `def` | [gammaSpindleProfile](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindleprofile--685f56a13cc21516f7e1f676.md) | 166 | `declaration-track:685f56a13cc21516f7e1f6762d8d0ccd163624b25422947bbd36d6ec9f57d22d` |
| 19 | `theorem` | [gammaSpindleProfile_real](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindleprofile-real--61eff0d7bb873bc780149ba0.md) | 173 | `result-track:61eff0d7bb873bc780149ba03a11404ca533cedf93fc93add7f745a3917eacf5` |
| 20 | `theorem` | [gammaSpindleProfile_even](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindleprofile-even--96a61a1af725f99e5b5adc64.md) | 178 | `result-track:96a61a1af725f99e5b5adc64ce957bd5cb2e17ec0660141461be8e780d1ed5a8` |
| 21 | `theorem` | [gammaSpindleProfile_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindleprofile-characterconjugate--8db09ba10a026402b9d29eed.md) | 194 | `result-track:8db09ba10a026402b9d29eed775c2d42eb141e5ca0703520dad36a9fe683d4a2` |
| 22 | `def` | [boundedGammaSymbol](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/boundedgammasymbol--057b5285ba49cf64bf88fc72.md) | 200 | `declaration-track:057b5285ba49cf64bf88fc72d4ffd9559ae4461c4782848ebbf1389f94f30872` |
| 23 | `theorem` | [gammaSpindle_norm_le_one](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindle-norm-le-one--58b6380b6af22edc425e5885.md) | 205 | `result-track:58b6380b6af22edc425e5885ed63e6e856e7b895524bc2a6bf4a504221ec60f3` |
| 24 | `def` | [GammaSpindleDirac](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindledirac--6fd2e78a4fd8869b5746c999.md) | 218 | `declaration-track:6fd2e78a4fd8869b5746c99957eb39310d3364d86b7bffd76605f05583760c4e` |
| 25 | `theorem` | [gammaSpindleDirac_selfAdjoint](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindledirac-selfadjoint--87ff919af202525c6c076929.md) | 225 | `result-track:87ff919af202525c6c076929756ea6dccfe6736c013cc98a62e2004b6f2e9c45` |
| 26 | `theorem` | [gammaSpindleDirac_characterConjugate](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindledirac-characterconjugate--579b2e83501932bec303cb67.md) | 235 | `result-track:579b2e83501932bec303cb676bdb157baa2e170795d46bb35b3435c683e73948` |
| 27 | `theorem` | [gammaSpindleDirac_sq](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindledirac-sq--c88916e8377a4fe34118bb4c.md) | 241 | `result-track:c88916e8377a4fe34118bb4cde0efb5f125aa1d0c69d87dd63bbc12509ebfcdd` |
| 28 | `theorem` | [gammaSpindle_square_nonnegative](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/gammaspindle-square-nonnegative--6a7302dce9dc1e872fee8479.md) | 255 | `result-track:6a7302dce9dc1e872fee8479261ddb712640647664f298293c2e95878fe93d1a` |
| 29 | `structure` | [ArchimedeanGammaSpindle](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/archimedeangammaspindle--b116919dd97a81f60bd9ce4d.md) | 262 | `declaration-track:b116919dd97a81f60bd9ce4d95f64a4f05f6250d9bb86b5f6f9261027f3129fb` |
| 30 | `def` | [canonicalArchimedeanGammaSpindle](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/canonicalarchimedeangammaspindle--ef9e965a7960ed043cab662a.md) | 272 | `declaration-track:ef9e965a7960ed043cab662a5e5e7eb46b4acb00ab3db92d5c8105f8f3ffb6c9` |
| 31 | `structure` | [AnalyticGammaSpindleCapability](../../../../../mathematics/Analysis/SpecialFunctions/GammaSpindle/Variant15ddc150aef6ff74822d209386eec064dd74411987cf0f48488de86d4d983c99.lean/declarations/analyticgammaspindlecapability--fb3e4ec072e92fab60fb4235.md) | 285 | `declaration-track:fb3e4ec072e92fab60fb423504d0ccbaee8ea1a5c33ca11f2a896b158f0a8fbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
