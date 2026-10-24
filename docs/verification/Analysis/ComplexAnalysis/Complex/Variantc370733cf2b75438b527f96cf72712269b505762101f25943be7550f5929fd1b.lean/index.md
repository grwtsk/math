# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa2d130b2f55f39d6e893f7a8953b6cfa02fd7d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa2d130b2f55f39d6e893f7a8953b6cfa02fd7d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow--219e10ef1f48593c6e35e6d3.md) | 21 | `declaration-track:219e10ef1f48593c6e35e6d3afdff0f00adaed0a6e2ce692ddd2538d9f992314` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/instance--3975bb6a4445e88da092ddd7.md) | 24 | `declaration-track:3975bb6a4445e88da092ddd7bcc1318998ba24a14fedf9f8c6b164ce639b119d` |
| 3 | `theorem` | [cpow_eq_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-eq-pow--7f0246a9d994341af2114e89.md) | 28 | `result-track:7f0246a9d994341af2114e8953befdd29a44ceffa067cd830566e4e845dc8c88` |
| 4 | `theorem` | [cpow_def](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-def--9d6e481f4c3a6de5cee5e0ab.md) | 31 | `result-track:9d6e481f4c3a6de5cee5e0ab51a3612f64e0cb2da44ad7506aeaf0925355485d` |
| 5 | `theorem` | [cpow_def_of_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-def-of-ne-zero--2a9556bd11cca954d0285f65.md) | 34 | `result-track:2a9556bd11cca954d0285f65e542fdf410e0180c9d70224d72502657abe66396` |
| 6 | `theorem` | [cpow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-zero--d90ae66be056956af6b9195c.md) | 38 | `result-track:d90ae66be056956af6b9195cbcae07fa451586813b9cf173f12e3ab845088e1e` |
| 7 | `theorem` | [cpow_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-eq-zero-iff--dd4d29ba44361d04c399fea1.md) | 41 | `result-track:dd4d29ba44361d04c399fea1f2043994e748a1cc99675abc3d4a570991d5d628` |
| 8 | `theorem` | [cpow_ne_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ne-zero-iff--cdf3bcb55f36dd88cbbf1ba5.md) | 45 | `result-track:cdf3bcb55f36dd88cbbf1ba5371a4a71a0f2906589bcfe3efb185ae9347125d3` |
| 9 | `theorem` | [cpow_ne_zero_iff_of_exponent_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ne-zero-iff-of-exponent-ne-zero--45f7ebe62b24d342c6190b72.md) | 49 | `result-track:45f7ebe62b24d342c6190b72f6305f5cc21b3a913428e7da8ef9420b19b59f26` |
| 10 | `theorem` | [zero_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/zero-cpow--5bf14ba284c25c4eb0a0a53c.md) | 53 | `result-track:5bf14ba284c25c4eb0a0a53c01ed7aa18ea4d77914f4bc60bf7cf1666bb07bf4` |
| 11 | `theorem` | [zero_cpow_eq_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/zero-cpow-eq-iff--45b439acc16e4d16b86ee4bc.md) | 55 | `result-track:45b439acc16e4d16b86ee4bc8333da1a92e3d13ceed81e835fe16a9848c4ac42` |
| 12 | `theorem` | [eq_zero_cpow_iff](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/eq-zero-cpow-iff--079127294f093e8d70589fa0.md) | 71 | `result-track:079127294f093e8d70589fa0f0c0d4aeb703ad4859df8c02c2862f5e0e7b9d84` |
| 13 | `theorem` | [cpow_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-one--1981eb732395b07ce8b3d30e.md) | 75 | `result-track:1981eb732395b07ce8b3d30e4d0c9dc934885d89d6d884491f224938b1b4cd67` |
| 14 | `theorem` | [one_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/one-cpow--af57b4749c2897c1ad2b9e05.md) | 80 | `result-track:af57b4749c2897c1ad2b9e05da3f3bbd46586d950ce50764c84f29964a58fba4` |
| 15 | `theorem` | [cpow_add](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-add--01d2e1e90ce7a406ef285f62.md) | 84 | `result-track:01d2e1e90ce7a406ef285f627c36cf2ffbceb2e185654666ff036a6c01fc14f9` |
| 16 | `theorem` | [cpow_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-mul--80615926645591f60e80797b.md) | 88 | `result-track:80615926645591f60e80797b0aa101b44e27f2e4aac226a9fcd45af2a7ea59cf` |
| 17 | `theorem` | [cpow_neg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-neg--bb7667dacfcfa584340f1fa6.md) | 93 | `result-track:bb7667dacfcfa584340f1fa6ee7391330cea659d4a794349775774ac3f5f9274` |
| 18 | `theorem` | [cpow_sub](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-sub--eac11b397d809835e033840f.md) | 97 | `result-track:eac11b397d809835e033840ff0eee3cb85c08291bc4834e51be536d6e56c45bc` |
| 19 | `theorem` | [cpow_neg_one](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-neg-one--2a9f4e7887f565376656e8ab.md) | 100 | `result-track:2a9f4e7887f565376656e8abab57cf84b6e072b990d00da57a3df2d89fad7b02` |
| 20 | `lemma` | [cpow_int_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-int-mul--e782364c9b85c12fe634d9b4.md) | 103 | `result-track:e782364c9b85c12fe634d9b40086f0c47413b5c95b00d4466b1f3b8560dd98ef` |
| 21 | `lemma` | [cpow_mul_int](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-mul-int--e8854bdaa8e0c4b9b2cfd811.md) | 110 | `result-track:e8854bdaa8e0c4b9b2cfd8112a5d06cc620bd97d472f3d7b52da0b3f34218e93` |
| 22 | `lemma` | [cpow_nat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-nat-mul--e47a1812faf2d62726fd1612.md) | 112 | `result-track:e47a1812faf2d62726fd1612995addbc12dc0be7a8ff7939cb7f2d2ff524ff4c` |
| 23 | `lemma` | [cpow_ofNat_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ofnat-mul--ddddf9807dc0003fcd443613.md) | 115 | `result-track:ddddf9807dc0003fcd443613a6acd3563ab37d8a8f2febf90163b571af95dfe1` |
| 24 | `lemma` | [cpow_mul_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-mul-nat--e510cfe16ac527f2d85e02de.md) | 119 | `result-track:e510cfe16ac527f2d85e02de68f33c894f9d900f5a5b9de08d8aeffde4ad902b` |
| 25 | `lemma` | [cpow_mul_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-mul-ofnat--f76d9293f4da6fb2a1b62e11.md) | 122 | `result-track:f76d9293f4da6fb2a1b62e11a55e97153cc6bca99d7351eaf58dab9feb47da88` |
| 26 | `theorem` | [cpow_natCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-natcast--303e4fab3d5464978e578b6e.md) | 127 | `result-track:303e4fab3d5464978e578b6e6eb45467e64c0b61ba6e3c2436d47ea8e5c115e0` |
| 27 | `lemma` | [cpow_ofNat](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ofnat--53c374821108a9ac4104d781.md) | 130 | `result-track:53c374821108a9ac4104d7811ec22c7e073c40ae2ee87dbe77da3448098084d2` |
| 28 | `theorem` | [cpow_two](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-two--f11f67f8e48c090ae9cc57af.md) | 134 | `result-track:f11f67f8e48c090ae9cc57af1939a1f8c4979a37620a0d2bf1e9dd70cc6166df` |
| 29 | `theorem` | [cpow_intCast](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-intcast--5259897d495ac8516ecf0df9.md) | 137 | `result-track:5259897d495ac8516ecf0df93ac9b71dea9e5739fdb1e6d972877c0edab85abd` |
| 30 | `theorem` | [cpow_nat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-nat-inv-pow--11397a39b82ece7061b437fa.md) | 140 | `result-track:11397a39b82ece7061b437fa5c2a2a17397634d773c99bee6f0359708226444d` |
| 31 | `lemma` | [cpow_ofNat_inv_pow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ofnat-inv-pow--655c6b6ebb30d6def30821af.md) | 145 | `result-track:655c6b6ebb30d6def30821aff9f440d80a373465eed58ba7ebef93d44b9dfe4c` |
| 32 | `lemma` | [cpow_int_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-int-mul--0fbd147fc871e2bd5ea0d706.md) | 153 | `result-track:0fbd147fc871e2bd5ea0d706c8a06912af37d46400fc189503b9f5d3bf3b6f40` |
| 33 | `lemma` | [cpow_nat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-nat-mul--e7273cc3a1a3559a912c888d.md) | 162 | `result-track:e7273cc3a1a3559a912c888dc44262836d6b02e6fcfe9ecca948a70469dec3d1` |
| 34 | `lemma` | [cpow_ofNat_mul'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-ofnat-mul--f9e0f42af655c1d54e49fbfe.md) | 166 | `result-track:f9e0f42af655c1d54e49fbfe3fb32894b2859cbd3a0921afb6817fa44a77bfe5` |
| 35 | `lemma` | [pow_cpow_nat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/pow-cpow-nat-inv--c7a4da20a0fbfe9bb391dba1.md) | 171 | `result-track:c7a4da20a0fbfe9bb391dba14001b740852807ddefb6968fb045f1ed2fafefef` |
| 36 | `lemma` | [pow_cpow_ofNat_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/pow-cpow-ofnat-inv--c4a53c8229cdb8a06d61095b.md) | 177 | `result-track:c4a53c8229cdb8a06d61095b79494730395d54ea1acbe0efee9a52b49e7d1297` |
| 37 | `lemma` | [sq_cpow_two_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/sq-cpow-two-inv--52640c65145bd1b7b1587a57.md) | 183 | `result-track:52640c65145bd1b7b1587a573290c3ae5c898bb2b187837682e9a5a539dcc328` |
| 38 | `theorem` | [mul_cpow_ofReal_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/mul-cpow-ofreal-nonneg--43cb0a6659181682af9bdb8d.md) | 187 | `result-track:43cb0a6659181682af9bdb8db64f13d9bf70327e457f0578165b7ef96f35434c` |
| 39 | `lemma` | [natCast_mul_natCast_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/natcast-mul-natcast-cpow--329631dde1894346e8324e38.md) | 200 | `result-track:329631dde1894346e8324e38fdc37f7af7ab8652787dc97147b0e2c3cfd753c1` |
| 40 | `lemma` | [natCast_cpow_natCast_mul](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/natcast-cpow-natcast-mul--5c4b3526eac649b79b70df85.md) | 203 | `result-track:5c4b3526eac649b79b70df85847584eedda94ed7f82f7cacfd076bf6cb71e594` |
| 41 | `theorem` | [inv_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/inv-cpow-eq-ite--f8890c523d681835aa6a85ee.md) | 208 | `result-track:f8890c523d681835aa6a85eee5b499ba3ecd1164e1076c76c0eb1aa081d62694` |
| 42 | `theorem` | [inv_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/inv-cpow--430930df9206961d6c9d2c3d.md) | 215 | `result-track:430930df9206961d6c9d2c3dc00cf495f95b89ac09c144c540261fd7eacc4fb2` |
| 43 | `theorem` | [inv_cpow_eq_ite'](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/inv-cpow-eq-ite--e29def3b5aeb3bb7b82d89dd.md) | 219 | `result-track:e29def3b5aeb3bb7b82d89ddc2f965ecde7e47ba740b6860658f2febe917fa7e` |
| 44 | `theorem` | [conj_cpow_eq_ite](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/conj-cpow-eq-ite--80c55f242e49d1ff91d2c738.md) | 226 | `result-track:80c55f242e49d1ff91d2c738172e9964161f2ad088a11b8462aed8cb33a4c881` |
| 45 | `theorem` | [conj_cpow](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/conj-cpow--059ebfb424dad905839a6ba8.md) | 232 | `result-track:059ebfb424dad905839a6ba8774e5d6c2446166bac00759f10a52cd1b29e27ad` |
| 46 | `theorem` | [cpow_conj](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/cpow-conj--0d54397f8e5b6211c9dc3a3e.md) | 235 | `result-track:0d54397f8e5b6211c9dc3a3e23e15a838fd0b40b8135e0e3567229e4ac2910e3` |
| 47 | `lemma` | [natCast_add_one_cpow_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variantc370733cf2b75438b527f96cf72712269b505762101f25943be7550f5929fd1b.lean/declarations/natcast-add-one-cpow-ne-zero--fc9e3102325c923652c10fbc.md) | 238 | `result-track:fc9e3102325c923652c10fbc3593f8138bc05f38d9dd91cf577e3b6eb65d52f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
