# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Birkhoff.Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "145fdba85d6105bb32f60f8ddc114dc118690e9d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `145fdba85d6105bb32f60f8ddc114dc118690e9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Irreducible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [infIrred_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirred-ici--09bd3cd44f30f44c60664991.md) | 61 | `result-track:09bd3cd44f30f44c60664991c837bfd84eead1fb0b10973d19d668d33efbb685` |
| 2 | `lemma` | [infIrred_iff_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirred-iff-of-finite--f62f86d9b79f0dabbeb45995.md) | 70 | `result-track:f62f86d9b79f0dabbeb45995700acdaa02f7796e6728487c064d0d05ec281ae3` |
| 3 | `lemma` | [supIrred_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirred-iic--dc416d933602ea608956b7e0.md) | 83 | `result-track:dc416d933602ea608956b7e0ccf44924cb9c62394fcdb0c6a8ff4bdca89c3307` |
| 4 | `lemma` | [supIrred_iff_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirred-iff-of-finite--afa31a6fbf6f6bb47ac17b69.md) | 92 | `result-track:afa31a6fbf6f6bb47ac17b6919486536183f00bb70565797d87191ea4ec734bb` |
| 5 | `def` | [supIrredLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset--bd20b504c3e380eeb03bf146.md) | 106 | `declaration-track:bd20b504c3e380eeb03bf146de105f2bdd93eadea5888bee3845afe19aaa8cc8` |
| 6 | `def` | [infIrredUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset--418a5c8d8602c2098073d6b0.md) | 113 | `declaration-track:418a5c8d8602c2098073d6b0b4f4cf669170d49fae54d15851c960a045c57212` |
| 7 | `lemma` | [supIrredLowerSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset-apply--64a4f4d158c007e52128e717.md) | 118 | `result-track:64a4f4d158c007e52128e7178a40818a8745ce294560ded32822b7caf7bdcd1d` |
| 8 | `lemma` | [infIrredUpperSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset-apply--147317bf2181584f4c87e27c.md) | 119 | `result-track:147317bf2181584f4c87e27c8771fc459bf7fccdd7954e67ff2a41adaf5aa1c6` |
| 9 | `lemma` | [supIrredLowerSet_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset-surjective--065ed3282cf48272a932bc9a.md) | 123 | `result-track:065ed3282cf48272a932bc9a7523ee52f63213085bedfb75d058d35f9157297b` |
| 10 | `lemma` | [infIrredUpperSet_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset-surjective--00b30047b91ed770c00f0a15.md) | 126 | `result-track:00b30047b91ed770c00f0a15cedc837db86a28c63358c6a3eee5389ff8ae8dca` |
| 11 | `def` | [supIrredLowerSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset--1dc42d7bbccc4e25c6f528a8.md) | 136 | `declaration-track:1dc42d7bbccc4e25c6f528a8b5ffb51a0499b0a5ce324693efae4494a442ace5` |
| 12 | `def` | [infIrredUpperSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset--324abe71822b1461a688359f.md) | 141 | `declaration-track:324abe71822b1461a688359f6e1e88d3a74d9147574c0381e30bd6411738f238` |
| 13 | `lemma` | [supIrredLowerSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset-apply--1b8e7c06f3b30006cc076d4a.md) | 144 | `result-track:1b8e7c06f3b30006cc076d4aec5a1333dea4779aedfc719f0acbb583bd04d6ed` |
| 14 | `lemma` | [infIrredUpperSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset-apply--86bb9eaf5a22383489d1a0ad.md) | 145 | `result-track:86bb9eaf5a22383489d1a0ad38c4e9470b13fb25e7b64ee96284d33d13fca635` |
| 15 | `lemma` | [supIrredLowerSet_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/supirredlowerset-symm-apply--43df7e628a57d612f8a3c3bc.md) | 154 | `result-track:43df7e628a57d612f8a3c3bc1a5698fbe636320d048d54c8554f7a538a829862` |
| 16 | `lemma` | [infIrredUpperSet_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/infirredupperset-symm-apply--7e90c00ce3eeb37592e450f7.md) | 168 | `result-track:7e90c00ce3eeb37592e450f705224fc81c4ac1c67a7110619d1dcede10b653fc` |
| 17 | `def` | [OrderIso.lowerSetSupIrred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/orderiso-lowersetsupirred--13916218a7308ee904746276.md) | 186 | `declaration-track:13916218a7308ee904746276511edb742b2b4d211ae3f283d98668ce5c66e3c6` |
| 18 | `def` | [birkhoffSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhoffset--206d7c3f89aaffcdfa1e3fb2.md) | 209 | `declaration-track:206d7c3f89aaffcdfa1e3fb20ad533eb814666e7151baf050ddf622c87921a45` |
| 19 | `def` | [birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhofffinset--8ec8bd983ef95909ffbad5a8.md) | 218 | `declaration-track:8ec8bd983ef95909ffbad5a8164f59c066a4e729aa96a2fc8afaa68942312ea3` |
| 20 | `lemma` | [coe_birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/coe-birkhofffinset--c11bc808460c2742824bfd65.md) | 221 | `result-track:c11bc808460c2742824bfd652fd126410bfa8c4789a6d1805d97c5d873c5a648` |
| 21 | `lemma` | [birkhoffSet_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhoffset-sup--bfc521e7dcbadc66dcc8f875.md) | 229 | `result-track:bfc521e7dcbadc66dcc8f875ca6c42b71ec906d952bd5df288b7567c3d6eead2` |
| 22 | `lemma` | [birkhoffSet_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhoffset-inf--b4c57bbdb5dbf1bd603ebc23.md) | 232 | `result-track:b4c57bbdb5dbf1bd603ebc23d9e1b28c3af690a0d9c62796704f3fb81a03d5a6` |
| 23 | `lemma` | [birkhoffSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhoffset-apply--c2aadf851844c3e36db255c4.md) | 235 | `result-track:c2aadf851844c3e36db255c4ee5a7bf4790a1c547f6fc2451bce67f6de010a41` |
| 24 | `lemma` | [birkhoffFinset_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhofffinset-sup--223169d26f1ae133792e5eb9.md) | 241 | `result-track:223169d26f1ae133792e5eb93cadb93ee8211f62dafc971cbda45c88f9dacfc4` |
| 25 | `lemma` | [birkhoffFinset_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhofffinset-inf--b506022482175adc71a13ea1.md) | 248 | `result-track:b506022482175adc71a13ea1e818fd6395189bf75b7389818b18c0a300010a95` |
| 26 | `def` | [birkhoffSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhoffset--5183e63c35bb9f190ed9f670.md) | 261 | `declaration-track:5183e63c35bb9f190ed9f6701a70bcb63c26cbeb446630519fb3d6cdfc5718e9` |
| 27 | `def` | [birkhoffFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhofffinset--e03ffc38da49c337daae0f81.md) | 269 | `declaration-track:e03ffc38da49c337daae0f81b3a9f574dc1f2f85e5bb403b6f4c3600c6e8110d` |
| 28 | `lemma` | [birkhoffFinset_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/birkhofffinset-injective--3a1347f8e1eef56b31aaaafc.md) | 274 | `result-track:3a1347f8e1eef56b31aaaafcf1aa70ae3484715d321f684c6d0f8f7dbd42695d` |
| 29 | `lemma` | [exists_birkhoff_representation.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Birkhoff/Variant5d4469579aefceabb5d3db1453fd8e20777bf642eb641ec7d9b821aed949ee8e.lean/declarations/exists-birkhoff-representation--307dc6b2452ca21897c4ba3b.md) | 279 | `result-track:307dc6b2452ca21897c4ba3bc9204769589da420081b848f3e1cca1cd45a56e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
