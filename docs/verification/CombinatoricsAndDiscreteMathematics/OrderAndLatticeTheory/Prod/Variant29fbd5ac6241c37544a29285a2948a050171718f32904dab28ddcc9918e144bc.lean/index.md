# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Prod.Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c664eccfe6da7b1e2a84a7121182b44fa491b63d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c664eccfe6da7b1e2a84a7121182b44fa491b63d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Closure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/isupperset-prod--bf64a8482e552f409f103d73.md) | 31 | `result-track:bf64a8482e552f409f103d739ce0d78f06e544bc53ccc8fdc3cc42db1a9760f2` |
| 2 | `theorem` | [IsLowerSet.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/islowerset-prod--70642f62bf96a4cdcce944e7.md) | 34 | `result-track:70642f62bf96a4cdcce944e738f8c4273a30a29403e1154fa6abc66c167d141c` |
| 3 | `def` | [prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod--19ded838f864dd6de5d3c060.md) | 44 | `declaration-track:19ded838f864dd6de5d3c06076aa5424af98d42f6a2d11ba00741073ce7b2731` |
| 4 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/instsprod--e28e604ace2b1c1232a3447d.md) | 47 | `declaration-track:e28e604ace2b1c1232a3447d1350f318da483d8c9272f34052902816fb081078` |
| 5 | `theorem` | [coe_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/coe-prod--895682b756ce2e2b6802d923.md) | 51 | `result-track:895682b756ce2e2b6802d923bdae9b38dd3e43aeb852b08e190902b715b2e447` |
| 6 | `theorem` | [mem_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/mem-prod--f26d98a8b698f832aff4a58a.md) | 55 | `result-track:f26d98a8b698f832aff4a58a15a323364f1360be2cf1862becb7494a7ba99dbf` |
| 7 | `theorem` | [Ici_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/ici-prod--02ccf508ce0c788b017a9ecd.md) | 58 | `result-track:02ccf508ce0c788b017a9ecd2ef3aeb235c1859ba95fa8e6d2eb1e29a3d557da` |
| 8 | `theorem` | [Ici_prod_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/ici-prod-ici--edaf3e00560c21a3b44822f9.md) | 62 | `result-track:edaf3e00560c21a3b44822f9c5850d20789594e7537c81945f65762a1366184e` |
| 9 | `theorem` | [prod_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-top--d95b934b6740c54d0bcf2352.md) | 66 | `result-track:d95b934b6740c54d0bcf2352e1c8f3c38c5c9a71178dc43f6c9f60f55ddbe747` |
| 10 | `theorem` | [top_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/top-prod--806fd237c85a556a38a8a014.md) | 70 | `result-track:806fd237c85a556a38a8a01484915c64082ddf27c99436866fcbfde6c7059f2e` |
| 11 | `theorem` | [bot_prod_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/bot-prod-bot--cb5e830a72e8d2aed8e8d5b2.md) | 74 | `result-track:cb5e830a72e8d2aed8e8d5b290035228372f7a21001778b9eeec31dff7c7a3da` |
| 12 | `theorem` | [sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/sup-prod--b2fa3604f1c0e9666ad2693d.md) | 78 | `result-track:b2fa3604f1c0e9666ad2693dc41cfff581c7274cee0f601293f1cc436f89bbdf` |
| 13 | `theorem` | [prod_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-sup--d3a4793384a50a82e5edf4c2.md) | 82 | `result-track:d3a4793384a50a82e5edf4c233a233f907401b416181c02f961200910de3e4e0` |
| 14 | `theorem` | [inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/inf-prod--c08b54f35e41f6b3ca3376c9.md) | 86 | `result-track:c08b54f35e41f6b3ca3376c94e04359a6da7458313f7a71f83e28ceb8e705515` |
| 15 | `theorem` | [prod_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-inf--f1b79bc2d0faff3c0ac87047.md) | 90 | `result-track:f1b79bc2d0faff3c0ac87047c3bc8e9772238f8007fd2d393aa4b1fd478eb7ab` |
| 16 | `theorem` | [prod_sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-sup-prod--0229c82941318e194753efc9.md) | 93 | `result-track:0229c82941318e194753efc9945299784833054a6136da365d066c4de2564205` |
| 17 | `theorem` | [prod_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono--33c666e35fbf7df5f6a77b50.md) | 99 | `result-track:33c666e35fbf7df5f6a77b500251f8d87af8f533c9407306599ba578e0ef558e` |
| 18 | `theorem` | [prod_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono-left--ecf56a2e1df334e92d841633.md) | 102 | `result-track:ecf56a2e1df334e92d8416335925ea9f225b831901e094bc3359a035f27157ba` |
| 19 | `theorem` | [prod_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono-right--c4b4d130521e7bf8188f42a9.md) | 105 | `result-track:c4b4d130521e7bf8188f42a9ff028675fe87599d6b3c9c0e5d60f666df8bf14f` |
| 20 | `theorem` | [prod_self_le_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-self-le-prod-self--ade6dd2a91c1996d63cbecf0.md) | 109 | `result-track:ade6dd2a91c1996d63cbecf0f1d39f8cf9a3378f2d678ef162674684239df9d9` |
| 21 | `theorem` | [prod_self_lt_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-self-lt-prod-self--5f3dcf68986a382ffa98a25f.md) | 113 | `result-track:5f3dcf68986a382ffa98a25f28161c560991b333afcb2e89f01ac6dd2beb5977` |
| 22 | `theorem` | [prod_le_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-le-prod-iff--044f307ca63415ca9bcd525e.md) | 116 | `result-track:044f307ca63415ca9bcd525ee01c09c5536cb596d98cd0753696e08ab2183334` |
| 23 | `theorem` | [prod_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-eq-top--a130b2f2b03c1b506517aa1b.md) | 120 | `result-track:a130b2f2b03c1b506517aa1b4ccc1a3e5244cac8252a7d9268a7e3ac248dd0da` |
| 24 | `theorem` | [codisjoint_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/codisjoint-prod--8efe43f50080e5f60b0f9b0d.md) | 125 | `result-track:8efe43f50080e5f60b0f9b0d3d6a61f4646b4c90d554afa66e67c4015b3f4109` |
| 25 | `def` | [prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod--d5f0e8c8d0d84ec0a3d45cae.md) | 136 | `declaration-track:d5f0e8c8d0d84ec0a3d45cae96b1f6e1ee8506dd149f1dd7c072f211c28fc91d` |
| 26 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/instsprod--cb83fd42047577a89e858306.md) | 138 | `declaration-track:cb83fd42047577a89e85830642c28f7e24060d043261c3e2d8bedb0ae1394399` |
| 27 | `theorem` | [coe_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/coe-prod--6b18c03d5c6bb4598b02103c.md) | 142 | `result-track:6b18c03d5c6bb4598b02103ced4e32230ca8d89f9f6045185ae27073bcd5448e` |
| 28 | `theorem` | [mem_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/mem-prod--1ba92d7aa76a14cd83ef07d9.md) | 145 | `result-track:1ba92d7aa76a14cd83ef07d9cebd2556e1b8ab3c92c9cd0e728d6984f4b1ffeb` |
| 29 | `theorem` | [Iic_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/iic-prod--634bec5d5584ed646ed0a137.md) | 148 | `result-track:634bec5d5584ed646ed0a1371748b59b8e47b075e2511faecd35fe1a53edd5ec` |
| 30 | `theorem` | [Ici_prod_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/ici-prod-ici--49bb3b5c34d17147e42d7883.md) | 152 | `result-track:49bb3b5c34d17147e42d7883a518aaf435ef1b9dbdf8915c987e882b4bd1c4fe` |
| 31 | `theorem` | [prod_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-bot--f324f6ef1fe5c51b40a14f30.md) | 156 | `result-track:f324f6ef1fe5c51b40a14f30a9cb6e045c47a4638bd10110a9bb8284209cef63` |
| 32 | `theorem` | [bot_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/bot-prod--fbc3719814fcf5fc7165f05e.md) | 160 | `result-track:fbc3719814fcf5fc7165f05eec3e2af2c62aeba3b68e6da386c8ef56b0b6ac36` |
| 33 | `theorem` | [top_prod_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/top-prod-top--6a6138334557e932bd4d9cc4.md) | 164 | `result-track:6a6138334557e932bd4d9cc48608d64ecd11a9d996e48f6c6ee03fae9da25a4c` |
| 34 | `theorem` | [inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/inf-prod--565398b1d6b37141bd8390fc.md) | 168 | `result-track:565398b1d6b37141bd8390fc000a1e3a8091e8fcf453cf3126562342995854b2` |
| 35 | `theorem` | [prod_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-inf--a40b55ff32bc868629983701.md) | 172 | `result-track:a40b55ff32bc8686299837012f5c6506e93cb4f3db5a37b05e2132e63d2aa19b` |
| 36 | `theorem` | [sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/sup-prod--d01a0f517c6d3df62a36011f.md) | 176 | `result-track:d01a0f517c6d3df62a36011fa0026dba4099d8d25997ba867e8992fef969876a` |
| 37 | `theorem` | [prod_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-sup--9eb49589da1596e9e3dc55b0.md) | 180 | `result-track:9eb49589da1596e9e3dc55b03725a0d57773cef5bac1630d902ce1252ce46a26` |
| 38 | `theorem` | [prod_inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-inf-prod--850b19b70c4595787f008de0.md) | 183 | `result-track:850b19b70c4595787f008de08eec2cc5b9372e4acefd4874a15081ac831585d1` |
| 39 | `theorem` | [prod_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono--6072efe64494af4e2f6261ca.md) | 188 | `result-track:6072efe64494af4e2f6261caa891a71334252129f26efa62474cc9aee48a132a` |
| 40 | `theorem` | [prod_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono-left--81efbdb522538ea8302f24ad.md) | 190 | `result-track:81efbdb522538ea8302f24ad2e8aea5f74dfebde438e2f9ac27e44cd32fa56fa` |
| 41 | `theorem` | [prod_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-mono-right--8eef0e106415aacf00bf1b20.md) | 192 | `result-track:8eef0e106415aacf00bf1b20233cbc1068d53d3b93e23e59c077061cf9fd1767` |
| 42 | `theorem` | [prod_self_le_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-self-le-prod-self--58cff5cb12083e9db94577fc.md) | 195 | `result-track:58cff5cb12083e9db94577fcf31efd6532ad5a346c9926a0a6900508b46e4fc6` |
| 43 | `theorem` | [prod_self_lt_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-self-lt-prod-self--1229d1940224b887e22c8b08.md) | 199 | `result-track:1229d1940224b887e22c8b086f7b51bab260e5389d6491379e29af4180abe616` |
| 44 | `theorem` | [prod_le_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-le-prod-iff--286f35bc1d74fca470ce5dd1.md) | 202 | `result-track:286f35bc1d74fca470ce5dd175abcb150007cfa2d1ef336a42642ea2f43dc02a` |
| 45 | `theorem` | [prod_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/prod-eq-bot--236bd0dce9ad326de41f151a.md) | 206 | `result-track:236bd0dce9ad326de41f151a25e8f68d2ddcdf2747cd41fc6b1aa461ab954c2b` |
| 46 | `theorem` | [disjoint_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/disjoint-prod--589e635e617ebb9dca1c2dfc.md) | 211 | `result-track:589e635e617ebb9dca1c2dfc957ae9f5667a4b7f93b6e5a5690e77f527ff78d4` |
| 47 | `theorem` | [upperClosure_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/upperclosure-prod--7d3f9ee8270d0b106c9604b9.md) | 217 | `result-track:7d3f9ee8270d0b106c9604b9be2fb724c9a6e981e1bab1b6c961b13a9c7a24fa` |
| 48 | `theorem` | [lowerClosure_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant29fbd5ac6241c37544a29285a2948a050171718f32904dab28ddcc9918e144bc.lean/declarations/lowerclosure-prod--3791b5ad700ff7e230ca5b75.md) | 223 | `result-track:3791b5ad700ff7e230ca5b7545390d1b2ddf627a11c7a0237fac7d5e56824395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
