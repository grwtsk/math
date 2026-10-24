# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Dart.Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c36fe1186e46577cce8098f1efb1dee6639f643b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c36fe1186e46577cce8098f1efb1dee6639f643b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dart](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart--f4cca6a16dc616a51b6f4057.md) | 23 | `declaration-track:f4cca6a16dc616a51b6f4057091010abc4983bcadcb7c9bf6f89afa32895b634` |
| 2 | `theorem` | [Dart.ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-ext-iff--b7cec70ff5d63b24a59bc395.md) | 33 | `result-track:b7cec70ff5d63b24a59bc395772d90675e23dc5fd8f6f4fcef4e029baf8c1efd` |
| 3 | `theorem` | [Dart.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-ext--f0d3329f68c4ba459e59ed20.md) | 37 | `result-track:f0d3329f68c4ba459e59ed2086c37ec4345e5da9783d3b7f5f925fcbe3de518a` |
| 4 | `theorem` | [Dart.fst_ne_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-fst-ne-snd--a46c6822fb739c93450e1b1c.md) | 41 | `result-track:a46c6822fb739c93450e1b1c4f48a135b2604e0ff59a944d7bc5b83a2fa3c3d6` |
| 5 | `theorem` | [Dart.snd_ne_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-snd-ne-fst--744d6a0e4f517f390bdcaf4c.md) | 45 | `result-track:744d6a0e4f517f390bdcaf4c1092cd82ef7ca7cb5049995658eb2ec34f27f3d2` |
| 6 | `theorem` | [Dart.toProd_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-toprod-injective--c9fabf35cad51c677bd21634.md) | 48 | `result-track:c9fabf35cad51c677bd216340b83f11a7fbc116697cc0871f4b9a91ea7dd29b7` |
| 7 | `instance` | [Dart.fintype](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-fintype--17714311376a7efc494e5b1b.md) | 51 | `declaration-track:17714311376a7efc494e5b1bd49dc40422500badca43bd67c104e4c5168b12d6` |
| 8 | `def` | [Dart.edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge--0c9a976e0202522b225b5cb3.md) | 59 | `declaration-track:0c9a976e0202522b225b5cb36a3962ba2358ac22a0ac924fa213a470657bb869` |
| 9 | `theorem` | [Dart.edge_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-mk--0b01265213065bf10591ef98.md) | 63 | `result-track:0b01265213065bf10591ef98872aeea07e929141e1d06fc05b3495804a8326a3` |
| 10 | `theorem` | [Dart.edge_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-mem--d73c4fa25a03b958d92120d4.md) | 67 | `result-track:d73c4fa25a03b958d92120d43b1c1e51a43f88761fd63290f2fbd34079443491` |
| 11 | `def` | [Dart.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-symm--d7e689812173a677112ac897.md) | 72 | `declaration-track:d7e689812173a677112ac8976c9ceccbc4f95aef4282abc221cc5eb282133691` |
| 12 | `theorem` | [Dart.symm_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-symm-mk--d210deff4b5f9a4b8094355d.md) | 76 | `result-track:d210deff4b5f9a4b8094355d3117b3b30d198a751e8896b5fb90eab4b67ab0bb` |
| 13 | `theorem` | [Dart.edge_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-symm--9319c32c1a5951daa1b86151.md) | 80 | `result-track:9319c32c1a5951daa1b86151c6266f4aba24683825d35c03b88a505b2e2320db` |
| 14 | `theorem` | [Dart.edge_comp_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-comp-symm--a038ec7687449e37fba9f12b.md) | 84 | `result-track:a038ec7687449e37fba9f12b7fe4714e547cd1018bdecb081f35c66583bf4672` |
| 15 | `theorem` | [Dart.symm_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-symm-symm--26ebf318c2efc33ea5306c50.md) | 88 | `result-track:26ebf318c2efc33ea5306c504b5debdf23b30567fcc845a18f97d5bb44eb2d6f` |
| 16 | `theorem` | [Dart.symm_involutive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-symm-involutive--77f068bc3961569f04ff438b.md) | 92 | `result-track:77f068bc3961569f04ff438b8356c8d10e66117bf838330d5a70bdb4598b216a` |
| 17 | `theorem` | [Dart.symm_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-symm-ne--0bbe65f5081d9e57fb478a1a.md) | 95 | `result-track:0bbe65f5081d9e57fb478a1a1a5d4bd73bd723328658a206fa51e8d26aeeb808` |
| 18 | `theorem` | [dart_edge_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-eq-iff--f3c6512aa481e6f1e7c7b672.md) | 98 | `result-track:f3c6512aa481e6f1e7c7b67265e565d8626b1dc0a3ab3b393486ae8e6d851ca4` |
| 19 | `theorem` | [dart_edge_eq_mk'_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-eq-mk-iff--1d397d857778b25ccb7d812b.md) | 102 | `result-track:1d397d857778b25ccb7d812b4f994ea3566a58d586e23321052dfd3c681a1554` |
| 20 | `theorem` | [dart_edge_eq_mk'_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dart-edge-eq-mk-iff--deaea372097701b420f448ef.md) | 107 | `result-track:deaea372097701b420f448efcdf06ad73ba167cc6b87da4e61d00b00ac85e41c` |
| 21 | `def` | [DartAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dartadj--5c58655397b046ab79ff18d0.md) | 119 | `declaration-track:5c58655397b046ab79ff18d0cbb6f4e4ac2b94f4a8aad3c69cfdf372cd726b20` |
| 22 | `def` | [dartOfNeighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dartofneighborset--06a658c55d94890073804510.md) | 125 | `declaration-track:06a658c55d948900738045101be39941a38c653e2783691dc9af3323b9243d72` |
| 23 | `theorem` | [dartOfNeighborSet_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/dartofneighborset-injective--1f66aa65773eeb457724c323.md) | 128 | `result-track:1f66aa65773eeb457724c3236ef369224899c91528cea8e19670eb3cb2da38b2` |
| 24 | `instance` | [nonempty_dart_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Dart/Variante6209c4a082bd9bd2feef2621260f131085fe0c1b8adb4a502978bdc5f928516.lean/declarations/nonempty-dart-top--2146c9c48789fd733f4623d4.md) | 134 | `declaration-track:2146c9c48789fd733f4623d460b73c1ae07d91f3e1322c74e2a761040c0126f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
