# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc444e933091e0f8de7b5993b53978349d5b4a0",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc444e933091e0f8de7b5993b53978349d5b4a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.PUnitInstances` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--89071a1b65c27f297b489e85.md) | 44 | `declaration-track:89071a1b65c27f297b489e85c6359dfe97cf41afb197609b3e00b50b9fc4e1a5` |
| 2 | `instance` | [inhabited'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/inhabited--5e112c9d16b630de881503d4.md) | 49 | `declaration-track:5e112c9d16b630de881503d41c06fb9ffe89aa285e5cb0e2b2d9fe4b949c35a1` |
| 3 | `theorem` | [bot_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/bot-coe--9e61b21396bdcbae73aca5f3.md) | 54 | `result-track:9e61b21396bdcbae73aca5f30a3ad9ddb15aaff390176606f9f0ff907c756c26` |
| 4 | `theorem` | [bot_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/bot-toaddsubmonoid--7dc24e70c72b6f041e11100d.md) | 59 | `result-track:7dc24e70c72b6f041e11100dfa3a972e1425f9794ffe988b30d5ed2ed4f5315b` |
| 5 | `theorem` | [restrictScalars_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/restrictscalars-bot--10e1132cac98b854690bae2a.md) | 68 | `result-track:10e1132cac98b854690bae2acb71d8ac379114f85426d3d580a85efd11d43aff` |
| 6 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-bot--820074113e93b49b392749d0.md) | 73 | `result-track:820074113e93b49b392749d012c7cdada63ed45b54dc87cd39398410c8e498fe` |
| 7 | `theorem` | [restrictScalars_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/restrictscalars-eq-bot-iff--23e36ead3bdf4f2f05c388c2.md) | 80 | `result-track:23e36ead3bdf4f2f05c388c2952b387d878c69a45922c89b38e2a97590cc24be` |
| 8 | `instance` | [uniqueBot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/uniquebot--f6fc0c8d128b9abf70e9ddfc.md) | 84 | `declaration-track:f6fc0c8d128b9abf70e9ddfcf76b11e5f1ec7e5d45be90a03f0dc06954171037` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--e853ac15018f8a5465444b4e.md) | 88 | `declaration-track:e853ac15018f8a5465444b4e323cf253330046b018a801ecfcf0ebf142b6be2f` |
| 10 | `theorem` | [eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/eq-bot-iff--d29971a7225503c78a3ab8a5.md) | 92 | `result-track:d29971a7225503c78a3ab8a53d32a8dfd69509dbecfa0d8f7be41d232e0f4331` |
| 11 | `theorem` | [bot_ext](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/bot-ext--e8df41b2c441b08f5e45c249.md) | 98 | `result-track:e8df41b2c441b08f5e45c2490bb893504cc7c7614f61fee9f57eb7e857e5dea4` |
| 12 | `theorem` | [ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/ne-bot-iff--fbe058acf2b6b9c5c7ca7432.md) | 104 | `result-track:fbe058acf2b6b9c5c7ca74329b9c4745b10a0f90cfae71b343e8761c2e4c1ce8` |
| 13 | `theorem` | [nonzero_mem_of_bot_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/nonzero-mem-of-bot-lt--db4b14b03171282fc4b6b863.md) | 108 | `result-track:db4b14b03171282fc4b6b863568c94aa188fa68f26120c1a386a4e067b2da641` |
| 14 | `theorem` | [exists_mem_ne_zero_of_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/exists-mem-ne-zero-of-ne-bot--a9c840a630e71436c827a439.md) | 113 | `result-track:a9c840a630e71436c827a439a49d4f9185775b912784c5217a99a3722068f340` |
| 15 | `def` | [botEquivPUnit](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/botequivpunit--83d13f1b72ea9aee2f6b2ad1.md) | 121 | `declaration-track:83d13f1b72ea9aee2f6b2ad109e856782fed5872a316524e4bd34aca45417cd1` |
| 16 | `theorem` | [eq_bot_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/eq-bot-of-subsingleton--1b237d94fd5734410a31b9c6.md) | 130 | `result-track:1b237d94fd5734410a31b9c6a90a8bfb7383cb927a9deaf57262e376905f422b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--7e62835c922e395cc26d47d6.md) | 137 | `declaration-track:7e62835c922e395cc26d47d6407c0575b92eb21207f2670f788af8aa9425905a` |
| 18 | `theorem` | [top_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/top-coe--d24d4a10aaaa5c680a922c36.md) | 143 | `result-track:d24d4a10aaaa5c680a922c36ead547c1423e9a02d1f6aa778e246b86c76bfe03` |
| 19 | `theorem` | [top_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/top-toaddsubmonoid--818ebfc8d260e45790e30fdd.md) | 148 | `result-track:818ebfc8d260e45790e30fdd4c600d156a6704413c9796f60ba529481776a661` |
| 20 | `theorem` | [mem_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-top--44a631d9f19e49e072c9fe7b.md) | 153 | `result-track:44a631d9f19e49e072c9fe7b394e1374184c9668e2cd60cdf1d8ecff450cd577` |
| 21 | `theorem` | [restrictScalars_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/restrictscalars-top--c8ec0dabaf5626113182ccbb.md) | 162 | `result-track:c8ec0dabaf5626113182ccbbdfd47a21f2d5aa6a5f2bca72fbda307749a2ccaf` |
| 22 | `theorem` | [restrictScalars_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/restrictscalars-eq-top-iff--8934ee6bd2a80bcdb7ad14c6.md) | 169 | `result-track:8934ee6bd2a80bcdb7ad14c64ac2fbe466669609c1020d1ec6f3ed096e5c25fc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--9008ac4ace9d08e10c2d9435.md) | 173 | `declaration-track:9008ac4ace9d08e10c2d9435a36b99c7f2adace7750d23f4c91a616b93555813` |
| 24 | `theorem` | [eq_top_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/eq-top-iff--9423032bb564c0a82061d07c.md) | 177 | `result-track:9423032bb564c0a82061d07c1141ba1becea89d28c66f2c339c088fb688d60ff` |
| 25 | `def` | [topEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/topequiv--da5d711a71baafac38a1387a.md) | 185 | `declaration-track:da5d711a71baafac38a1387ad5b04a85fd74a980c57896e4546b0a63ecc2c090` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--d9274d2e597d8449626ed300.md) | 194 | `declaration-track:d9274d2e597d8449626ed30033c0cc21ca832017672e7bd7bc6fbdb280e5786d` |
| 27 | `theorem` | [sInf_le'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/sinf-le--45153980c11e385d465f4f95.md) | 201 | `result-track:45153980c11e385d465f4f9502bd3e29479e0471c1a9856f9cb252e601f67d55` |
| 28 | `theorem` | [le_sInf'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/le-sinf--de89a6a56abe997a9ac65f01.md) | 204 | `result-track:de89a6a56abe997a9ac65f01d568a23f9e312034762d0bbf33f1a3af2425e896` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/instance--535e82551451a7696f68652a.md) | 207 | `declaration-track:535e82551451a7696f68652a87642f1d6b580b88db55c8b7eab1ae92bd8e609b` |
| 30 | `instance` | [completeLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/completelattice--aa7f9d6536aa50324576cbfb.md) | 214 | `declaration-track:aa7f9d6536aa50324576cbfbba8fc5daf88e48ced6ee30039968448fcde41408` |
| 31 | `theorem` | [inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/inf-coe--d10d0ea5b825680f182f4dc6.md) | 232 | `result-track:d10d0ea5b825680f182f4dc6605c6321b7e5cdea52d72362f2549cf66c349de8` |
| 32 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-inf--98161fb0c1e55449283e07bd.md) | 237 | `result-track:98161fb0c1e55449283e07bd5776c8d334a14c880681cf999779a5f8d1cc6f44` |
| 33 | `theorem` | [sInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/sinf-coe--377b3fececbb6c1fe1859889.md) | 242 | `result-track:377b3fececbb6c1fe18598899073de49d1245738bc0037e26730a73e3a464b0c` |
| 34 | `theorem` | [finset_inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/finset-inf-coe--2f5a3c8c39c9f70880963774.md) | 247 | `result-track:2f5a3c8c39c9f70880963774df8dcdfb670ab4a97c5db68fd4bc0cce6cef6f98` |
| 35 | `theorem` | [iInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/iinf-coe--7aba9471032b39ccc630199c.md) | 257 | `result-track:7aba9471032b39ccc630199c414326f3622c4a1401c793d4dde86fc80c96fdd0` |
| 36 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-sinf--820fcab6e5ba1baf2d37dbd4.md) | 262 | `result-track:820fcab6e5ba1baf2d37dbd4714d7e1cca6dab430580a4a7600321a7841a23aa` |
| 37 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-iinf--dbf8a3a675431d420ad852aa.md) | 267 | `result-track:dbf8a3a675431d420ad852aad560e78a0b3c3dc4627298bde01d15413c4ecc35` |
| 38 | `theorem` | [mem_finset_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-finset-inf--9626f06574a4de77cccec6e4.md) | 272 | `result-track:9626f06574a4de77cccec6e404c1e7df60793ca6c4e77f339f4d5e2f5bb6ea30` |
| 39 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-sup-left--6259712bf7bdeca97f5690e3.md) | 277 | `result-track:6259712bf7bdeca97f5690e377cd91bb5f537f6d495cc91c5e2ea7c76839bc3f` |
| 40 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-sup-right--688a5352bc2bca5031e7bf29.md) | 283 | `result-track:688a5352bc2bca5031e7bf292ee7a3a97fc5cbe0612b6a68901d4b4533e2b501` |
| 41 | `theorem` | [add_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/add-mem-sup--cd94102a5696db0c436a3ac8.md) | 289 | `result-track:cd94102a5696db0c436a3ac80a896b7b68b54c97d258f69c6f68c26dfa2c21d4` |
| 42 | `theorem` | [sub_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/sub-mem-sup--cfc05699b92e80a91c440474.md) | 293 | `result-track:cfc05699b92e80a91c4404741b701e0d8baab0fe9373237e70ab9408849d4f9f` |
| 43 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-isup-of-mem--c307345c121970a8bd6ad395.md) | 299 | `result-track:c307345c121970a8bd6ad395ae7225c441dd27f22c29f0ef6de6b03aa58ba1d2` |
| 44 | `theorem` | [sum_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/sum-mem-isup--82b3d9ee4b74b36d48faff6e.md) | 306 | `result-track:82b3d9ee4b74b36d48faff6ea6af62a6d789ad1e81957d856e48899de6bc7196` |
| 45 | `theorem` | [sum_mem_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/sum-mem-bisup--57be0e4d24d448d731a07882.md) | 311 | `result-track:57be0e4d24d448d731a078827235fa0c2cb40c270dfb3a8029fc65747fec1d51` |
| 46 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/mem-ssup-of-mem--d4b88b3e94d54c644cb5da02.md) | 319 | `result-track:d4b88b3e94d54c644cb5da028a494c5650180063cdaf1fd6ff2ec3eba3a8bb45` |
| 47 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/disjoint-def--ccd77e9b2bbcc7f1975a0ead.md) | 326 | `result-track:ccd77e9b2bbcc7f1975a0ead201e07027f6ecc4a957ff22258f4fd85bbcd5de8` |
| 48 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/disjoint-def--a299a950395a11f352f0287b.md) | 330 | `result-track:a299a950395a11f352f0287b5d4a84e907018ff9c3bb746e08ddfd5fb449f920` |
| 49 | `theorem` | [eq_zero_of_coe_mem_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/eq-zero-of-coe-mem-of-disjoint--39ee271cfdc46385dba85e36.md) | 336 | `result-track:39ee271cfdc46385dba85e36f5a8203fe9937c281be4cccdbb1fe9de7ede673e` |
| 50 | `def` | [AddSubmonoid.toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubmonoid-tonatsubmodule--7110b12ea5314b370ce3345a.md) | 346 | `declaration-track:7110b12ea5314b370ce3345a9c02a9e71f7c8aec8f4a4b0c378ae952e45b58b8` |
| 51 | `theorem` | [AddSubmonoid.toNatSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubmonoid-tonatsubmodule-symm--17946d9a1e66d90b219e4c42.md) | 355 | `result-track:17946d9a1e66d90b219e4c42b3a1fc26ad423740482a825a663d6de33dbf9d19` |
| 52 | `theorem` | [AddSubmonoid.coe_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubmonoid-coe-tonatsubmodule--4f5c6559d7cb82a7e4f5e96b.md) | 361 | `result-track:4f5c6559d7cb82a7e4f5e96ba93d9fa430c8b8509286347abe2da07d3be67929` |
| 53 | `theorem` | [AddSubmonoid.toNatSubmodule_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubmonoid-tonatsubmodule-toaddsubmonoid--a652b678417254b40a6d93f8.md) | 367 | `result-track:a652b678417254b40a6d93f81a2041b684fb7ce62649a6ec4df6da5a5aa20cae` |
| 54 | `theorem` | [Submodule.toAddSubmonoid_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/submodule-toaddsubmonoid-tonatsubmodule--7d0bf79ccca1ab05689504b4.md) | 373 | `result-track:7d0bf79ccca1ab05689504b4f1bc37eb3d3cd4fca3ac1a336ddc9fba1a82d466` |
| 55 | `def` | [AddSubgroup.toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubgroup-tointsubmodule--d3da237741112569e2f50b41.md) | 388 | `declaration-track:d3da237741112569e2f50b4105e49bb51d5a14205a295675b05c2a08bd61d1e5` |
| 56 | `theorem` | [AddSubgroup.toIntSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubgroup-tointsubmodule-symm--31bbd393956ba6fd06008ffe.md) | 397 | `result-track:31bbd393956ba6fd06008ffeb307a085e29f4453a8137b84e40b5aebd4c92b03` |
| 57 | `theorem` | [AddSubgroup.coe_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubgroup-coe-tointsubmodule--dbc62fcb596ee4b85a4ac2a7.md) | 403 | `result-track:dbc62fcb596ee4b85a4ac2a75d1621f6db87b5162bf76c4efd28dd8089a47c5c` |
| 58 | `theorem` | [AddSubgroup.toIntSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/addsubgroup-tointsubmodule-toaddsubgroup--949a634f8c4b05b6271ca905.md) | 409 | `result-track:949a634f8c4b05b6271ca9056b651518e73110a350e62c4d1bc9ad152ab4f13d` |
| 59 | `theorem` | [Submodule.toAddSubgroup_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/declarations/submodule-toaddsubgroup-tointsubmodule--cf336b9c3515e96fe56240bf.md) | 415 | `result-track:cf336b9c3515e96fe56240bfeec40dd636c78ff48d715c4fd2fd38a99c9ea92c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
