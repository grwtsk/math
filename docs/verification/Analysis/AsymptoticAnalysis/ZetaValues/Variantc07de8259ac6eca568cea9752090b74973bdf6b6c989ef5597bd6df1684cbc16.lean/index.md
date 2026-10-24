# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaValues.Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f95b33707dcd13666be1867b4952fedf428dfe",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f95b33707dcd13666be1867b4952fedf428dfe`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.BernoulliPolynomials` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/macro-rules--9746f1d379c86d11aa5ffa0e.md) | 39 | `declaration-track:9746f1d379c86d11aa5ffa0e84ddd41b04e555e482c773e2a266082f73eab87a` |
| 2 | `def` | [bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifun--a4b03d8202c06a95130c4559.md) | 57 | `declaration-track:a4b03d8202c06a95130c455917bee1017aef5158fca56de611248c5e0cea6ceb` |
| 3 | `theorem` | [bernoulliFun_eval_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifun-eval-zero--a8a88ac03ab599831f8dc361.md) | 61 | `result-track:a8a88ac03ab599831f8dc361b29e7a80ae208d005e268fde57f683742f87234d` |
| 4 | `theorem` | [bernoulliFun_endpoints_eq_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifun-endpoints-eq-of-ne-one--e0d25f00333e82dbba222571.md) | 65 | `result-track:e0d25f00333e82dbba222571551764e9714d2adf47ebbd3877095443b2d6d89d` |
| 5 | `theorem` | [bernoulliFun_eval_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifun-eval-one--f0ba477aa5e8f4733b447bdd.md) | 71 | `result-track:f0ba477aa5e8f4733b447bddda21a15221355fda31196bbb0cceb13cae390969` |
| 6 | `theorem` | [hasDerivAt_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hasderivat-bernoullifun--5e19c088f47f707c5eb20860.md) | 79 | `result-track:5e19c088f47f707c5eb20860b719bccdf652560b3ba5eee1a6546b78a1961a8c` |
| 7 | `theorem` | [antideriv_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/antideriv-bernoullifun--a9b096e3f27dd01e7645fb9a.md) | 86 | `result-track:a9b096e3f27dd01e7645fb9aaa65af1840d3d6d0f63322869fe4df4ab55e2e46` |
| 8 | `theorem` | [integral_bernoulliFun_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/integral-bernoullifun-eq-zero--80917745efc32a93d969399b.md) | 93 | `result-track:80917745efc32a93d969399b52453e5ff5d9153c8596b8667f0131c596e41312` |
| 9 | `def` | [bernoulliFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifouriercoeff--1ab701f9555de51a087b4b9b.md) | 111 | `declaration-track:1ab701f9555de51a087b4b9bc0a303f3e8d9cfb8791d4af9b7879bfd74d7e08a` |
| 10 | `theorem` | [bernoulliFourierCoeff_recurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifouriercoeff-recurrence--8b241228954c60edf35a6167.md) | 116 | `result-track:8b241228954c60edf35a616720c8d4a48dc00e1a17b7157ac7d962d9bc76a863` |
| 11 | `theorem` | [bernoulli_zero_fourier_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoulli-zero-fourier-coeff--84ef982789d67ba414862d4c.md) | 134 | `result-track:84ef982789d67ba414862d4c9063d1c2e1f68cf48356b493ceb7cdd941671b20` |
| 12 | `theorem` | [bernoulliFourierCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifouriercoeff-zero--2633dbf85a1632a1f5536e05.md) | 139 | `result-track:2633dbf85a1632a1f5536e05eaa9553ee846d5ace2b5b812fc667f2b3e8d783a` |
| 13 | `theorem` | [bernoulliFourierCoeff_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/bernoullifouriercoeff-eq--756ccfd986b91549194b94f3.md) | 145 | `result-track:756ccfd986b91549194b94f32446ec8830e715edaf8c8af6b663ff396e067790` |
| 14 | `def` | [periodizedBernoulli](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/periodizedbernoulli--d1094c52806f271c887ee6ad.md) | 174 | `declaration-track:d1094c52806f271c887ee6ad52a0a568fa806b3e3cf637b7868f96be64963f30` |
| 15 | `theorem` | [periodizedBernoulli.continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/periodizedbernoulli-continuous--c1f3bfed225b0df7d0aa6cc0.md) | 178 | `result-track:c1f3bfed225b0df7d0aa6cc0bccdcf4dab27329ae27f4adf4d596cb593f307a8` |
| 16 | `theorem` | [fourierCoeff_bernoulli_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/fouriercoeff-bernoulli-eq--a2ea191d56d333a198ed1a6d.md) | 184 | `result-track:a2ea191d56d333a198ed1a6df069d93d8e7a43504052fb5752f762066beda0a4` |
| 17 | `theorem` | [summable_bernoulli_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/summable-bernoulli-fourier--f2a6688f8e1cd77b65fc4eb9.md) | 192 | `result-track:f2a6688f8e1cd77b65fc4eb93d4f2c4993865d79c7566b8bb82a4f05d62796f6` |
| 18 | `theorem` | [hasSum_one_div_pow_mul_fourier_mul_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-one-div-pow-mul-fourier-mul-bernoullifun--e1461f54986484d945dea6a6.md) | 210 | `result-track:e1461f54986484d945dea6a67eea2a79494e98d4823f34fd3b5913fd1b8e8eb7` |
| 19 | `theorem` | [hasSum_one_div_nat_pow_mul_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-one-div-nat-pow-mul-fourier--a2143e5727cd3c5f03027059.md) | 249 | `result-track:a2143e5727cd3c5f03027059d5f33bd73006f98f36b4e25a0d41b3f18f11285e` |
| 20 | `theorem` | [hasSum_one_div_nat_pow_mul_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-one-div-nat-pow-mul-cos--3d86d10ec8214dda1cd0c812.md) | 266 | `result-track:3d86d10ec8214dda1cd0c81202a66ba68352dbc5b74e95fdd7cdc50d093d7b40` |
| 21 | `theorem` | [hasSum_one_div_nat_pow_mul_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-one-div-nat-pow-mul-sin--0cbf6b3fb5ba9a41a868bf01.md) | 303 | `result-track:0cbf6b3fb5ba9a41a868bf01b4a8e99ce1fefb74bcf1352065ea5822e8247927` |
| 22 | `theorem` | [hasSum_zeta_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-zeta-nat--0e238338c4ac1eb20f427865.md) | 347 | `result-track:0e238338c4ac1eb20f427865c5585dd35af41e67f4e3d3c1732485eebe35b84a` |
| 23 | `theorem` | [hasSum_zeta_two](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-zeta-two--6dcb6516be5d53cc07f2b9ba.md) | 370 | `result-track:6dcb6516be5d53cc07f2b9ba9d12b9f074ac8ce9833f23d9ee44316993d49bd4` |
| 24 | `theorem` | [hasSum_zeta_four](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-zeta-four--2684f8def102fe3990a56cd0.md) | 376 | `result-track:2684f8def102fe3990a56cd03cc0ecdb498d7032da1da18b8bae0db05b454e39` |
| 25 | `theorem` | [Polynomial.bernoulli_three_eval_one_quarter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/polynomial-bernoulli-three-eval-one-quarter--e9a389b2ecc43dbcd58d1ddc.md) | 382 | `result-track:e9a389b2ecc43dbcd58d1ddc4abfe72ddfb0ab8b75aa5ee4ea07797f9869a9cb` |
| 26 | `theorem` | [hasSum_L_function_mod_four_eval_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantc07de8259ac6eca568cea9752090b74973bdf6b6c989ef5597bd6df1684cbc16.lean/declarations/hassum-l-function-mod-four-eval-three--abbdde82fd88dc3cd64f7e85.md) | 395 | `result-track:abbdde82fd88dc3cd64f7e85c65c09dd8dba8fea13fdda186b9f8e1dd64bbb16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
