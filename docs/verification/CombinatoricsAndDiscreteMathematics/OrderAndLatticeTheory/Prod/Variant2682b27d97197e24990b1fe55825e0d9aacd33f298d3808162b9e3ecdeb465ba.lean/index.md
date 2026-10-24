# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Prod.Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e328ccaea16723f48e8b9a84e309def9c13011cb",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e328ccaea16723f48e8b9a84e309def9c13011cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Closure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/isupperset-prod--3492582d35b2657adc63b55f.md) | 39 | `result-track:3492582d35b2657adc63b55f9a882301887549281f3e6cee18c3bd78ec81da34` |
| 2 | `theorem` | [IsLowerSet.prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/islowerset-prod--e44da03bdf665aaff2d8f2c0.md) | 42 | `result-track:e44da03bdf665aaff2d8f2c069dc085e473a5a597a4de3a1d9d4729084576c7f` |
| 3 | `def` | [prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod--d314d79fa34069e496466943.md) | 52 | `declaration-track:d314d79fa34069e49646694361de6c93eeea04d6ff3b2ea45ee1dfc84ffe59af` |
| 4 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/instsprod--9c1692258b59b2ab904b42ba.md) | 55 | `declaration-track:9c1692258b59b2ab904b42baaa6014ad127cb4b253e0c403451392fa448f078f` |
| 5 | `theorem` | [coe_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/coe-prod--88031040cea6842103a7e58d.md) | 59 | `result-track:88031040cea6842103a7e58d6178f96b16d8e2670ab7c0dd1f7b346d33e100fc` |
| 6 | `theorem` | [mem_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/mem-prod--a6e2069b4c971ffac255adba.md) | 63 | `result-track:a6e2069b4c971ffac255adba5eeebd3e8eb2f684d73342768124bea1722a4547` |
| 7 | `theorem` | [Ici_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/ici-prod--7c8690ab33744d05ad5aee07.md) | 66 | `result-track:7c8690ab33744d05ad5aee07ef6582d75e2a0a3404b88ab9b5f9ad89c66f23ac` |
| 8 | `theorem` | [Ici_prod_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/ici-prod-ici--c5dda6769d36be4005414fd9.md) | 70 | `result-track:c5dda6769d36be4005414fd9cf17f25b4ccdd90508f42deb8a6b404d8095460d` |
| 9 | `theorem` | [prod_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-top--3e7a115869cd8276f24ea664.md) | 74 | `result-track:3e7a115869cd8276f24ea66407a63cc745bfeecbaf124c04e382bf57078cd76b` |
| 10 | `theorem` | [top_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/top-prod--08300495acb20cd748bf1152.md) | 78 | `result-track:08300495acb20cd748bf1152a70c5c8db6bfcb1daa54a6c3f3774972be92dc31` |
| 11 | `theorem` | [bot_prod_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/bot-prod-bot--b0bc78d2315af65c78d9deca.md) | 82 | `result-track:b0bc78d2315af65c78d9deca2b0edd3a0ca8f271ed3d2619acbdd137028fd256` |
| 12 | `theorem` | [sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/sup-prod--c292f3b8679334af9d6a5e28.md) | 86 | `result-track:c292f3b8679334af9d6a5e28830548ae1ac313383a2fcd3087df50af79fc17f5` |
| 13 | `theorem` | [prod_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-sup--7125d337cfc67a2853aff773.md) | 90 | `result-track:7125d337cfc67a2853aff7737741042c657410ea6b77f3d06637b5ff903e6b24` |
| 14 | `theorem` | [inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/inf-prod--dbf6fc42e3a501129f415b13.md) | 94 | `result-track:dbf6fc42e3a501129f415b136a8f6230551613d0575f46d0f569ca5a9da3b53a` |
| 15 | `theorem` | [prod_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-inf--1fbd50befd4fff4c8578ecad.md) | 98 | `result-track:1fbd50befd4fff4c8578ecad5fd4e0d8e076b8adb3954a2637c8f4100132b140` |
| 16 | `theorem` | [prod_sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-sup-prod--4c34372ea3b4e492eef1420f.md) | 101 | `result-track:4c34372ea3b4e492eef1420fcea058796102f924ca8a4292882db33e12e6f9d7` |
| 17 | `theorem` | [prod_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono--e5ce18bf2cc0ed8ac7893613.md) | 107 | `result-track:e5ce18bf2cc0ed8ac7893613b1bbe73f0621fbb0a9980a9e556dd4e0af4d64c5` |
| 18 | `theorem` | [prod_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono-left--b772d2a164dcbb91c68152c5.md) | 110 | `result-track:b772d2a164dcbb91c68152c5004bd6feb3dcd9ed0cef2dad39bba99f9cd198fd` |
| 19 | `theorem` | [prod_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono-right--a494f625a6b88ccfc6338c3c.md) | 113 | `result-track:a494f625a6b88ccfc6338c3cf706024a3d8ba7242e1ef1635247f7e38cbde85c` |
| 20 | `theorem` | [prod_self_le_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-self-le-prod-self--92981e30e5aca0322e188c8e.md) | 117 | `result-track:92981e30e5aca0322e188c8ee5f7585a930a27de666ea9bb3b16a97d08ea460e` |
| 21 | `theorem` | [prod_self_lt_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-self-lt-prod-self--6ec8a9754e27d16fc90fdfe5.md) | 121 | `result-track:6ec8a9754e27d16fc90fdfe5b06feabb687fed8f3d45a2d1c0f657f2bdd55235` |
| 22 | `theorem` | [prod_le_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-le-prod-iff--c4839c9346729971ddcf4f63.md) | 124 | `result-track:c4839c9346729971ddcf4f63cfa08a534e502d0611097e0e6d33822fc9acd534` |
| 23 | `theorem` | [prod_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-eq-top--981ea92c46c018b6adf08f76.md) | 128 | `result-track:981ea92c46c018b6adf08f76f56ea2c84485edcb88709623634270fea355d014` |
| 24 | `theorem` | [codisjoint_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/codisjoint-prod--28cb781661adc3e217c786eb.md) | 133 | `result-track:28cb781661adc3e217c786eb0b2c785202b662f6b5813a7254c8d7d77fb6782a` |
| 25 | `def` | [prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod--e0fd10b61b95ca282e8a7642.md) | 144 | `declaration-track:e0fd10b61b95ca282e8a764250c407c0cc5cdd54a24d2fb239167cd5f8deff67` |
| 26 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/instsprod--62f6492a3755dfa1fe90225b.md) | 146 | `declaration-track:62f6492a3755dfa1fe90225b2eeb882ba0eb8a39e701ce95a2a0af3e5aae7156` |
| 27 | `theorem` | [coe_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/coe-prod--f604621f498af7f4d4f4aeea.md) | 150 | `result-track:f604621f498af7f4d4f4aeeab2b7021855a79e38167c02764d9bd57ccc07ac91` |
| 28 | `theorem` | [mem_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/mem-prod--5ad81bfdec0a8afe85cc6ea6.md) | 153 | `result-track:5ad81bfdec0a8afe85cc6ea63eff06ccf1e89341654f9812eac74331a3afb704` |
| 29 | `theorem` | [Iic_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/iic-prod--38eea0f672b2287f745117d1.md) | 156 | `result-track:38eea0f672b2287f745117d18d2c6411fd5c5b14050bf8e609d38464662dbb96` |
| 30 | `theorem` | [Ici_prod_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/ici-prod-ici--e43421ff18edda55d36d4816.md) | 160 | `result-track:e43421ff18edda55d36d481663e14e1b27f98a80761f601e04ff9609d39acfd2` |
| 31 | `theorem` | [prod_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-bot--923b2c92f745a99539086152.md) | 164 | `result-track:923b2c92f745a99539086152669b3ab8b884b9f18113d9ae358114b8ab9af52d` |
| 32 | `theorem` | [bot_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/bot-prod--2ae35ecaefc49b8195721586.md) | 168 | `result-track:2ae35ecaefc49b8195721586491133af0b885643a42788820eab1daddc18b221` |
| 33 | `theorem` | [top_prod_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/top-prod-top--9ca4fdd94ec1741417725633.md) | 172 | `result-track:9ca4fdd94ec1741417725633c7f345f79965c52d5dc00921e3873eaa57d1b31b` |
| 34 | `theorem` | [inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/inf-prod--af23e4c0b47d41b2e1988a9a.md) | 176 | `result-track:af23e4c0b47d41b2e1988a9ab9c1603f63e189b76d99a84db0c0f04a30ded324` |
| 35 | `theorem` | [prod_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-inf--d3fb20c80066e057319359ae.md) | 180 | `result-track:d3fb20c80066e057319359ae0289ff4be65a7ec715c471d63f06dbd35a024893` |
| 36 | `theorem` | [sup_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/sup-prod--5c9402e4c5c7644ca2c5525c.md) | 184 | `result-track:5c9402e4c5c7644ca2c5525cce1d19fad1c5fe55784cf6112d99518cff0957ac` |
| 37 | `theorem` | [prod_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-sup--ef5b3094523b0a09c83ce6bb.md) | 188 | `result-track:ef5b3094523b0a09c83ce6bbf049ffab0f2a1db30970bc9423fe3ab2aaff49bb` |
| 38 | `theorem` | [prod_inf_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-inf-prod--8c583996fb8007ebd1c4a13b.md) | 191 | `result-track:8c583996fb8007ebd1c4a13bfb36d3554ebe641aa392334aa5e3ccaac7b4224f` |
| 39 | `theorem` | [prod_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono--dd89fb85314c13a9aca2152f.md) | 196 | `result-track:dd89fb85314c13a9aca2152f34549d989b4914772589a316c027bd7f3ae233eb` |
| 40 | `theorem` | [prod_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono-left--64a2551905109902ec1463db.md) | 198 | `result-track:64a2551905109902ec1463dbbe11f293aa83efdbc3054c25a922a5eb25b83ec3` |
| 41 | `theorem` | [prod_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-mono-right--87ded3b124274ec8e41cfec0.md) | 200 | `result-track:87ded3b124274ec8e41cfec01e246ca646b852d1181abd067ff92eb8deed70f6` |
| 42 | `theorem` | [prod_self_le_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-self-le-prod-self--0c0758298f17ee6b17a109a1.md) | 203 | `result-track:0c0758298f17ee6b17a109a1d0d7c7ec5539ed9dc02149d735a50d4dd786be59` |
| 43 | `theorem` | [prod_self_lt_prod_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-self-lt-prod-self--9207dfe4d0def420afe1b13c.md) | 207 | `result-track:9207dfe4d0def420afe1b13cf6a94abb79301e285af6cd33629a8303f6ca4cff` |
| 44 | `theorem` | [prod_le_prod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-le-prod-iff--a1ea035ec3ffae7065766691.md) | 210 | `result-track:a1ea035ec3ffae706576669148c890bfb8cef00e4c396b073d6817dfb0e239fd` |
| 45 | `theorem` | [prod_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/prod-eq-bot--017738c868c4ee1e08c07da4.md) | 214 | `result-track:017738c868c4ee1e08c07da4158fc0ff4d2bbe1994fd9d2fd43cf5389eb5c1d8` |
| 46 | `theorem` | [disjoint_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/disjoint-prod--89d8982b26eb7f7246b3462c.md) | 219 | `result-track:89d8982b26eb7f7246b3462cf832b4292d0aae2c7bf632f57945a13a720e62e6` |
| 47 | `theorem` | [upperClosure_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/upperclosure-prod--61e60d482e508bffa7bdf861.md) | 225 | `result-track:61e60d482e508bffa7bdf8614197cb9be03264f84a3bf3356234a70dd51f1b94` |
| 48 | `theorem` | [lowerClosure_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean/declarations/lowerclosure-prod--e9eed13f6d4838b4d21210a0.md) | 231 | `result-track:e9eed13f6d4838b4d21210a0b7aa9f064962fd5654dbf509fa1ff3101e58e1cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
