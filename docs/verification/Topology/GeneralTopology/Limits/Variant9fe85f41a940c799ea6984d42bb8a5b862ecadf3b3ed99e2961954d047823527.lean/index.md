# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fa71ebcd4bf11f815be82f5caee3dbd0818b1b6`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback--fb7904b3094f229bbba8235a.md) | 37 | `declaration-track:fb7904b3094f229bbba8235a33ce71c2edbaccfdd381eee01392f2ac85cc2faf` |
| 2 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-fst--8d1d26df75023a34f3fb93ea.md) | 44 | `declaration-track:8d1d26df75023a34f3fb93ea988eec1f25def4c277ca832241f3364f1a315623` |
| 3 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-snd--1bf439819329857de403b13c.md) | 49 | `declaration-track:1bf439819329857de403b13cf8b5592c1cc6c5609a2e21b4a59a11972d0d0c99` |
| 4 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-condition--1d2b697a3851fb432502b486.md) | 54 | `result-track:1d2b697a3851fb432502b486dbb5af16ac38e7e05622263ba5dd8af3b9b6eb49` |
| 5 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-lift--238a681bc572a169cfe7a30e.md) | 63 | `declaration-track:238a681bc572a169cfe7a30e4c54f96761cb9e63c8c88b9c8f96d5c4eee245fe` |
| 6 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-lift-fst--745f890eaed3645c8110554c.md) | 72 | `result-track:745f890eaed3645c8110554c03583bbdae06fb7ecc6c31b6caede69f9899fa02` |
| 7 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-lift-snd--dcb3ffaa1f1ac24682cdbd1c.md) | 76 | `result-track:dcb3ffaa1f1ac24682cdbd1cfc96ef1f785042bbac9a58c84b88ea0bb0befed6` |
| 8 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-hom-ext--65b7f3b6214bdb1fdfc4c007.md) | 79 | `result-track:65b7f3b6214bdb1fdfc4c007527d9ad4aa1baa39890f01e1602f7f9a37e39f93` |
| 9 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-cone--d5755ab3596422496c37db6e.md) | 91 | `declaration-track:d5755ab3596422496c37db6ec99d7f689b6fb3d29d93143914ebb5da1ca901d2` |
| 10 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-islimit--2e95dc58f50ee030940509a9.md) | 96 | `declaration-track:2e95dc58f50ee030940509a978319820e315c5cd7af88f9a48399fc39331877a` |
| 11 | `def` | [pullbackIsoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullbackisopullback--6017067f8e81caf0faa76297.md) | 107 | `declaration-track:6017067f8e81caf0faa762979374cbafe7a4bf33ea8f2113c4b11e7fc7de9e23` |
| 12 | `def` | [pullbackHomeoPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullbackhomeopullback--eef129d814c42628eb4c17f7.md) | 112 | `declaration-track:eef129d814c42628eb4c17f7445ae9d2ea62279ff7e207647540fdca7255f0d6` |
| 13 | `theorem` | [pullback_fst_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-fst-eq--5c8e00273cf9b4d3ed1e96c2.md) | 116 | `result-track:5c8e00273cf9b4d3ed1e96c28bcf388cee68dc22918464acfc94c273b8b11c2b` |
| 14 | `theorem` | [pullback_snd_eq](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/pullback-snd-eq--834933facf53f86d2cdc7a46.md) | 121 | `result-track:834933facf53f86d2cdc7a461d684b972566aa800ac4913142486eea4a61914f` |
| 15 | `def` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct--1936f9079539f29994cc8edf.md) | 138 | `declaration-track:1936f9079539f29994cc8edf8edd06d9112356995dd1cb6e9948a0029f703ea1` |
| 16 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct--859a22b8c38a69973e82f1bd.md) | 141 | `declaration-track:859a22b8c38a69973e82f1bd2d4b08c8043408c14d7ff828a455c0a7861efb07` |
| 17 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-desc--57c8b8fa0eb11a5bfc933913.md) | 150 | `declaration-track:57c8b8fa0eb11a5bfc933913704cc0d0091d60a7905aeba0397e24f272327091` |
| 18 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-desc--e691137a41408e42285d7b6a.md) | 159 | `result-track:e691137a41408e42285d7b6aaae23b9cfbaab1e9b9ac801d1167da9185bf9805` |
| 19 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-hom-ext--1edd5a411d507b0d58925675.md) | 162 | `result-track:1edd5a411d507b0d58925675d97405f723d69c694618b80d800424a472ef4821` |
| 20 | `def` | [finiteCoproduct.cocone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-cocone--2012592dd4204b1059198f07.md) | 171 | `declaration-track:2012592dd4204b1059198f07e743dc84233df35a069bdfebe100a0e10f036f7b` |
| 21 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-iscolimit--34b2595cbd64144fa64b5b58.md) | 177 | `declaration-track:34b2595cbd64144fa64b5b581dc71eb9b2ff79ad4f4c7249ceda37e2a45ca1bb` |
| 22 | `def` | [coproductIsoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/coproductisocoproduct--3b2675f3f998ed487e497d98.md) | 190 | `declaration-track:3b2675f3f998ed487e497d98cf7b441098306fbf152a8384bb878bb5eda472a9` |
| 23 | `theorem` | [Sigma.ι_comp_toFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/sigma-comp-tofinitecoproduct--9b3456527f2b7f1886b0fa22.md) | 193 | `result-track:9b3456527f2b7f1886b0fa2226f2f21ab51cca8c3fe60d8b10e7535caa6cfcd8` |
| 24 | `def` | [coproductHomeoCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/coproducthomeocoproduct--4e636d19b5426087d124c2c1.md) | 200 | `declaration-track:4e636d19b5426087d124c2c1ffccfefc8b7ae5f5823465295a9fc6dfa01c4f5a` |
| 25 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-injective--8bdb0ed3f37cde5b98ec9c59.md) | 205 | `result-track:8bdb0ed3f37cde5b98ec9c5913fd053211698e5ea127a6e7e7ce17b7e5239ab1` |
| 26 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-jointly-surjective--d16361f8f3de3aeaa2fcca89.md) | 209 | `result-track:d16361f8f3de3aeaa2fcca89b7f2e84d7c097bc5b0db2549ce883bdddead2276` |
| 27 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant9fe85f41a940c799ea6984d42bb8a5b862ecadf3b3ed99e2961954d047823527.lean/declarations/finitecoproduct-desc-apply--ecc816c06e94004781946304.md) | 212 | `result-track:ecc816c06e94004781946304430f217cccb09219b50db0f6058311bcf8e7c623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
