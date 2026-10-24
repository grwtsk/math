# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative05.Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d42b9105e453321330d46696196e5999cf8b8c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d42b9105e453321330d46696196e5999cf8b8c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realrampantiderivative--a19b73a6dd2e855a91811c97.md) | 21 | `declaration-track:a19b73a6dd2e855a91811c973d32f53fa04e5b3d18f15ddd81ec21275bea6855` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realrampantiderivative-hasderivat--b10b68efe7fb58dbbb2fcb1a.md) | 24 | `result-track:b10b68efe7fb58dbbb2fcb1a36198aaa33332072043d25f935c59d44611ae314` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realrampantiderivative-tendsto--fd3c070705112f6339f6cd77.md) | 34 | `result-track:fd3c070705112f6339f6cd77786a62442222f89fc08d7dfe0c0fb55a48de9f25` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realramp-tail-integrable--5fc5ac2f7a003224c2938fb2.md) | 48 | `result-track:5fc5ac2f7a003224c2938fb2d3e89554572d5521795a0bfa8c25a94c516d3062` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realramp-tail-integral--b228ebc10daaad2b3eb4be56.md) | 56 | `result-track:b228ebc10daaad2b3eb4be560950f7add4470ab46e3706c5e10cb53e49dcc44a` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/zeroon-lower-integrable--efb907a4e06189d0b232fde2.md) | 63 | `result-track:efb907a4e06189d0b232fde2b28e65222b5797d6d3ef7c7ae6b9ebece4ef826d` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realramp-integrable--bc3c4b018ba5b2fe7f29f33e.md) | 69 | `result-track:bc3c4b018ba5b2fe7f29f33e5f427160941787d8ab7425042b402d9ae6494795` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/realramp-integral--897a85401b165644e7144eff.md) | 79 | `result-track:897a85401b165644e7144effc5cefc8433a168ce41f61d581232cd8aab6dd637` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/complexramp-norm--b9f1ab8628e362406c8085b9.md) | 97 | `result-track:b9f1ab8628e362406c8085b9071ffa0bcc4da4993e3251fbfa308f3ca06e6622` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualsinglerieszramp-integrable--4b7cda20b2035f9620c4f7c2.md) | 106 | `result-track:4b7cda20b2035f9620c4f7c2a9bb6d62721720ea31ffb1fe37520643ce66b365` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualsinglerieszramp-integral-norm--fb8b629e37668e1a06f82f19.md) | 116 | `result-track:fb8b629e37668e1a06f82f19f071163e1f9736d102f39864d6c64a9e1e41a444` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/complexrampantiderivative--72428c03d68fcffd317c8b40.md) | 122 | `declaration-track:72428c03d68fcffd317c8b40506ac67454028a0ce58eaf5b66db3142cfa09d22` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/complexrampantiderivative-hasderivat--921bbe47f31152794cf73161.md) | 125 | `result-track:921bbe47f31152794cf73161f79f49ead1c8558547bdd7d9449f9bf3d4350834` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/complex-exp-monomial-zero--3238c8b8d9139925dae94323.md) | 140 | `result-track:3238c8b8d9139925dae943237c7e0528150047ea1d96c9ee4bd3141ea4660f4f` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/complexrampantiderivative-tendsto--d39e510730afe7593227bfa2.md) | 154 | `result-track:d39e510730afe7593227bfa2cb96cef76c31743d4c6b401838cfda6f4e2a15af` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualsinglerieszramp-integral--b46c4fdabf663431c01a8d5b.md) | 168 | `result-track:b46c4fdabf663431c01a8d5bef4d3f9e532e40cbc16014d063d88baa8fe5a2fe` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatom--28f85ca5fdaa24e2a8f22157.md) | 201 | `declaration-track:28f85ca5fdaa24e2a8f22157e25ad119820a2209b2b52295177f3cc3378b926d` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualmangoldtrieszlaplace--5dae20fff05c2bef20d3ca59.md) | 206 | `declaration-track:5dae20fff05c2bef20d3ca59f14296fca228d651515518525ed96fcf8a877605` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/atom-factor--58129f8f4a00190f02dec361.md) | 210 | `result-track:58129f8f4a00190f02dec361ad6faca69e40aa88b2affac410b67860d2fb3891` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatom-integrable--817c2a430cbb29aef9ad5596.md) | 219 | `result-track:817c2a430cbb29aef9ad5596632c72e9f79d6dbd995f664e9ed24cb201086708` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatom-integral-norm--45039bf081dc442a387f2fb3.md) | 237 | `result-track:45039bf081dc442a387f2fb3ecc1d82d2ea68b6dc1675f0d53aa562c54c1ef7b` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--a6e64699ec00b6227192efc8.md) | 273 | `result-track:a6e64699ec00b6227192efc8a1ec7da6441ea668378609d6aca8a232b41f0493` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatoms-tsum--51f4b42af5a6fff54d06ab91.md) | 284 | `result-track:51f4b42af5a6fff54d06ab917c79f871cc42cfdadcc089f32eb8059bfcbb513d` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszprimitive-continuous--49129db7ab80414bfe223885.md) | 309 | `result-track:49129db7ab80414bfe22388507379310203b734c01e186f9bee8588e8e65f9d5` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--795f253f859d85ad157ba144.md) | 328 | `result-track:795f253f859d85ad157ba144f940eaf80c7cd3074643503fabbc3513241b385a` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative05/Variant17ebaa7d95d3980ef8f2a137f0c8a75dc5618667c67ab2cada4e714232321fa6.lean/declarations/actualrieszlaplaceatoms-integral-tsum--d29b77b3d9eb2ff33d80a529.md) | 357 | `result-track:d29b77b3d9eb2ff33d80a529fddceebe7e841ebcab0a3aa56b5b8f7dd40099e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
