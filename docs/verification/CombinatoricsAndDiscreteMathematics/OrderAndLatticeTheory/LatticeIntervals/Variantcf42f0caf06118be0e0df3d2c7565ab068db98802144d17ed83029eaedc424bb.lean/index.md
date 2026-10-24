# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LatticeIntervals.Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ab76b713748dc4481114d6ffba3ddd3ea3f33e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ab76b713748dc4481114d6ffba3ddd3ea3f33e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticeinf--0685249dadf541c0c464cc24.md) | 35 | `declaration-track:0685249dadf541c0c464cc24d709d0dea42a9143cce204d45e406ea9fd0c80b2` |
| 2 | `abbrev` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/orderbot--2e056c9c4101077f3e7b4c6e.md) | 39 | `declaration-track:2e056c9c4101077f3e7b4c6e815a85861afed6c022b617a2547a6b50cf89951c` |
| 3 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticeinf--ec81d6a526cfad8673068cfb.md) | 46 | `declaration-track:ec81d6a526cfad8673068cfb2d160c68dc19471cda3b206459e38ed138df6b2a` |
| 4 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticesup--e916eba5bfe7467093fcface.md) | 53 | `declaration-track:e916eba5bfe7467093fcface6dcfcd53935f3490499e54d6752c8b9252956e74` |
| 5 | `abbrev` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/ordertop--ba6014b2963182ba6cc1839e.md) | 57 | `declaration-track:ba6014b2963182ba6cc1839e913d71e8f18c6e8198665b8c8d9cf46b8017b2e5` |
| 6 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticesup--c0e1fe24956bd0e29558f03c.md) | 64 | `declaration-track:c0e1fe24956bd0e29558f03ce8dfb65e04c9e11ce573dbc86b053393942602b2` |
| 7 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticeinf--5f9e66f1eb4b7b591c572987.md) | 73 | `declaration-track:5f9e66f1eb4b7b591c57298769b0825220657e4ce0a5a857341224aabca0278e` |
| 8 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-inf--ce04dbd2c61321273176c182.md) | 77 | `result-track:ce04dbd2c61321273176c18235cf9af634f6eb35b7d5cf3900bf65a30557c112` |
| 9 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticesup--9ecdb5b98c6256b35e4b7387.md) | 81 | `declaration-track:9ecdb5b98c6256b35e4b738750701a68a8b9f1863db4d217c07d89b6bd6d5d1e` |
| 10 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-sup--f03e1882fc2ed9315552ba80.md) | 85 | `result-track:f03e1882fc2ed9315552ba8085fdc9257b1ce38e6767bc54a18f42c1d5be376d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/instance--50a5f98c7c3a3d6525679120.md) | 89 | `declaration-track:50a5f98c7c3a3d6525679120e13ce0bd6f92da65e3a05cd75b1158c76b2a5435` |
| 12 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/ordertop--e1188937ca607d4cefa5b9a0.md) | 92 | `declaration-track:e1188937ca607d4cefa5b9a0e8afca784dfd0e5edcc6f4f5c8db86baaf2d97a3` |
| 13 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-top--4b69738b6cb9be5f19baa545.md) | 98 | `result-track:4b69738b6cb9be5f19baa545dfd63c4b61851125d6f7d83a76cab71ea2b51fc3` |
| 14 | `lemma` | [eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/eq-top-iff--0369e21560603011bdd5e453.md) | 101 | `result-track:0369e21560603011bdd5e453727189a49b8eaa34a96eccfa0dc994a3e445f717` |
| 15 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/orderbot--97adcb7e8782b413d82c5e0f.md) | 105 | `declaration-track:97adcb7e8782b413d82c5e0f932f799005b81e22c1d5e7c1bb40681a90b6e3eb` |
| 16 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-bot--e0cb5bcb318fb59a44590f93.md) | 111 | `result-track:e0cb5bcb318fb59a44590f93d0cbefc535ffe56217b9f5d45a84acfaa5784571` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/instance--ef08d424604cc20eb2b16c62.md) | 114 | `declaration-track:ef08d424604cc20eb2b16c626f2aa66e27ba5a1bc7f7e645c3f6eae4e83cbc8c` |
| 18 | `lemma` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/disjoint-iff--4c37ae39999a7c401687a3be.md) | 117 | `result-track:4c37ae39999a7c401687a3be8a7260bfd6c86fad7f894754929a8990d6eeeeac` |
| 19 | `lemma` | [codisjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/codisjoint-iff--7bbaec90c360280fdb4e2715.md) | 121 | `result-track:7bbaec90c360280fdb4e2715a438dc63cd57fc187245090c99da88e861fdc7f3` |
| 20 | `lemma` | [isCompl_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/iscompl-iff--0735df03263184cfcff25871.md) | 125 | `result-track:0735df03263184cfcff25871d4ce76b58383011c0751dccaa4f129f4e1b7742d` |
| 21 | `lemma` | [complementedLattice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/complementedlattice-iff--884b63921d1e82b22be4150c.md) | 129 | `result-track:884b63921d1e82b22be4150ceea0fd2bcdd90ee3ad66824ea2a6f28592cb2984` |
| 22 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticeinf--6c8e0c270fe6bd773f836acd.md) | 143 | `declaration-track:6c8e0c270fe6bd773f836acd0443dbe5848b9728f29016f96bfa32ba88d142e3` |
| 23 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticesup--750c7906f5ddb8e60f379e5c.md) | 146 | `declaration-track:750c7906f5ddb8e60f379e5ceecb62d5d203ee1c2ce6b85284121ebbffc2ef3d` |
| 24 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/lattice--a92b4fecdc94a1c1cbc95a50.md) | 149 | `declaration-track:a92b4fecdc94a1c1cbc95a500f3502638e596eab095c935b1d684fb026097cb5` |
| 25 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/distriblattice--5efc9c12658c1a0e42cdcaa3.md) | 152 | `declaration-track:5efc9c12658c1a0e42cdcaa3a59680cd22e4a8eaa408656fbcb73a1fb8ec81e0` |
| 26 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/orderbot--f2845c74b22802c74f2ab35d.md) | 155 | `declaration-track:f2845c74b22802c74f2ab35d5363cf1ad3a37b93fdca6ee504dadd167774a868` |
| 27 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-bot--90807d567ef6ceebc3fbaf1e.md) | 161 | `result-track:90807d567ef6ceebc3fbaf1eafe83df7c777f9c24c6f0f279afb3e1d97e3294f` |
| 28 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/ordertop--35830a88192074d121f37cc7.md) | 164 | `declaration-track:35830a88192074d121f37cc7a0707ca2f296f7f1c533732d2a4a1b2ea5f07b65` |
| 29 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-top--db4f25eb6f1570000254a350.md) | 170 | `result-track:db4f25eb6f1570000254a35055274950d46374759b3e7d4b68f058a89a38ff51` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/boundedorder--300e5f954627e27c0b957540.md) | 173 | `declaration-track:300e5f954627e27c0b957540303f43087377b2163cd3ae812d1b361705f2dab2` |
| 31 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticeinf--60e03951b9d9815aae4e3756.md) | 182 | `declaration-track:60e03951b9d9815aae4e37565c66888c8b2fed7206ab787a4830ecfef6dca053` |
| 32 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/semilatticesup--3524e4bc9d9714e0d1fd8ac1.md) | 185 | `declaration-track:3524e4bc9d9714e0d1fd8ac16ca048f50b4baf485fcc03195655dd183052e8b2` |
| 33 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/lattice--28c34b8c88d95843ec339d80.md) | 188 | `declaration-track:28c34b8c88d95843ec339d80376073ce74dd353ac1b84b69db5848339f9ba4c6` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/instance--6527a6f5d3e4f0df734d5dc8.md) | 194 | `declaration-track:6527a6f5d3e4f0df734d5dc8171b8e551373c10320013b8900002bb25616b83f` |
| 35 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-bot--b1ff10f7697cda92187d54ad.md) | 198 | `result-track:b1ff10f7697cda92187d54addd9ddac8b8456f52d81b47e27455245eafcfa048` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/instance--d531ad84021cc1f9968d2211.md) | 201 | `declaration-track:d531ad84021cc1f9968d2211b7623fc719ada0768c09fdeff2fa4d4163936381` |
| 37 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/coe-top--283ae11c87cb140734362710.md) | 205 | `result-track:283ae11c87cb140734362710dad9d9b68f9e5b5478741ad197d603215ff36099` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean/declarations/instance--683ec3ea0abeb8af4cdbdb0d.md) | 208 | `declaration-track:683ec3ea0abeb8af4cdbdb0d81b2b6122a67e24b00e29ef01ec8b3e3f3cbcf38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
