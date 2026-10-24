# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c38c8678c15917cef0d58ae6a00bdeffe8d280f0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c38c8678c15917cef0d58ae6a00bdeffe8d280f0`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow--ad05a2f1e8a22fd3d2fca5be.md) | 29 | `declaration-track:ad05a2f1e8a22fd3d2fca5be1d6715cdbdf5fbf2b39b9c07c14bd8e2d42c8769` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/instance--43e475d31e6d22dc4e9ffedf.md) | 32 | `declaration-track:43e475d31e6d22dc4e9ffedfe9c679c485a08c4683bdd1a6820dc3fe13af695e` |
| 3 | `theorem` | [cpow_eq_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-eq-pow--c3115b54e5386e7916d30404.md) | 36 | `result-track:c3115b54e5386e7916d30404cd764f62bd095803448dc49626941e90bc400dae` |
| 4 | `theorem` | [cpow_def](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-def--71239f70659b9917648cf14d.md) | 39 | `result-track:71239f70659b9917648cf14d0bb6c7185e88e4ef97c91b5f0627724fe869be61` |
| 5 | `theorem` | [cpow_def_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-def-of-ne-zero--c020512ddd25a26472cb46a5.md) | 42 | `result-track:c020512ddd25a26472cb46a567621ee7daeec13069a2cd41c0aa6b3a603d4658` |
| 6 | `theorem` | [cpow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-zero--c379060766b5f2f35b462b2a.md) | 46 | `result-track:c379060766b5f2f35b462b2af2d8bd42dd571b8e844af47a58385b6456d6ecc0` |
| 7 | `theorem` | [cpow_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-eq-zero-iff--a833d12f23ea44be014c2c0f.md) | 49 | `result-track:a833d12f23ea44be014c2c0f236457c0d46bf690f83fcfc7c827c51009c44e86` |
| 8 | `theorem` | [cpow_ne_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ne-zero-iff--813ceeb5eff658d672f17140.md) | 53 | `result-track:813ceeb5eff658d672f171409fb86a46a832253236fbd9d0dc7781987dfbec62` |
| 9 | `theorem` | [cpow_ne_zero_iff_of_exponent_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ne-zero-iff-of-exponent-ne-zero--6ec73faf0dda1940bbe0cfb2.md) | 57 | `result-track:6ec73faf0dda1940bbe0cfb29960c8b236fef1cf13e02794a9de71374273f541` |
| 10 | `theorem` | [zero_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/zero-cpow--9a400b87a447e4df05d8f998.md) | 61 | `result-track:9a400b87a447e4df05d8f9981480e748ddcb2a04cd5c9547edfdc3b7bdab2e96` |
| 11 | `theorem` | [zero_cpow_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/zero-cpow-eq-iff--afac89bfa29a20529fe64df6.md) | 63 | `result-track:afac89bfa29a20529fe64df6d10e86005bb96914ad600d374d1351c4320dfbac` |
| 12 | `theorem` | [eq_zero_cpow_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/eq-zero-cpow-iff--8583fd34fce9ab2084753fe2.md) | 79 | `result-track:8583fd34fce9ab2084753fe22c5dd5e7b77ddc874b0db16d3c323ca82f90b771` |
| 13 | `theorem` | [cpow_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-one--57a0568217c9a4d4ba9af340.md) | 83 | `result-track:57a0568217c9a4d4ba9af340b039ef3970950f3dfd30a02ed62e305c0fb9d42a` |
| 14 | `theorem` | [one_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/one-cpow--50d9ee687e7e130c5c44f001.md) | 88 | `result-track:50d9ee687e7e130c5c44f001a7de3ca3a5498eb20ea8b59a22069d785e86edd1` |
| 15 | `theorem` | [cpow_add](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-add--3a5a29bfd8a288a0ef138b4f.md) | 92 | `result-track:3a5a29bfd8a288a0ef138b4fd10b54bba7263acd586ff565f35d56325ffcef29` |
| 16 | `theorem` | [cpow_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-mul--3c461891159ab4074547cd9d.md) | 96 | `result-track:3c461891159ab4074547cd9dbda6a685ac5af2ab23a6a707d9dc8b6204b9b6f1` |
| 17 | `theorem` | [cpow_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-neg--9e283c597b28358d8a1e82eb.md) | 101 | `result-track:9e283c597b28358d8a1e82ebfcd6f668c7b11c93ab273cceb2cffab19dd5d1b3` |
| 18 | `theorem` | [cpow_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-sub--15aa1be2f838cf980221c6a4.md) | 105 | `result-track:15aa1be2f838cf980221c6a4529211a99d94a45b5c2d1a993357b267db9c0a9e` |
| 19 | `theorem` | [cpow_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-neg-one--c754ddd47daffb882a759843.md) | 108 | `result-track:c754ddd47daffb882a759843db5f1970e72862d9537a901ebfac419f0dcc4f4a` |
| 20 | `lemma` | [cpow_int_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-int-mul--f92fe10ca35ba95007d6f94b.md) | 111 | `result-track:f92fe10ca35ba95007d6f94b1f3e7783f6f987856dfaa20db93d0bcc03eafe80` |
| 21 | `lemma` | [cpow_mul_int](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-mul-int--5ca4b0a7e65e0a97d53aa984.md) | 118 | `result-track:5ca4b0a7e65e0a97d53aa984e92c6a7664514a5025da1e1c1e23fc0ddebcd298` |
| 22 | `lemma` | [cpow_nat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-nat-mul--b05e2a5dc39c792424f531b1.md) | 120 | `result-track:b05e2a5dc39c792424f531b1385e99f0b1a525e2022cb9f96878c9828bcee280` |
| 23 | `lemma` | [cpow_ofNat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ofnat-mul--689e7e83749efe7e0b37f1e2.md) | 123 | `result-track:689e7e83749efe7e0b37f1e2fe5aed439330b61b52f604311390145a06a90d47` |
| 24 | `lemma` | [cpow_mul_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-mul-nat--d2395d7ec9a02a5fa03b4ea9.md) | 127 | `result-track:d2395d7ec9a02a5fa03b4ea9ca2dc169657620b2a5003be5636a242defe37b64` |
| 25 | `lemma` | [cpow_mul_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-mul-ofnat--b98aa84fe8cc1c981b2aa34b.md) | 130 | `result-track:b98aa84fe8cc1c981b2aa34bbf46c331b16ed43470abed75eed071da39e3ad55` |
| 26 | `theorem` | [cpow_natCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-natcast--e54500f973cfbf3e4c397045.md) | 135 | `result-track:e54500f973cfbf3e4c397045f4111cdcea2637530e5b0f32cec01d1f1b8ab96c` |
| 27 | `lemma` | [cpow_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ofnat--65fa0d66b3bde1381947da7e.md) | 138 | `result-track:65fa0d66b3bde1381947da7e25623682018d00c36ae439f8e6178f8866975a49` |
| 28 | `theorem` | [cpow_two](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-two--7d72329aa32e9b2aa6f98e9d.md) | 142 | `result-track:7d72329aa32e9b2aa6f98e9d891536a13530f022128032012d78401d197926d4` |
| 29 | `theorem` | [cpow_intCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-intcast--63eed1d5e283431a1b370801.md) | 145 | `result-track:63eed1d5e283431a1b3708014823934911986ab14d5da6491018a17fe6f286d6` |
| 30 | `theorem` | [cpow_nat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-nat-inv-pow--ab328c7bcfa77ce9241c8dcd.md) | 148 | `result-track:ab328c7bcfa77ce9241c8dcdbf41e9d8921731059752b65aa8043a7f2267f4ff` |
| 31 | `lemma` | [cpow_ofNat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ofnat-inv-pow--9ecea1b6cd142b6b6706dedc.md) | 153 | `result-track:9ecea1b6cd142b6b6706dedc7107cb50b1f76bd900e55de8fed8678161c17aee` |
| 32 | `lemma` | [cpow_int_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-int-mul--c7eb8d0c7462c71196ca599b.md) | 161 | `result-track:c7eb8d0c7462c71196ca599b7448b0e7652b5174ea3a1843a097e84bd9aa0da6` |
| 33 | `lemma` | [cpow_nat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-nat-mul--f81801f104405575abb4bcb5.md) | 170 | `result-track:f81801f104405575abb4bcb554f3ab6b204f893661a2e8fd5fcb00439a62eb6c` |
| 34 | `lemma` | [cpow_ofNat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-ofnat-mul--62c8cd1b46c27518c273c0e3.md) | 174 | `result-track:62c8cd1b46c27518c273c0e3498fdfbdf93b344dc420332042cbb338fafd1c9d` |
| 35 | `lemma` | [pow_cpow_nat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/pow-cpow-nat-inv--e7c1fc351e7fef13a617d7c0.md) | 179 | `result-track:e7c1fc351e7fef13a617d7c090f0c0d4ef9e3bd6308b9bfb708d6507855bcf12` |
| 36 | `lemma` | [pow_cpow_ofNat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/pow-cpow-ofnat-inv--31588762422c3edb464c5e53.md) | 185 | `result-track:31588762422c3edb464c5e5349b5072c4212040b6fd71924ec554611b5eefb6f` |
| 37 | `lemma` | [sq_cpow_two_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/sq-cpow-two-inv--477cd44bc522fc1c78fbbeaa.md) | 191 | `result-track:477cd44bc522fc1c78fbbeaa5361a2b67d4440bfb3e02c85d2f8b4f9f3d9eebd` |
| 38 | `theorem` | [mul_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/mul-cpow-ofreal-nonneg--38051535404cee9e1e1a8876.md) | 195 | `result-track:38051535404cee9e1e1a8876c88a3bccd1b23b4505402ec7080ead53c0db5bed` |
| 39 | `lemma` | [natCast_mul_natCast_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/natcast-mul-natcast-cpow--901cd3b8285e088b584db648.md) | 208 | `result-track:901cd3b8285e088b584db64855eab7c22a68c717a24f823433716055ee7163b9` |
| 40 | `lemma` | [natCast_cpow_natCast_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/natcast-cpow-natcast-mul--e4b9684ab92116efcf654c0c.md) | 211 | `result-track:e4b9684ab92116efcf654c0cc80a865d2e152e693932372b8affe9444dae5c00` |
| 41 | `theorem` | [inv_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/inv-cpow-eq-ite--c080069ba25c88d5d1ede033.md) | 216 | `result-track:c080069ba25c88d5d1ede0331deb0511cacdaef2c9ac4a2ec2020c673eb70486` |
| 42 | `theorem` | [inv_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/inv-cpow--039312605cf8cb02de460926.md) | 223 | `result-track:039312605cf8cb02de46092614112b2eb907196f8f305c6b415a8ad7cbf7123d` |
| 43 | `theorem` | [inv_cpow_eq_ite'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/inv-cpow-eq-ite--5cbc41c4272e4fa57bb8adb3.md) | 227 | `result-track:5cbc41c4272e4fa57bb8adb367cbd1244761888104f5160fd96dd11b0613cfc3` |
| 44 | `theorem` | [conj_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/conj-cpow-eq-ite--a239943b557e334ab2e6e56f.md) | 234 | `result-track:a239943b557e334ab2e6e56f5390d848b49db8b0c57bf70141b9d6fd1eed5918` |
| 45 | `theorem` | [conj_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/conj-cpow--aff2640ab5f79c15efaf20a6.md) | 240 | `result-track:aff2640ab5f79c15efaf20a66b71c57805153e6ac8e51366049bd035fc5714d5` |
| 46 | `theorem` | [cpow_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/cpow-conj--493d3443423f0a74f91ec599.md) | 243 | `result-track:493d3443423f0a74f91ec59912abf5ca785e4ad9212cbec0a5bdeb22e7b09f33` |
| 47 | `lemma` | [natCast_add_one_cpow_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variant891b40a467ce09ec295b6ab287afdaed741913a708cf5e7faa0de1a6f72aa53c.lean/declarations/natcast-add-one-cpow-ne-zero--655fdb30925b07d23de669fd.md) | 246 | `result-track:655fdb30925b07d23de669fdabddbbffc0318a5ab209137dc6c537492412e2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
