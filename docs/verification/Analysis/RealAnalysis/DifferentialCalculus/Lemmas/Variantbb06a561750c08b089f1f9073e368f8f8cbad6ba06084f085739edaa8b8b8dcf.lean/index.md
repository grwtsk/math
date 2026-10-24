# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Lemmas.Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8247322859a243c1f00460bf64b74e90e031ad6a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8247322859a243c1f00460bf64b74e90e031ad6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iteratedDerivWithin_congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-congr--2820d21d1b8aaa0b408e5286.md) | 28 | `result-track:2820d21d1b8aaa0b408e52867b651a07f75d644daa1bb3696735819450d593fc` |
| 2 | `theorem` | [iteratedDerivWithin_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-add--328ebc2ff3d1bc0037108015.md) | 38 | `result-track:328ebc2ff3d1bc003710801538c19df5bec5cb96253160bf27d548cf03adb687` |
| 3 | `theorem` | [iteratedDerivWithin_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-const-add--1d6cc92b2fd98a07d511ef64.md) | 45 | `result-track:1d6cc92b2fd98a07d511ef6460899904e0c664ede5c37d502b89896b515b619b` |
| 4 | `theorem` | [iteratedDerivWithin_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-const-sub--0ffe2c97b7578784f2a66380.md) | 52 | `result-track:0ffe2c97b7578784f2a66380ee7cdff39ab6bf487c3151f5f88fae8877088601` |
| 5 | `theorem` | [iteratedDerivWithin_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-const-smul--2d15e6cff67de373fad10bd8.md) | 64 | `result-track:2d15e6cff67de373fad10bd80a866a39be4b49180b62f20206648515a4720b5a` |
| 6 | `theorem` | [iteratedDerivWithin_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-const-mul--fc3562a53a67765d25fc208f.md) | 71 | `result-track:fc3562a53a67765d25fc208f70eaa4b84f00ae51d6ef7ebec0fd44ed7866340f` |
| 7 | `theorem` | [iteratedDerivWithin_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-neg--dd674d7c4487da16e2f6293c.md) | 77 | `result-track:dd674d7c4487da16e2f6293ca2b8e7d7043ea867def7931256af5db72f21e800` |
| 8 | `theorem` | [iteratedDerivWithin_neg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-neg--f809079dd662a427b2dfe0a5.md) | 88 | `result-track:f809079dd662a427b2dfe0a5fe1bf3fae84f161149f1ef3c1c96eb655e8bca50` |
| 9 | `theorem` | [iteratedDerivWithin_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-sub--84ce585fd15a97f56434809d.md) | 94 | `result-track:84ce585fd15a97f56434809dde10f402b7b5f492e408c8fa5bee8da6e030ca02` |
| 10 | `theorem` | [iteratedDerivWithin_comp_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderivwithin-comp-const-smul--e3e0b22ea1a42e02e4d194c1.md) | 101 | `result-track:e3e0b22ea1a42e02e4d194c1243235695f1c7bc6672cfc8180ceac01d0754c33` |
| 11 | `lemma` | [iteratedDeriv_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-add--c213f91eb1a8c56d140e8c3c.md) | 129 | `result-track:c213f91eb1a8c56d140e8c3c0d2c54e0c0f95f7329abc35959c8daf31ee62358` |
| 12 | `theorem` | [iteratedDeriv_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-const-add--a00d329180f98244311e588b.md) | 134 | `result-track:a00d329180f98244311e588b4014b0d97a56689ad33f1cbb21dd85ba6f3c081c` |
| 13 | `theorem` | [iteratedDeriv_const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-const-sub--8b64ba50f9c094356d39dde5.md) | 138 | `result-track:8b64ba50f9c094356d39dde56e3872144729d34c410a162acfb403d3f3897d5c` |
| 14 | `lemma` | [iteratedDeriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-neg--2920b82adf57b0ad1e643063.md) | 142 | `result-track:2920b82adf57b0ad1e643063a4fd78058c6647d9fe618513e2817791d3dab90c` |
| 15 | `lemma` | [iteratedDeriv_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-sub--03396724b6aa78c2795687a1.md) | 146 | `result-track:03396724b6aa78c2795687a17ac7937c53a323b6b07dde05d72528119ee9cbfb` |
| 16 | `theorem` | [iteratedDeriv_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-const-smul--4f8335876214b876f62da1cf.md) | 151 | `result-track:4f8335876214b876f62da1cf624d0c0bcb1e89e8078a3209df3c585565157cd5` |
| 17 | `theorem` | [iteratedDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-const-mul--ecea747fddb6a40b13e09447.md) | 157 | `result-track:ecea747fddb6a40b13e09447f41eeedb2bda7cf6908c69a13554b20430f39fea` |
| 18 | `theorem` | [iteratedDeriv_comp_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-comp-const-smul--48c28e25427d224e7d7f53c5.md) | 163 | `result-track:48c28e25427d224e7d7f53c552e31499ae6c14a14760d1d52fa45889cae14505` |
| 19 | `theorem` | [iteratedDeriv_comp_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-comp-const-mul--8cb575078896f4098a90e61a.md) | 170 | `result-track:8cb575078896f4098a90e61a16d396ab5dccd1458bf69df7f0c344d12fce11fa` |
| 20 | `lemma` | [iteratedDeriv_comp_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-comp-neg--41d9b89fec601e5ec2fd1a15.md) | 174 | `result-track:41d9b89fec601e5ec2fd1a15b08a900b10a97ed9a4ea8598f38b50411a02d09b` |
| 21 | `lemma` | [Filter.EventuallyEq.iteratedDeriv_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/filter-eventuallyeq-iteratedderiv-eq--0742506e81e8d8f98fdca4d4.md) | 185 | `result-track:0742506e81e8d8f98fdca4d43440c38180fa357d3778a2e600c7ce803407ecd7` |
| 22 | `lemma` | [Set.EqOn.iteratedDeriv_of_isOpen](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/set-eqon-iteratedderiv-of-isopen--47019e5929551b5af66f5ec4.md) | 190 | `result-track:47019e5929551b5af66f5ec4d464e306a32c99d5c04d19e33081420b5dc8d87f` |
| 23 | `lemma` | [iteratedDeriv_comp_const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-comp-const-add--f2fdccad5c9846ea11e0d36e.md) | 207 | `result-track:f2fdccad5c9846ea11e0d36e463ec5d7cc9080fb2ad0bee4ceb274d39340f63a` |
| 24 | `lemma` | [iteratedDeriv_comp_add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Lemmas/Variantbb06a561750c08b089f1f9073e368f8f8cbad6ba06084f085739edaa8b8b8dcf.lean/declarations/iteratedderiv-comp-add-const--300bb006d3dafeedeea590a9.md) | 215 | `result-track:300bb006d3dafeedeea590a943029c983ddb57c3725fbcf224202dcdd00e998f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
