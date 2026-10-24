# Verification target: GRWTSK.NumberTheory.Lemmas.Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ebbf6afb51626b0bc9e5e4351ebb74c8a5303e6`.

Source path: `GRWTSK/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_iff](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/eq-iff--9c177c6806d3e92d4ebfebd6.md) | 34 | `result-track:9c177c6806d3e92d4ebfebd6030fd964f26b7559bf2517daae38f1cdc54efdcf` |
| 2 | `theorem` | [domRestrict_ofUnitHom](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/domrestrict-ofunithom--4e528b3bf96decc093b8976f.md) | 39 | `result-track:4e528b3bf96decc093b8976fd59fe7db9192b427f0fec89a7281f173bc5e4535` |
| 3 | `def` | [starComp](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/starcomp--faf954729db811e4949f802d.md) | 56 | `declaration-track:faf954729db811e4949f802db926c67d9a5eb498c7699e8f1a84f94e93b42af7` |
| 4 | `instance` | [instStarMul](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/inststarmul--8696563745f0520b4e843afa.md) | 59 | `declaration-track:8696563745f0520b4e843afa46f7cd9f6b2042689054229c6156ad63846a9eef` |
| 5 | `lemma` | [star_apply](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/star-apply--bbb19abadfeff7b4503a5854.md) | 69 | `result-track:bbb19abadfeff7b4503a58541ec31623ebf332b38009d8b9922bb7b4788c2d18` |
| 6 | `lemma` | [apply_mem_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/apply-mem-rootsofunity--b30781a91b9e9b792674f2f0.md) | 73 | `result-track:b30781a91b9e9b792674f2f01167cd1d6b4d98ed4b0e6c9770237bd82f337d3a` |
| 7 | `lemma` | [star_eq_inv](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/star-eq-inv--0105348af34abf5a09451697.md) | 81 | `result-track:0105348af34abf5a09451697d5b7785dce2150833d7b8251e8499fe21eaa5226` |
| 8 | `lemma` | [star_apply'](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/star-apply--1d2eda8db4feec3b6ec86836.md) | 87 | `result-track:1d2eda8db4feec3b6ec8683616cab3b2a2eec9f9244ffa10b1ea69768c0c60f9` |
| 9 | `def` | [ofRootOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/ofrootofunity--a149532b6367b685405a32e6.md) | 104 | `declaration-track:a149532b6367b685405a32e6b804efaa1c43725d6c04e3953a0c145946bacb20` |
| 10 | `lemma` | [ofRootOfUnity_spec](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/ofrootofunity-spec--9630e5efec449607db0f0968.md) | 112 | `result-track:9630e5efec449607db0f0968b5a51a6b43102ac2bd599564d853b44b96227551` |
| 11 | `def` | [equiv_rootsOfUnity](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/equiv-rootsofunity--b7a6c9545aaa81cbb975bcf1.md) | 121 | `declaration-track:b7a6c9545aaa81cbb975bcf177e53f77d462201d3294ec381caa23fccc1ae090` |
| 12 | `lemma` | [exists_mulChar_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/exists-mulchar-orderof--9c15ddb42a84b9d5c6e1fe14.md) | 151 | `result-track:9c15ddb42a84b9d5c6e1fe141e20f58d6c5d980ebc8feca46003479b281dd795` |
| 13 | `lemma` | [orderOf_dvd_card_sub_one](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/orderof-dvd-card-sub-one--c23ffa91904c67222f9eb878.md) | 174 | `result-track:c23ffa91904c67222f9eb8780ab5018c0062f6784c0fa5e2cfd2e7b68a7e49e2` |
| 14 | `lemma` | [exists_mulChar_orderOf_eq_card_units](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/exists-mulchar-orderof-eq-card-units--2e1ab7a8a17a9d1d3e49584f.md) | 181 | `result-track:2e1ab7a8a17a9d1d3e49584fd88c0696be56353eba60febc9b40afc9d3eebac4` |
| 15 | `lemma` | [apply_mem_rootsOfUnity_orderOf](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/apply-mem-rootsofunity-orderof--107e65fb11a1f31d2b0a8ddb.md) | 192 | `result-track:107e65fb11a1f31d2b0a8ddb84ff2ae8a9d7dabe87ba081215b0db78b9fa5823` |
| 16 | `lemma` | [apply_mem_rootsOfUnity_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/apply-mem-rootsofunity-of-pow-eq-one--fa5c576fe07781364bbbae8c.md) | 203 | `result-track:fa5c576fe07781364bbbae8c60ffa48aded258f610c0a25fe5b9f32fab493e94` |
| 17 | `lemma` | [exists_apply_eq_pow](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/exists-apply-eq-pow--7ae1e0c3c53d7ebfdf7a431f.md) | 214 | `result-track:7ae1e0c3c53d7ebfdf7a431f49bf03f9d4a86d58a5b863705588fae4ee045f1d` |
| 18 | `lemma` | [apply_mem_algebraAdjoin_of_pow_eq_one](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/apply-mem-algebraadjoin-of-pow-eq-one--21e1a02af9cee722a6bb17e6.md) | 224 | `result-track:21e1a02af9cee722a6bb17e69a073e7836b3d727f20a9a95047cb9644f930172` |
| 19 | `lemma` | [apply_mem_algebraAdjoin](../../../../mathematics/NumberTheory/Lemmas/Variant5fbd306c2b84dffeb247c228a193b8d1496acb805a286aac6e6ab0d7bbca427f.lean/declarations/apply-mem-algebraadjoin--e1d292f62b4108ed16d7b229.md) | 236 | `result-track:e1d292f62b4108ed16d7b2291ef069a5b9f8275889381835896c8c2ebb2c7fdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
