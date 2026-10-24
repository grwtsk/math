# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bd6c94c3c8d5e12bbd73d075de5dd7b16390ad6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bd6c94c3c8d5e12bbd73d075de5dd7b16390ad6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/castembedding--52798358a4ad6a484c5de244.md) | 31 | `declaration-track:52798358a4ad6a484c5de244b2ed172bc338b537b64991fe3047763346ff6b5c` |
| 2 | `theorem` | [cast_pow_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/cast-pow-eq-one--c057dbff60c8e3ca0b6d42e0.md) | 37 | `result-track:c057dbff60c8e3ca0b6d42e08e1c409d016d5283cf198bb5f7f751501ebca9ca` |
| 3 | `theorem` | [cast_div_charZero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/cast-div-charzero--dda56db4976741e2fd3f1089.md) | 44 | `result-track:dda56db4976741e2fd3f1089e319f2177ff13699197d8844af0aec67bc16708b` |
| 4 | `instance` | [CharZero.NeZero.two](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/charzero-nezero-two--434242e923e4e3b3727e8775.md) | 57 | `declaration-track:434242e923e4e3b3727e877527af74cac1838bb5ff16ac8fab80cd29895de801` |
| 5 | `theorem` | [add_self_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/add-self-eq-zero--3e429f6a221e72e39c2238f6.md) | 70 | `result-track:3e429f6a221e72e39c2238f65780cb36f4d780d22e3904ab38ceafc780284418` |
| 6 | `theorem` | [bit0_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit0-eq-zero--4f5cafe0d1474e3f2e9870d9.md) | 77 | `result-track:4f5cafe0d1474e3f2e9870d9b7893162524745af0de54d0fbce9b1e2ecfbc37c` |
| 7 | `theorem` | [zero_eq_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/zero-eq-bit0--58e6115ce34b728f613ecaac.md) | 82 | `result-track:58e6115ce34b728f613ecaaceb314078b16aedfa1dfcb087409490b9672e721d` |
| 8 | `theorem` | [bit0_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit0-ne-zero--b5e7f45522ecdbbd3cd45750.md) | 87 | `result-track:b5e7f45522ecdbbd3cd457507ad446835d04ca184103620905df2cfe2c4ad382` |
| 9 | `theorem` | [zero_ne_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/zero-ne-bit0--7fd497edbae962819fc100c7.md) | 91 | `result-track:7fd497edbae962819fc100c75d0a443491c8aba751a785dde8bc1b4c239bd053` |
| 10 | `theorem` | [neg_eq_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/neg-eq-self-iff--67b3bb5086974c520a678e30.md) | 101 | `result-track:67b3bb5086974c520a678e30580c64fc1c594b9bab83aae77637975012c22f18` |
| 11 | `theorem` | [eq_neg_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/eq-neg-self-iff--349bae3e0571d4ca423006ac.md) | 105 | `result-track:349bae3e0571d4ca423006ac9d27e4334b35ffcb0e1b17a25a91295ab764f718` |
| 12 | `theorem` | [nat_mul_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/nat-mul-inj--98983234a72296b2cf39d528.md) | 109 | `result-track:98983234a72296b2cf39d528095fa3b76b933421d0ada9afe1d9ce03be34df08` |
| 13 | `theorem` | [nat_mul_inj'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/nat-mul-inj--6d79c57e3eaeff7ce40629a2.md) | 114 | `result-track:6d79c57e3eaeff7ce40629a2905df35c7064e3db89780ca90e5fcc90ed1f2e60` |
| 14 | `theorem` | [bit0_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit0-injective--ee91e2d6b0025e86df6d6218.md) | 120 | `result-track:ee91e2d6b0025e86df6d621889136a89f89e93bdff99ad4d20aca9dd98744e15` |
| 15 | `theorem` | [bit1_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit1-injective--2347357270b74be2a43cb1c5.md) | 127 | `result-track:2347357270b74be2a43cb1c5743aedbed3ff214e0c1eb1d44ca159eaf9ee49ae` |
| 16 | `theorem` | [bit0_eq_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit0-eq-bit0--885d03462f89824a760a66d6.md) | 133 | `result-track:885d03462f89824a760a66d69cd26913dfcbb85989a335129e6ae5112c089fdc` |
| 17 | `theorem` | [bit1_eq_bit1](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit1-eq-bit1--a8708636b66f9108e04dddb9.md) | 138 | `result-track:a8708636b66f9108e04dddb947249d5ce22e171a38a245a8bf353bfe4bd3ed48` |
| 18 | `theorem` | [bit1_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/bit1-eq-one--b7c5c5809d02dd60f54a9f90.md) | 143 | `result-track:b7c5c5809d02dd60f54a9f906b442322d5d5155eb2763a218c6acd9378f4c935` |
| 19 | `theorem` | [one_eq_bit1](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/one-eq-bit1--4cd50bb0939f6a6e44716ea0.md) | 148 | `result-track:4cd50bb0939f6a6e44716ea0934cb9a0f1baf049b74509f67178604c8e982db2` |
| 20 | `theorem` | [half_add_self](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/half-add-self--095093d409fd6b2a200fa5d5.md) | 160 | `result-track:095093d409fd6b2a200fa5d524e40eda111731f01ff9d3622feaf712914c8723` |
| 21 | `theorem` | [add_halves'](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/add-halves--f0fa8aa009e951e0c335b819.md) | 164 | `result-track:f0fa8aa009e951e0c335b819ae5b5eeef2ed681ed59e4b9229cec00c0ef5a5b7` |
| 22 | `theorem` | [sub_half](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/sub-half--134ee0930843eb9a557887a4.md) | 167 | `result-track:134ee0930843eb9a557887a4f36ddbeb6a479fe6964941e70c10a41cd0869e29` |
| 23 | `theorem` | [half_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/half-sub--990e0d54c008d1493191520d.md) | 170 | `result-track:990e0d54c008d1493191520dd9e20b09849164629f699520096fdcb1e61973eb` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/instance--2548b976852fb477e45bf985.md) | 177 | `declaration-track:2548b976852fb477e45bf985accd421dc7005e6d674766ece78f94386d368068` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/instance--7ec8eee9dc15a0c5217783c5.md) | 186 | `declaration-track:7ec8eee9dc15a0c5217783c50f4daea81abfa5dc422cd29537b5a823057b1c57` |
| 26 | `theorem` | [RingHom.charZero](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/ringhom-charzero--e67dbd0d4723deaf0cc47461.md) | 197 | `result-track:e67dbd0d4723deaf0cc47461cb5ec95f8093fb11549b6bdb1e10db666a21504a` |
| 27 | `theorem` | [RingHom.charZero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/ringhom-charzero-iff--cb0dccb6c720b372564daf5f.md) | 201 | `result-track:cb0dccb6c720b372564daf5f0f1dc768b593e7a30bd87639030423c4de3a2820` |
| 28 | `theorem` | [RingHom.injective_nat](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variantbc1352591b60e766a820da1e3e4d40924737c2bd966ee9890039c2d1953adc4d.lean/declarations/ringhom-injective-nat--629491ff4022409a3d69ae02.md) | 207 | `result-track:629491ff4022409a3d69ae02af510c63fa833bd07d049b08863f38a140cdb164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
