# Verification target: GRWTSK.Algebra.Prod.Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5280a25b4b5be4f198af4c2e284518cd23997fe2",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5280a25b4b5be4f198af4c2e284518cd23997fe2`.

Source path: `GRWTSK/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.CompTypeclasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instdistrib--0f4e896644184a0b32a10c46.md) | 31 | `declaration-track:0f4e896644184a0b32a10c469d3bd2fa7ad15a8ae619aea6a042af778eca71b3` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalnonassocsemiring--b0c151a0ca02ff60b16586fa.md) | 36 | `declaration-track:b0c151a0ca02ff60b16586fa3391fa3b8420c4c4e4716247aaf8e83b2436834b` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalsemiring--cb45f013fcd802e5350ea5a9.md) | 43 | `declaration-track:cb45f013fcd802e5350ea5a95012c0336cde31b409376ac84a4535e56bab95c9` |
| 4 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonassocsemiring--92325b0a39f21906d2dfc3de.md) | 49 | `declaration-track:92325b0a39f21906d2dfc3de6498fdbde9952cd9a31a571d7992ffa1e2e62a7d` |
| 5 | `instance` | [instSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instsemiring--53f8a54855a759e35ecb17ad.md) | 56 | `declaration-track:53f8a54855a759e35ecb17ad307c6865593413e589222134a77a79c8ba5cef84` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalcommsemiring--ae7e014be599f398ddbd2ebb.md) | 62 | `declaration-track:ae7e014be599f398ddbd2ebb3287a68de48c2094862622109b860f54d1a0adb1` |
| 7 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instcommsemiring--e8d6ab40b571fcd666472563.md) | 67 | `declaration-track:e8d6ab40b571fcd6664725630fa0886f045fedd4d12e22d2c5440c49fa47f66d` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalnonassocring--214166c332564e872dd7988e.md) | 70 | `declaration-track:214166c332564e872dd7988ef485fa5bb0fb9d5efde5807faa3eb63daed154cc` |
| 9 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalring--49ff45f11d887d2b9f11f798.md) | 75 | `declaration-track:49ff45f11d887d2b9f11f798f73e1e36a7fc29786e11e8cca328ef87b8809bf5` |
| 10 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonassocring--ea332211798028ca64aed190.md) | 79 | `declaration-track:ea332211798028ca64aed190bb82f0d93e59534962804dcc0eef47a39d7ff0b5` |
| 11 | `instance` | [instRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instring--30feb2b0a440ab2f8fea46fa.md) | 85 | `declaration-track:30feb2b0a440ab2f8fea46fad5832f19c0dfdbd50ec52a470132c267a386b6b1` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instnonunitalcommring--d5a6594299519b473d170d7b.md) | 91 | `declaration-track:d5a6594299519b473d170d7b19ea4593d39e17ea41da3a48f7652112502b86b7` |
| 13 | `instance` | [instCommRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instcommring--e66a4832d32b16de99ee998b.md) | 96 | `declaration-track:e66a4832d32b16de99ee998b48bafe4057d1002ce0516141fdd49f851b563919` |
| 14 | `def` | [fst](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/fst--124ea37890220abb78032cf5.md) | 106 | `declaration-track:124ea37890220abb78032cf5cc310a18843f930a82f30de2acd225ddc98d20ab` |
| 15 | `def` | [snd](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/snd--04b87add8e0cb66965cc0b8f.md) | 110 | `declaration-track:04b87add8e0cb66965cc0b8f0fa7c85587aabf54724692fac62395bfe85ed325` |
| 16 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-fst--fbf40edb9a70123e7c819b37.md) | 116 | `result-track:fbf40edb9a70123e7c819b37df30fc1b583a6af7dbf61f2e20fa78cd73200301` |
| 17 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-snd--3e622a2f1f2a6c9f236fa90a.md) | 120 | `result-track:3e622a2f1f2a6c9f236fa90aeeb70bbb1181f42a6bd3863384080facc94f10ea` |
| 18 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod--c34aec348d841c23be7d8d4c.md) | 129 | `declaration-track:c34aec348d841c23be7d8d4c84b4bcf58157027c4577d6ecb30b688bc49fbdbb` |
| 19 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-apply--85185a77a8c5bd4f29c9eadd.md) | 134 | `result-track:85185a77a8c5bd4f29c9eadd9a25f3708f3a3ab7bccc86ded3229577c42736ec` |
| 20 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/fst-comp-prod--71d5d036669513c84db389d8.md) | 138 | `result-track:71d5d036669513c84db389d84d7bb27b51ab80b45576c4a88994c1d9d9ba9b56` |
| 21 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/snd-comp-prod--7a2a9d6379cff1e91cabbf49.md) | 142 | `result-track:7a2a9d6379cff1e91cabbf496e99a8be0a05fd8c801bd9c00c16b3ec2d65a0c2` |
| 22 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-unique--0fe8cdfbe79d323baf09b365.md) | 145 | `result-track:0fe8cdfbe79d323baf09b365a797c4e0b9eb703149e438a25778bc03043b3c79` |
| 23 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodmap--2cdb17dad43a0ec236c521db.md) | 156 | `declaration-track:2cdb17dad43a0ec236c521db2e8e58dcf7e1e6e21717a5d71af198aa67721220` |
| 24 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodmap-def--3681df4652bf370cec083267.md) | 159 | `result-track:3681df4652bf370cec08326741894a2eda380b5ca05425a4ae87196c7bf003f9` |
| 25 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-prodmap--96a130471091459ce25c992b.md) | 163 | `result-track:96a130471091459ce25c992b0680f2f0370935c60aed51b23b9a730ca902edb7` |
| 26 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-comp-prodmap--2986a77e1621f3fdd550563f.md) | 166 | `result-track:2986a77e1621f3fdd550563fd597ef22bbad5c28c2dfa42c9034c02544d9e71d` |
| 27 | `def` | [fst](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/fst--9009d2d95b3afe46adc7ee77.md) | 179 | `declaration-track:9009d2d95b3afe46adc7ee779eb1c78cbf248b076835cdfb51ee8c16c80051f1` |
| 28 | `def` | [snd](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/snd--16bc8526ddbb888d0b4ad589.md) | 183 | `declaration-track:16bc8526ddbb888d0b4ad5894833a7cd1b72b1e50b4910d9329b2ac10204edb1` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instance--6e5d319cc0d7fdd908be15dc.md) | 186 | `declaration-track:6e5d319cc0d7fdd908be15dc6ea8a3271853879bc0f39cb17c60c2924225c2be` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/instance--6de94e7604aec86e6a679217.md) | 187 | `declaration-track:6de94e7604aec86e6a67921740816ff44381acdf04411b9522c360eee9c0a53a` |
| 31 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-fst--b834a8c2bde8cb110bdb53de.md) | 192 | `result-track:b834a8c2bde8cb110bdb53dec3991f1d2274cf92da6602b3370018ad45a59e5f` |
| 32 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-snd--50a013534d9f1d892cd5b045.md) | 196 | `result-track:50a013534d9f1d892cd5b045c7d8d9b03da80f66b6befe3b203b93e65289a98b` |
| 33 | `def` | [prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod--11ddc2c447b3b967290a256a.md) | 205 | `declaration-track:11ddc2c447b3b967290a256aeaf464b540b30aa60d787ca3dc5bc121903d0f29` |
| 34 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-apply--1320071dbb9c154405a75e29.md) | 210 | `result-track:1320071dbb9c154405a75e2973513cb5a47934f63b41410fcbabfc728e38edcd` |
| 35 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/fst-comp-prod--cff6e6b2e15877c2004de931.md) | 214 | `result-track:cff6e6b2e15877c2004de931960bfa7784c79e884696fe158591444dfd41dfb8` |
| 36 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/snd-comp-prod--0209730b842a35f08f44c7d4.md) | 218 | `result-track:0209730b842a35f08f44c7d4610ef0484d5ac5569ca0ddef4fa00ae9a18acfc4` |
| 37 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-unique--c7d29d0cf4e591f18756e856.md) | 221 | `result-track:c7d29d0cf4e591f18756e8562d92779685f1da19c2e0dc10b5fa0e2c1c14f6ca` |
| 38 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodmap--cfa037668da5b9d4df8d7b17.md) | 232 | `declaration-track:cfa037668da5b9d4df8d7b1721c7d6500e4d2ab3a5f1d0f23903b269a27b8bfa` |
| 39 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodmap-def--bff390879531e4d242692337.md) | 235 | `result-track:bff390879531e4d2426923371ab80fbb759c4007c103a5899377e1b3a8571763` |
| 40 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-prodmap--d95243e729f983894e0863df.md) | 239 | `result-track:d95243e729f983894e0863dfa8bb703c14c2b6811c923f92d524be60195a5719` |
| 41 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prod-comp-prodmap--89c00ad8b8a26a633c449146.md) | 242 | `result-track:89c00ad8b8a26a633c44914608957fb47191a7858edf8f5342cfd0799bf6e2f6` |
| 42 | `def` | [prodComm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodcomm--50942ec0cd07f86d1cc77c78.md) | 255 | `declaration-track:50942ec0cd07f86d1cc77c78ca942da4f43d08e93c6de8936f35103fd88cad3e` |
| 43 | `theorem` | [coe_prodComm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-prodcomm--73103891b5c228d60a39a83c.md) | 259 | `result-track:73103891b5c228d60a39a83c53dc74758d2f8748897654f8b2d0f0a3e07f672b` |
| 44 | `theorem` | [coe_prodComm_symm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/coe-prodcomm-symm--abc62787f5db6750f6b2c3e6.md) | 263 | `result-track:abc62787f5db6750f6b2c3e698c63e020b6d00e079c08dd81cc7a15ce7be2e43` |
| 45 | `theorem` | [fst_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/fst-comp-coe-prodcomm--e143867903b4971d2ba0054e.md) | 267 | `result-track:e143867903b4971d2ba0054ec8c17fc782507885e456d481fa4ac4b170123c70` |
| 46 | `theorem` | [snd_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/snd-comp-coe-prodcomm--0aea6bba033840cab7d39432.md) | 272 | `result-track:0aea6bba033840cab7d394326d11dac3a2d545a2394bc45405e22c494a00ad6f` |
| 47 | `def` | [prodProdProdComm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodprodprodcomm--627b9cbaff6e5f417bb87cdb.md) | 282 | `declaration-track:627b9cbaff6e5f417bb87cdb22e1436e1a3a89fcc47aafd42d2598b0bcdea1cf` |
| 48 | `theorem` | [prodProdProdComm_symm](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodprodprodcomm-symm--b68cc662ff404f34560698ff.md) | 288 | `result-track:b68cc662ff404f34560698ff8a06ab18c00bd708d0be82de23d4d9a38740d0f4` |
| 49 | `theorem` | [prodProdProdComm_toAddEquiv](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodprodprodcomm-toaddequiv--1f270a2817ade8198b959a5c.md) | 292 | `result-track:1f270a2817ade8198b959a5c2e1e160dcc114796c7bcaa5c568413e498cce5f9` |
| 50 | `theorem` | [prodProdProdComm_toMulEquiv](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodprodprodcomm-tomulequiv--fcdaa513dc37897f9de0e5d0.md) | 297 | `result-track:fcdaa513dc37897f9de0e5d02ce9fca74be5be56e9156347d2dabf622c94f3a6` |
| 51 | `theorem` | [prodProdProdComm_toEquiv](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodprodprodcomm-toequiv--08e2bb92273cff5368a67dcf.md) | 302 | `result-track:08e2bb92273cff5368a67dcfb5b611a612a372b5490adee7996165e44f5f104f` |
| 52 | `def` | [prodZeroRing](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/prodzeroring--9f337cd6384a87e811484906.md) | 312 | `declaration-track:9f337cd6384a87e811484906df562b8899a0c99c849f38ce48ee3f4e3942eb6c` |
| 53 | `def` | [zeroRingProd](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/zeroringprod--d0415afa1712b5c6e3327b47.md) | 322 | `declaration-track:d0415afa1712b5c6e3327b47098987f4159cf83c4ddbd63add012598a8df5453` |
| 54 | `theorem` | [false_of_nontrivial_of_product_domain](../../../../mathematics/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/declarations/false-of-nontrivial-of-product-domain--edb2c4716dd5dfb609f2ee27.md) | 333 | `result-track:edb2c4716dd5dfb609f2ee2720bfcbd5ddf610c128c486c6f6738aae2be808ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
