# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0f55f21c454bad66bfd0e7f7312b6d29219d096",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0f55f21c454bad66bfd0e7f7312b6d29219d096`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.PUnit` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--096d7385315a29153014c05f.md) | 58 | `declaration-track:096d7385315a29153014c05fad84bcd52c4e6f4326569a653f39ef8ec0c285d0` |
| 2 | `instance` | [inhabited'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/inhabited--52f52b47c241a4c75e5c8505.md) | 63 | `declaration-track:52f52b47c241a4c75e5c850523ceb21e96784050cbe9672fad813b3364699fb3` |
| 3 | `theorem` | [bot_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/bot-coe--8cd2341b80153b4c45b99d3c.md) | 67 | `result-track:8cd2341b80153b4c45b99d3c7a1e843139d275939e5453ff3fe1632ccb80c495` |
| 4 | `theorem` | [bot_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/bot-toaddsubmonoid--a855c6263e785bf1ba8575af.md) | 71 | `result-track:a855c6263e785bf1ba8575afe7141491f79faa2191a03387241bc4cd5ac42a01` |
| 5 | `lemma` | [bot_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/bot-toaddsubgroup--58f866b2bd29e2e16a4a95dd.md) | 75 | `result-track:58f866b2bd29e2e16a4a95dd9c37edda23c30f94023270c3c1394bb3ebbca91b` |
| 6 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-bot--ecdf46ead26d81f60fc93cf4.md) | 80 | `result-track:ecdf46ead26d81f60fc93cf49b2c877c88136ead408ad2fabe82df8d5e4483af` |
| 7 | `instance` | [uniqueBot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/uniquebot--6adccb53d630f154cbef4765.md) | 83 | `declaration-track:6adccb53d630f154cbef47650422f82c63a1ab2be327897be3e108d96577909d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--4eabec55c0f4d67dfe1fdaa5.md) | 86 | `declaration-track:4eabec55c0f4d67dfe1fdaa51a4e936646fedcf08fcadeeb788d4447c8e53761` |
| 9 | `theorem` | [eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/eq-bot-iff--ed81396fbdfd52a7de86f5cc.md) | 90 | `result-track:ed81396fbdfd52a7de86f5cc84368ffe91e0423a8cc67d77df5271fa13a2eddd` |
| 10 | `theorem` | [bot_ext](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/bot-ext--5011203cb4f39ea73f89da1c.md) | 95 | `result-track:5011203cb4f39ea73f89da1c0986d5e626dbae452ead1dddd6756985b1884702` |
| 11 | `theorem` | [ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/ne-bot-iff--a72fad88d9f7fbc4c44368a4.md) | 100 | `result-track:a72fad88d9f7fbc4c44368a42db3bfef6925b461fb11d5a28dac53322f92b3e5` |
| 12 | `theorem` | [nonzero_mem_of_bot_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/nonzero-mem-of-bot-lt--2f0f4965945d0fa3ae461ea8.md) | 103 | `result-track:2f0f4965945d0fa3ae461ea83787ced93f113f9ade39d61c17f216b1fc517044` |
| 13 | `theorem` | [exists_mem_ne_zero_of_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/exists-mem-ne-zero-of-ne-bot--e1c92432cf877c79e79ddd04.md) | 107 | `result-track:e1c92432cf877c79e79ddd04d1cf71b329dc15af212f4918efce83f49ed0c77a` |
| 14 | `def` | [botEquivPUnit](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/botequivpunit--d9c402d1f53b73e5ef7a9e1c.md) | 114 | `declaration-track:d9c402d1f53b73e5ef7a9e1c73f583b1766f16c3d64ddf7414cc28ed69fcea95` |
| 15 | `theorem` | [subsingleton_iff_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/subsingleton-iff-eq-bot--b06cadcb210e7ed7177b81d5.md) | 122 | `result-track:b06cadcb210e7ed7177b81d5061d9b8fe60d398d514232992ecbc78489accc5e` |
| 16 | `theorem` | [eq_bot_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/eq-bot-of-subsingleton--229440b11db96ea5b6e6ddf0.md) | 127 | `result-track:229440b11db96ea5b6e6ddf0dc99f13e467a77335ea2de603041742e16fe4707` |
| 17 | `theorem` | [nontrivial_iff_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/nontrivial-iff-ne-bot--814c0c9572d3ea3fdb649272.md) | 130 | `result-track:814c0c9572d3ea3fdb6492723f15c32f99d0838dfcb19c733fed4a5fbba59861` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--37501a59735c2ab9f0e6b458.md) | 138 | `declaration-track:37501a59735c2ab9f0e6b4581683d789007bdb4798e8f42d19b94bb88c57a245` |
| 19 | `theorem` | [top_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/top-coe--eb0d8a6ba06f7ae9bd5d0f10.md) | 144 | `result-track:eb0d8a6ba06f7ae9bd5d0f1033377faa053d35f0346a9dca9d334cdcfa056605` |
| 20 | `theorem` | [top_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/top-toaddsubmonoid--6e67f05c18069b8bc7eb257b.md) | 148 | `result-track:6e67f05c18069b8bc7eb257bccbd68a46112df26ec44101845562f03460a36dc` |
| 21 | `lemma` | [top_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/top-toaddsubgroup--d05e0275567c3d74382fe1ae.md) | 152 | `result-track:d05e0275567c3d74382fe1ae2258d0586ce1727921132fe48955654accb7f574` |
| 22 | `theorem` | [mem_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-top--982bd7c37c6ddebb2874d6a9.md) | 156 | `result-track:982bd7c37c6ddebb2874d6a9aa8efb6c96292e8be8fd11d9e319cda7fc20c6d9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--15c0b3bd5801e7a13d450443.md) | 159 | `declaration-track:15c0b3bd5801e7a13d4504436a062005cf5fcbcb59bc59840224f933ca3b45d1` |
| 24 | `theorem` | [eq_top_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/eq-top-iff--bcf1955ad4e7e5886c21f740.md) | 163 | `result-track:bcf1955ad4e7e5886c21f740bce5c085d01271364b08d8241f20f1227cb89c70` |
| 25 | `def` | [topEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/topequiv--fa41c56fdcc680dea077eb9f.md) | 170 | `declaration-track:fa41c56fdcc680dea077eb9f15dcdbc1a83af682485e28b3e90a716ceadee06c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--fa0e8006f4f74234ab4f0d1b.md) | 182 | `declaration-track:fa0e8006f4f74234ab4f0d1b9a644841d343e8efac5cb6fd5350bde19088dbce` |
| 27 | `theorem` | [sInf_le'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/sinf-le--953105ae9b2249d1ea20de56.md) | 189 | `result-track:953105ae9b2249d1ea20de56f0ccaee3f5dcadb81eb2b8f99031bfa5a90bb4b3` |
| 28 | `theorem` | [le_sInf'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/le-sinf--c80e80f27f3cc158f9e3e346.md) | 192 | `result-track:c80e80f27f3cc158f9e3e346050ae2ac22fe588f709cdd409180b5d978900ff4` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--46fb516d239c076585c7590f.md) | 195 | `declaration-track:46fb516d239c076585c7590f61c8fbb3f9ee147aab62097742900639899c3126` |
| 30 | `instance` | [completeLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/completelattice--f874300444e3d2e92ac62905.md) | 202 | `declaration-track:f874300444e3d2e92ac629059a28546493c182afe86d2bca7182f18da6a40b43` |
| 31 | `theorem` | [inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/inf-coe--c88f1e680f52d5badcf65107.md) | 220 | `result-track:c88f1e680f52d5badcf65107e0df4249fa8946dad7fb5ee14c3c6c30aa11a301` |
| 32 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-inf--e8f772d56a105fd5f2d5ab31.md) | 224 | `result-track:e8f772d56a105fd5f2d5ab31b8f3b15d4bff80339d63308654d5295083ce8d83` |
| 33 | `theorem` | [sInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/sinf-coe--c460a92df8934546bdfc6655.md) | 228 | `result-track:c460a92df8934546bdfc66550401306ee846f6d9d494545d3b6a70f7c48eb447` |
| 34 | `theorem` | [finset_inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/finset-inf-coe--dea6f5af5d5432c4c8cc3dd4.md) | 232 | `result-track:dea6f5af5d5432c4c8cc3dd47d21a6cae155d728bbd4212943a4793d39cc4faf` |
| 35 | `theorem` | [iInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/iinf-coe--5be4fa921321cd1f8edaf311.md) | 241 | `result-track:5be4fa921321cd1f8edaf31101f404bb35245e0c3bba499fc31a012e0585e163` |
| 36 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-sinf--0b3b3603a3807ad18ba129bb.md) | 245 | `result-track:0b3b3603a3807ad18ba129bb7bef02555e81ca8b3121a9186e735371e9bd082d` |
| 37 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-iinf--5f5c45e6c670ff4c23959848.md) | 249 | `result-track:5f5c45e6c670ff4c239598487b82ef347934e9d73c90d6be80cd90fa743fa84b` |
| 38 | `theorem` | [mem_finset_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-finset-inf--e812b3f7b06ac9127e88e3a7.md) | 253 | `result-track:e812b3f7b06ac9127e88e3a7b59eadcc2b751db4b75c5b73fa21d5fb8c1ff9e6` |
| 39 | `lemma` | [inf_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/inf-iinf--085b901f67715d18a12b35a8.md) | 257 | `result-track:085b901f67715d18a12b35a879314310d74ea29999463b450e6611429321fade` |
| 40 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-sup-left--96a56321e8403275ba5c2ce8.md) | 261 | `result-track:96a56321e8403275ba5c2ce82bbb7b22f628a88d3d7d4047c5df64cc0fe97d1c` |
| 41 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-sup-right--638eea273777cc59e018eafe.md) | 266 | `result-track:638eea273777cc59e018eafeb0b63d76e868e76a4414ec67df9fb0d484d01650` |
| 42 | `theorem` | [add_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/add-mem-sup--070b13ebcae9413c103a1507.md) | 271 | `result-track:070b13ebcae9413c103a15074b7b555c8ccba227fe4ebc9880a9aebfd975ba0e` |
| 43 | `theorem` | [sub_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/sub-mem-sup--f41d40055ae25db509fe77bd.md) | 274 | `result-track:f41d40055ae25db509fe77bd8d06097ac6286e6c70ac804b0cbdf7e0f81190a6` |
| 44 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-isup-of-mem--cbc5e29510f97ea4ccc16cc1.md) | 279 | `result-track:cbc5e29510f97ea4ccc16cc123dd370b011266363a888cb4896b3963cae90c81` |
| 45 | `theorem` | [sum_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/sum-mem-isup--fd84b69485bd464ef1ab9d03.md) | 283 | `result-track:fd84b69485bd464ef1ab9d03731076968f0732950c14eb1efd56f939a2111d85` |
| 46 | `theorem` | [sum_mem_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/sum-mem-bisup--127a9bbf928fd2b404d896ba.md) | 287 | `result-track:127a9bbf928fd2b404d896ba688786a500b6a785cfe559e5719f14b4e4414822` |
| 47 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-ssup-of-mem--2c8850befc021fa1ceebf4cf.md) | 294 | `result-track:2c8850befc021fa1ceebf4cf28aa865f4ec4862cbc0e75c7b9615752a16c4c96` |
| 48 | `theorem` | [toAddSubmonoid_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/toaddsubmonoid-ssup--df1147090d861a9abec3437f.md) | 301 | `result-track:df1147090d861a9abec3437f5278cb71ad84570298458f2472067c80e9310b00` |
| 49 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/subsingleton-iff--34f1c719b65aac60af5ab0ec.md) | 324 | `result-track:34f1c719b65aac60af5ab0ec6dfeecf155464e2aa4ace3b1788f832a51505b37` |
| 50 | `theorem` | [nontrivial_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/nontrivial-iff--f63a651b37ce43214e80fb34.md) | 331 | `result-track:f63a651b37ce43214e80fb3425c706f4d28ee56f76b7166fcfa750495b37e5ae` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--d280b69c22993687f79df9d3.md) | 338 | `declaration-track:d280b69c22993687f79df9d3f8be4fb4d8ed5eac283532a6057249ab13022957` |
| 52 | `instance` | [unique'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/unique--cde0a3ecd504f305d969ec19.md) | 341 | `declaration-track:cde0a3ecd504f305d969ec193ce5bbaa4bc37469259d70f53cb018c3018b93a3` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/instance--3233bb0ffac5ec8858f9a4fe.md) | 344 | `declaration-track:3233bb0ffac5ec8858f9a4fefcad4adce3697124e003d6dadfb9597e0c71fdad` |
| 54 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/disjoint-def--9a737acc99015d3d5d0b24f6.md) | 351 | `result-track:9a737acc99015d3d5d0b24f65b199652dc60159cc76d70932fc81dc384a8682d` |
| 55 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/disjoint-def--5e18cd9e9e0be8c00e7bfd0e.md) | 354 | `result-track:5e18cd9e9e0be8c00e7bfd0e94ef8b7d42082012f5afb3beeebeacb7772528e5` |
| 56 | `theorem` | [eq_zero_of_coe_mem_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/eq-zero-of-coe-mem-of-disjoint--2ffd2496381797210286006d.md) | 359 | `result-track:2ffd2496381797210286006d63ee10db69ace560365ed8dc5a896bea6f0e9853` |
| 57 | `theorem` | [mem_right_iff_eq_zero_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-right-iff-eq-zero-of-disjoint--7372e34496960cb2547529df.md) | 362 | `result-track:7372e34496960cb2547529df7534f3769e14e972aaa817207a40e86a38818835` |
| 58 | `theorem` | [mem_left_iff_eq_zero_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/mem-left-iff-eq-zero-of-disjoint--cd63954f2aa3e8dad7140bc1.md) | 366 | `result-track:cd63954f2aa3e8dad7140bc1778c945970ace8541af562280d84252bec78987a` |
| 59 | `def` | [AddSubmonoid.toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubmonoid-tonatsubmodule--0e1f0ebe3ee0be5836537078.md) | 379 | `declaration-track:0e1f0ebe3ee0be5836537078a9e74e8873279f82361482ba9a0275361f295041` |
| 60 | `theorem` | [AddSubmonoid.toNatSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubmonoid-tonatsubmodule-symm--ea3c7d4f10b4d1d5ab335c57.md) | 387 | `result-track:ea3c7d4f10b4d1d5ab335c572302523e460e1b1f49399bd74a447d2f3b65d0c1` |
| 61 | `theorem` | [AddSubmonoid.coe_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubmonoid-coe-tonatsubmodule--65b6d2134d74d9cc0883961d.md) | 392 | `result-track:65b6d2134d74d9cc0883961dbb10800a931955dbbd52e135d8f2804c0602b3af` |
| 62 | `theorem` | [AddSubmonoid.toNatSubmodule_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubmonoid-tonatsubmodule-toaddsubmonoid--5be605fb06ef45d65e2be0ec.md) | 397 | `result-track:5be605fb06ef45d65e2be0ec6d76ea2c64b2714721f11daf494f84afe6971940` |
| 63 | `theorem` | [Submodule.toAddSubmonoid_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/submodule-toaddsubmonoid-tonatsubmodule--abdeb82968d8e1d51ea10d54.md) | 402 | `result-track:abdeb82968d8e1d51ea10d547e68f97816cd7e29950151be4acf538e4378a5fb` |
| 64 | `def` | [AddSubgroup.toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubgroup-tointsubmodule--b218e64f030f7ead22983024.md) | 419 | `declaration-track:b218e64f030f7ead2298302449789796b498d1580e84a49db8a3e92e0f91508c` |
| 65 | `theorem` | [AddSubgroup.toIntSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubgroup-tointsubmodule-symm--c41ffcccc0484986d52781fd.md) | 427 | `result-track:c41ffcccc0484986d52781fd433d24ed171328d051b90423cc5a02153a7c91ad` |
| 66 | `theorem` | [AddSubgroup.coe_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubgroup-coe-tointsubmodule--c6f23d1aa79332a227bba85c.md) | 432 | `result-track:c6f23d1aa79332a227bba85c9474155dc23a8bec3199af5661f8293cc21e44f3` |
| 67 | `theorem` | [AddSubgroup.toIntSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/addsubgroup-tointsubmodule-toaddsubgroup--10d975b7734186e42da55ccd.md) | 437 | `result-track:10d975b7734186e42da55ccdb30250c66a016e460f430aff9293b2425b9c6b21` |
| 68 | `theorem` | [Submodule.toAddSubgroup_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7cb6430d0bf0e83dcbb1c467180a5331a894ffa723185a17e1059d3cba54c291.lean/declarations/submodule-toaddsubgroup-tointsubmodule--c488558840b048ba057cb30b.md) | 442 | `result-track:c488558840b048ba057cb30b13efdbe77293c67b2a44f171cd8acf85bbba7437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
