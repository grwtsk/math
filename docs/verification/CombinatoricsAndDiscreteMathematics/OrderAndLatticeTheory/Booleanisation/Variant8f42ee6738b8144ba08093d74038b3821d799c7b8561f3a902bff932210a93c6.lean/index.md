# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Booleanisation.Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8632f955042743f60a840c9aef14a280faeee97f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8632f955042743f60a840c9aef14a280faeee97f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Booleanisation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/booleanisation--9389ec7e71439d7d46b4be1d.md) | 39 | `declaration-track:9389ec7e71439d7d46b4be1d455baf6317ff449b3b8f06a121db078f8fcff115` |
| 2 | `instance` | [instDecidableEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instdecidableeq--a28a559a8f6c099763d0d62c.md) | 43 | `declaration-track:a28a559a8f6c099763d0d62c8a8dc953b273f59d9ac6f3f981485251f91978ab` |
| 3 | `def` | [lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift--c741c82689bc271ad6a3e703.md) | 48 | `declaration-track:c741c82689bc271ad6a3e703e0b4505570a0a152f1dc90328c34944139e7db34` |
| 4 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp--e4a98a284828b219d26cce4c.md) | 51 | `declaration-track:e4a98a284828b219d26cce4c4840758656ec12e258e92a24de0d3f0cb13fa2df` |
| 5 | `instance` | [instCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instcompl--402cce0b787ea9980e48ee90.md) | 54 | `declaration-track:402cce0b787ea9980e48ee90877c4e8597fe409ea7a9695fbedd8000e578c061` |
| 6 | `lemma` | [compl_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/compl-lift--cfec4e2a75df635384ac2357.md) | 59 | `result-track:cfec4e2a75df635384ac235760309f40a0cc60f40efb73b3c1ef8e7d00a4fc71` |
| 7 | `lemma` | [compl_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/compl-comp--51fc2e5594526eb8f1ea3064.md) | 60 | `result-track:51fc2e5594526eb8f1ea306499e480fb1a6ce7bade93bba94ff8d2ac6804258c` |
| 8 | `inductive` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/le--fa8ed993dd79640a2e0847c9.md) | 69 | `declaration-track:fa8ed993dd79640a2e0847c9d6adfba655627506aaa57c62b265744e0b7336ee` |
| 9 | `inductive` | [LT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lt--cf40a46100f902af15e91cbd.md) | 79 | `declaration-track:cf40a46100f902af15e91cbda5ec3b96ccc9c78a036e425d01b0b925b0ebd77e` |
| 10 | `instance` | [instLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instle--2492dadc63f2a4576c0f1588.md) | 85 | `declaration-track:2492dadc63f2a4576c0f1588e61ceb9bb3be57d356ab232fa36650908e94aaa2` |
| 11 | `instance` | [instLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instlt--ff0eeb4773219d9b302b47a7.md) | 89 | `declaration-track:ff0eeb4773219d9b302b47a79476dfebeb4247605050a2e7c10caa64810cc91e` |
| 12 | `instance` | [instSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instsup--866e1a9bc5879dd71424839a.md) | 97 | `declaration-track:866e1a9bc5879dd71424839aa3b732262dfdae37249bc3a11c39ce25af7ae138` |
| 13 | `instance` | [instInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instinf--291bc47dd58e3420e4f85046.md) | 109 | `declaration-track:291bc47dd58e3420e4f8504655c6bc12da0239ea156f7e32c34462e7e1d70509` |
| 14 | `instance` | [instBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instbot--ca95cec4d99baea0c7086f57.md) | 117 | `declaration-track:ca95cec4d99baea0c7086f57e30ddf6ad8756a1c90a992195840aa35046c8ce4` |
| 15 | `instance` | [instTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/insttop--0def785b42c1e64560e31a7a.md) | 121 | `declaration-track:0def785b42c1e64560e31a7ab01c478dffb6127d7a897aeb4167997ded96b931` |
| 16 | `instance` | [instSDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instsdiff--67cdd599838982090cd529bd.md) | 129 | `declaration-track:67cdd599838982090cd529bd28e304c53c63502adebb714364819155de9c000b` |
| 17 | `lemma` | [lift_le_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-le-lift--75714cdc7fb81c3a8a832d05.md) | 136 | `result-track:75714cdc7fb81c3a8a832d0547503f9c36bfdd035ccffaace4a1e411fe344424` |
| 18 | `lemma` | [comp_le_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-le-comp--4090af6ac13d59aee42a4960.md) | 137 | `result-track:4090af6ac13d59aee42a4960cb2fabb4eafe03e63ffa04fca9fb06d20e78b6e1` |
| 19 | `lemma` | [lift_le_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-le-comp--ca1616d8170c2cad0b439822.md) | 138 | `result-track:ca1616d8170c2cad0b4398229325c77a54ace835893b5b17082eccef45800c17` |
| 20 | `lemma` | [not_comp_le_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/not-comp-le-lift--20b3bd183aed2004953fe23c.md) | 139 | `result-track:20b3bd183aed2004953fe23cc6c71130f72dc3caeeeaca48f0f894b0fbd872c8` |
| 21 | `lemma` | [lift_lt_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-lt-lift--1c03fcb0eae0ec4fc00f8c1b.md) | 141 | `result-track:1c03fcb0eae0ec4fc00f8c1b77ad1ba35058ec84f6303a521234e00bcab3e528` |
| 22 | `lemma` | [comp_lt_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-lt-comp--64786cd4a8ac0691673f6531.md) | 142 | `result-track:64786cd4a8ac0691673f6531d903ca92de662d31d9ee181498f3526df5fde14c` |
| 23 | `lemma` | [lift_lt_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-lt-comp--79748af08c13e8c32a6781e8.md) | 143 | `result-track:79748af08c13e8c32a6781e829bba5bef862ab8b3881dd87f7fd950f5cab7212` |
| 24 | `lemma` | [not_comp_lt_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/not-comp-lt-lift--241ac0ffd79fdc296f6d6fe9.md) | 144 | `result-track:241ac0ffd79fdc296f6d6fe9bc14e18f114c5b14a9468e14218ee1fae21f52d5` |
| 25 | `lemma` | [lift_sup_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-sup-lift--38f3cf6f18d232278fc70a32.md) | 146 | `result-track:38f3cf6f18d232278fc70a32c4c2725e3d44a1f481bf3de323076aca3af285b4` |
| 26 | `lemma` | [lift_sup_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-sup-comp--f426511746a58f7305aa3e88.md) | 147 | `result-track:f426511746a58f7305aa3e88425fb3da61b6a8d274cd9acd77b88722cc59e00e` |
| 27 | `lemma` | [comp_sup_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-sup-lift--aaf41bcce4c3f01457323ec9.md) | 148 | `result-track:aaf41bcce4c3f01457323ec9f070415195878f7558a89a67fa6295ae139823a7` |
| 28 | `lemma` | [comp_sup_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-sup-comp--16cbe95f5f1276326268f5d6.md) | 149 | `result-track:16cbe95f5f1276326268f5d69978dd2343b138d768e29ff94d056010ee5bae3c` |
| 29 | `lemma` | [lift_inf_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-inf-lift--6c76f280eaee78116d15a30d.md) | 151 | `result-track:6c76f280eaee78116d15a30dc3b1df4ccb403467374abab7f1055969d862cbbb` |
| 30 | `lemma` | [lift_inf_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-inf-comp--6ad9a27d6b6737ba59bd1bef.md) | 152 | `result-track:6ad9a27d6b6737ba59bd1bef89d6c415e2b53056cd5f78a5d32645f9958a514c` |
| 31 | `lemma` | [comp_inf_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-inf-lift--d4d77fa8f4048cd846bb4e66.md) | 153 | `result-track:d4d77fa8f4048cd846bb4e666785a65b6fc25309b915ab64f693fcd82dfed744` |
| 32 | `lemma` | [comp_inf_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-inf-comp--c17929ecbbc1393249a01c01.md) | 154 | `result-track:c17929ecbbc1393249a01c01e51236b7756f98c5be83ff7016c00eab05cd0dde` |
| 33 | `lemma` | [lift_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-bot--2e861f47944762fe6bcdb141.md) | 156 | `result-track:2e861f47944762fe6bcdb141f3ca5882bcfcef9ea1bfdcdd84160e9dad5a1aa0` |
| 34 | `lemma` | [comp_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-bot--bf807ee90fe19c34b4db7d1e.md) | 157 | `result-track:bf807ee90fe19c34b4db7d1e90f2547f29bf3ed64eb651de1369a63667262dda` |
| 35 | `lemma` | [lift_sdiff_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-sdiff-lift--94dd2c6ead0fc38a04a16505.md) | 159 | `result-track:94dd2c6ead0fc38a04a16505e6d7333f5366a5c0899395d109e16504c0ca6f32` |
| 36 | `lemma` | [lift_sdiff_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/lift-sdiff-comp--1cc93182eee63c5bd1a51ef3.md) | 160 | `result-track:1cc93182eee63c5bd1a51ef33d96de0d9b46f43bb468cea690e3e07d724137d8` |
| 37 | `lemma` | [comp_sdiff_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-sdiff-lift--3d5f887ef22e11b33963903c.md) | 161 | `result-track:3d5f887ef22e11b33963903c8f7352fe14d06d58d88dd7a52dd07c01fa39002f` |
| 38 | `lemma` | [comp_sdiff_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/comp-sdiff-comp--2d8d04cb79a91e35f2a2cda6.md) | 162 | `result-track:2d8d04cb79a91e35f2a2cda601037d833c64dc36415a290e6f4e9407562e94c6` |
| 39 | `instance` | [instPreorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instpreorder--09c98982f0d0597ac4370f37.md) | 164 | `declaration-track:09c98982f0d0597ac4370f3775d8990c964e7b46bf318199bf83a24bafbabaf0` |
| 40 | `instance` | [instPartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instpartialorder--f25fadf035ff979ecd6bb8b5.md) | 180 | `declaration-track:f25fadf035ff979ecd6bb8b575015f4709ffa48e4d1e265c3d3884d154ede0c0` |
| 41 | `instance` | [instSemilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instsemilatticesup--5351c88625dc45d240578bc3.md) | 187 | `declaration-track:5351c88625dc45d240578bc3adcf5e0e57051795c1de27a1aa5edc7fc164dea6` |
| 42 | `instance` | [instSemilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instsemilatticeinf--76f40b464ce89d54d3432e81.md) | 208 | `declaration-track:76f40b464ce89d54d3432e81d03c80f7395ce43d816622250c1a0d3bbd6fbc5b` |
| 43 | `instance` | [instDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instdistriblattice--89c97c3246e8ceaa908865b1.md) | 227 | `declaration-track:89c97c3246e8ceaa908865b13c70b76ee8d6e4f1af24f7d0cd244d59a128df23` |
| 44 | `instance` | [instBoundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instboundedorder--18adc83bd70f527b815be49e.md) | 245 | `declaration-track:18adc83bd70f527b815be49e21fa2de96026e1ecf9ec62bafc0594a8b53f8eea` |
| 45 | `instance` | [instBooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/instbooleanalgebra--8195f7d2c68f6395ea831e8b.md) | 253 | `declaration-track:8195f7d2c68f6395ea831e8bfe30db2c93f83b02985ecbf2276253b72bef89e3` |
| 46 | `def` | [liftLatticeHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/liftlatticehom--89f65f94874851633e6a33be.md) | 269 | `declaration-track:89f65f94874851633e6a33be2f5058ef3009179e872a21a14fd279f0293a6aef` |
| 47 | `lemma` | [liftLatticeHom_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Booleanisation/Variant8f42ee6738b8144ba08093d74038b3821d799c7b8561f3a902bff932210a93c6.lean/declarations/liftlatticehom-injective--6797ea77339747cc95bceadc.md) | 274 | `result-track:6797ea77339747cc95bceadcd967026a7547cc907a9018ccacbfa24194fef2b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
