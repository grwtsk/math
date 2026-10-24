# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfdd1cc3351916d1c50b5ad7ba646577cbfc59b4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfdd1cc3351916d1c50b5ad7ba646577cbfc59b4`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DomMulAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/dommulact--33b8b83aa81d04aa6fb9476b.md) | 100 | `declaration-track:33b8b83aa81d04aa6fb9476bcb64e8deb8950a4c45a5f49dee90704a231faf46` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk--1ce43595ca2c70d39d083e58.md) | 109 | `declaration-track:1ce43595ca2c70d39d083e5848b123b632a514fb307eb95fa4b724936313d75e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--7b45b3d7f52fca111d61d2b2.md) | 123 | `declaration-track:7b45b3d7f52fca111d61d2b2db2aa8236213890bea8174a1a9999a39cc5ddd82` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--73b89c1aa4d3638eba178c2d.md) | 126 | `declaration-track:73b89c1aa4d3638eba178c2dc76cde40aacb738ab05a55ce04d15302166022bc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--ebcfc9fa64dc369d03a9a12e.md) | 127 | `declaration-track:ebcfc9fa64dc369d03a9a12e9ad58b55206d3034eb19dcbd522a2dac2eb5ed7d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--1f83f5c566ae95295931c355.md) | 128 | `declaration-track:1f83f5c566ae95295931c35539a1c8c8a202397a510ca4debd84e405aebb2e29` |
| 7 | `lemma` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-one--461cceee320ad7d55cf7fffb.md) | 131 | `result-track:461cceee320ad7d55cf7fffb48b9cae2337b32a8f8d8d9763e1512e0a63ba02b` |
| 8 | `lemma` | [symm_mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/symm-mk-one--3502cab9e7e72ddcfe9204a4.md) | 134 | `result-track:3502cab9e7e72ddcfe9204a418ee86a2b8a7b401a5d51adc832b5a13dd1ba585` |
| 9 | `lemma` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-mul--93e74687b3634b0d0fb8d4a3.md) | 137 | `result-track:93e74687b3634b0d0fb8d4a363c2edb6cee3154352bd0092dd2e66abafeaf9b5` |
| 10 | `lemma` | [symm_mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/symm-mk-mul--d18f9c7ae2c0bce833c0ffb3.md) | 140 | `result-track:d18f9c7ae2c0bce833c0ffb39d274c29a556cfd564e2615768740926a3917ee2` |
| 11 | `lemma` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-inv--43bfecbe75197770e3ec6198.md) | 143 | `result-track:43bfecbe75197770e3ec6198e266f4c07b42c301862a3c661da63deff69a4c2e` |
| 12 | `lemma` | [symm_mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/symm-mk-inv--aa83f8df2b9431e02092c574.md) | 146 | `result-track:aa83f8df2b9431e02092c5742f374628803265e6f10558a92ff403ea9198f1f8` |
| 13 | `lemma` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-pow--57446be3bbee9c1ef873d00f.md) | 149 | `result-track:57446be3bbee9c1ef873d00fce86ef14339c87be0f198be1a4c2eea748ccbf34` |
| 14 | `lemma` | [symm_mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/symm-mk-pow--ec980a101b1b3b71a9141889.md) | 152 | `result-track:ec980a101b1b3b71a9141889e761154280763247479fc87a0d3899a37529f860` |
| 15 | `lemma` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-zpow--962b47152679c8a35d331463.md) | 155 | `result-track:962b47152679c8a35d331463926d9e2f780a14a4d0b5f3b5c6a6590d130b4c27` |
| 16 | `lemma` | [symm_mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/symm-mk-zpow--f8fbd4ff8f868bf093df1207.md) | 158 | `result-track:f8fbd4ff8f868bf093df12078e7931fb6bdb528f71f8cc8ba7278cc7cfb97a8b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--eb2891c65b7b1e649d848916.md) | 163 | `declaration-track:eb2891c65b7b1e649d8489165ed9767867fe8fb6c08487aa380843786f697a62` |
| 18 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/smul-apply--13135e6f161614630357ce5f.md) | 167 | `result-track:13135e6f161614630357ce5f8c8bac22fa620d9c651c76db13da179157c269a0` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--cb7329d1155a3b4ad923cdc0.md) | 170 | `declaration-track:cb7329d1155a3b4ad923cdc0cc0af6a0b0ca1e0f7384c35f6d6a5cb44140536a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--2ae0a2c5955182e4fadc609a.md) | 174 | `declaration-track:2ae0a2c5955182e4fadc609afb9d0aef96ea60b1d6a38bf5a0a618edac49e7d3` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--5747eb1beeb7d5d0ee59d0c2.md) | 178 | `declaration-track:5747eb1beeb7d5d0ee59d0c28bb7af257d824f99335144cf2ffa945933109a39` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--34d8e9549a6d35c149e75657.md) | 182 | `declaration-track:34d8e9549a6d35c149e7565708b6c115b332b55d0b9affb5af72906f1d32bcf8` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--78c6e15160b465555c0f27f4.md) | 190 | `declaration-track:78c6e15160b465555c0f27f4993c6d4daf974659377f7dbc11a2417197b9e274` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--67d547662ab2606863454012.md) | 193 | `declaration-track:67d547662ab26068634540126b57503d2a78c01cd7f14fac8f2092bc8d34d06b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--6570d13242ee5ec2a744b3a7.md) | 197 | `declaration-track:6570d13242ee5ec2a744b3a7294a7f4f47839674126bca9ae686a0c18f70d984` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--515443aa542591e357d07cee.md) | 201 | `declaration-track:515443aa542591e357d07ceef02054c18843f80c4eb276d6361cc01a0ca30127` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--3b3952ff51b46a1e4b985ca3.md) | 209 | `declaration-track:3b3952ff51b46a1e4b985ca36a38a22468c63885e9ede2ad814b106ef1e7cca0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--b9875dd6258e9a2c690e97dd.md) | 212 | `declaration-track:b9875dd6258e9a2c690e97dd90fdf6d3e4da1ab449a5aa555b18ee7349993a5e` |
| 29 | `theorem` | [smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/smul-monoidhom-apply--40b6a577420ae69d2e7f7dc1.md) | 216 | `result-track:40b6a577420ae69d2e7f7dc14278de98a212de69b9c6153ab15bff2973725a09` |
| 30 | `theorem` | [mk_smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-smul-monoidhom-apply--860e0f578ae8fc30179bb244.md) | 220 | `result-track:860e0f578ae8fc30179bb24484af6c6b7941d2254819bbfd5017a5d2803c0d1f` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--3ec4ab9048f69729b9950745.md) | 222 | `declaration-track:3ec4ab9048f69729b9950745637bed675ce63571f965c5a02b4b02e87e4b0e3c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--0da06b4ec086b3383727bf4a.md) | 232 | `declaration-track:0da06b4ec086b3383727bf4a7d9eefcaab50aa863ad510a2f542006271bd3027` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--fc0fb68ddbd71742ae6dbf4f.md) | 235 | `declaration-track:fc0fb68ddbd71742ae6dbf4fa120c33b0cabc6387d09ba7c452c38e91436b550` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--e51672ee550b4e49c04f3c5b.md) | 238 | `declaration-track:e51672ee550b4e49c04f3c5bf053a0785afe30d45325c5befdca5933e80ade4c` |
| 35 | `theorem` | [smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/smul-addmonoidhom-apply--52abde885a92098b63029f9f.md) | 241 | `result-track:52abde885a92098b63029f9f2954019f302bfe6ae4897da0d87d38da8f90a609` |
| 36 | `theorem` | [mk_smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/mk-smul-addmonoidhom-apply--90a87b9b1f568b70ddeb7da5.md) | 245 | `result-track:90a87b9b1f568b70ddeb7da59f15be226c1c4a07002a9e434dc3d46eb4264ec8` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--3bb00f155525697cd5a6682b.md) | 249 | `declaration-track:3bb00f155525697cd5a6682bc1124f240b57c0315dd940155163d84218e54bcf` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d777078a6aa24cf17b87236ba6956038fa4f29c6c6468c59d37b8eae0ad8eca.lean/declarations/instance--b91cc89ab1d5f53c1eb95732.md) | 252 | `declaration-track:b91cc89ab1d5f53c1eb957323404e9d8591e27547b20304adc45fbabfea3f4f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
