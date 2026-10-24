# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--8ca8dd6fde44210a6af1e9d9.md) | 24 | `declaration-track:8ca8dd6fde44210a6af1e9d938b261690bae345709012c11752be793b960535a` |
| 2 | `instance` | [instMulZeroClassWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instmulzeroclasswithtop--6051c6e1104e82514d62568f.md) | 30 | `declaration-track:6051c6e1104e82514d62568f6705b518b91ae491d4d53cf08ccb8ee312ea15ca` |
| 3 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-def--ca1721dd41c02cfe5c768b98.md) | 36 | `result-track:ca1721dd41c02cfe5c768b9899568f74742801a3481bfcbac27e9abced3ddc7b` |
| 4 | `theorem` | [top_mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/top-mul-top--817bdf1fa07caaf9e7d4c7e0.md) | 43 | `result-track:817bdf1fa07caaf9e7d4c7e0b38ea7b624e3a1ddd935637fe04c04ac68f3763e` |
| 5 | `theorem` | [mul_top'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-top--945f5029392050e3e0dc5404.md) | 46 | `result-track:945f5029392050e3e0dc54045ecd9d4c9f2b20a42b42230af28fc5c7ca7b4139` |
| 6 | `theorem` | [mul_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-top--6d9e7e464c9f57f3491c943a.md) | 50 | `result-track:6d9e7e464c9f57f3491c943ad7b4260212baef82e5235ced56ab122b230e3513` |
| 7 | `theorem` | [top_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/top-mul--8943f7f167c2d535e8cd87cd.md) | 53 | `result-track:8943f7f167c2d535e8cd87cded29e0282c8ec2679af650897a451a139491b5fb` |
| 8 | `theorem` | [top_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/top-mul--eddfa7db31c6e97ccc157bd7.md) | 57 | `result-track:eddfa7db31c6e97ccc157bd7c1a46ba39d35bdd6ab002dd77793e04bc4f9900b` |
| 9 | `theorem` | [mul_eq_top_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-eq-top-iff--a2e66975522e29bbcca3919a.md) | 60 | `result-track:a2e66975522e29bbcca3919aa50a1de50b718d63df86a0bcde8953f02968282e` |
| 10 | `theorem` | [mul_lt_top'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-lt-top--23e5a5700491519ca18f192c.md) | 67 | `result-track:23e5a5700491519ca18f192ce575c97d05958605000aa700a73ee08be234985f` |
| 11 | `theorem` | [mul_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-lt-top--393528654e89eac66b0d50fc.md) | 72 | `result-track:393528654e89eac66b0d50fccf7ef444b948f492ff5c77f74e42aa308f311469` |
| 12 | `instance` | [noZeroDivisors](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/nozerodivisors--f668ecf9ad6b2be80a7ed175.md) | 76 | `declaration-track:f668ecf9ad6b2be80a7ed175560ef765d251b811e1f007b3878944583a778ecb` |
| 13 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/coe-mul--7531953cc57b8d2c36a53af9.md) | 89 | `result-track:7531953cc57b8d2c36a53af9b895ac392d01433f4f74ea7dec43983beefde111` |
| 14 | `theorem` | [mul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-coe--b02775f5d30646bf1bb21ba8.md) | 98 | `result-track:b02775f5d30646bf1bb21ba854a61617975e1f05700f580aa50412589213b3b8` |
| 15 | `theorem` | [untop'_zero_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/untop-zero-mul--cc358175e4c9b036c4ccb236.md) | 108 | `result-track:cc358175e4c9b036c4ccb236e41c516ff6345b657e4de13d7f2e68c4e79de7f1` |
| 16 | `instance` | [instMulZeroOneClassWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instmulzerooneclasswithtop--e7109e639c5ebf2de34699e9.md) | 119 | `declaration-track:e7109e639c5ebf2de34699e982e263c0d493580cd669d7aefe1d07d8c12ced2e` |
| 17 | `def` | [_root_.MonoidWithZeroHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/root-monoidwithzerohom-withtopmap--ab02410685dea6f5d55530c0.md) | 135 | `declaration-track:ab02410685dea6f5d55530c05645d09e13641022a20337b68e8617d8e4b8b08e` |
| 18 | `instance` | [instSemigroupWithZeroWithTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instsemigroupwithzerowithtop--101bf226ac2da1297c5232fd.md) | 156 | `declaration-track:101bf226ac2da1297c5232fd0896e28a239ea92a4ad94cadfd6a0d0f759ca616` |
| 19 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/monoidwithzero--d5c02e470d3ca2c5f3abb0e0.md) | 174 | `declaration-track:d5c02e470d3ca2c5f3abb0e0b420181667ad9193eb26047f9ba1ad9bfa08cc0e` |
| 20 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/commmonoidwithzero--a4b5648d37e7339ee12a542d.md) | 178 | `declaration-track:a4b5648d37e7339ee12a542d634410bc3ff3b7b1179291f4e7a69699e5d6c60c` |
| 21 | `theorem` | [distrib'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/distrib--1039a9f30e60a874e0b3460b.md) | 188 | `result-track:1039a9f30e60a874e0b3460b8225dabec994cfbe1b25ee79fad08e0bd6f78777` |
| 22 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/commsemiring--37c437f51ab7381644339f7e.md) | 200 | `declaration-track:37c437f51ab7381644339f7e36136f3e7f667cae5510a4438702f383ee12e7a9` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--ff20a63a688df6e349aa9f24.md) | 206 | `declaration-track:ff20a63a688df6e349aa9f24610ce70a4b828a4be2bbd3fe8ae80a88b560e4cd` |
| 24 | `def` | [_root_.RingHom.withTopMap](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/root-ringhom-withtopmap--7badc571d2927eafb810fca2.md) | 212 | `declaration-track:7badc571d2927eafb810fca2ea9d4c8c9fc315273c92072ee5ca805f56a2c961` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--f6ae644ea810b5138080ff83.md) | 224 | `declaration-track:f6ae644ea810b5138080ff839044593dc054c1d24a1e80ee0244f18dbf1dcce6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--83186e1b0444f253db76a464.md) | 230 | `declaration-track:83186e1b0444f253db76a464ff1e832c9097a956946e20e6b04035b10a7383b4` |
| 27 | `theorem` | [mul_def](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-def--63628851538a1fb1b704675c.md) | 233 | `result-track:63628851538a1fb1b704675c17ec613e935d29423eb92be9da46f7582abeb45e` |
| 28 | `theorem` | [mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-bot--059daa061454718ea6fa1548.md) | 239 | `result-track:059daa061454718ea6fa1548d05c9c8fa38489674cc476d65e55ffec5f075064` |
| 29 | `theorem` | [bot_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/bot-mul--7780503f0ff24583bc87b02c.md) | 244 | `result-track:7780503f0ff24583bc87b02c4842504d84513a3ab9cb6f8a0bc79f0a7c108db9` |
| 30 | `theorem` | [bot_mul_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/bot-mul-bot--0f99754c8ac0318a2e8b6203.md) | 249 | `result-track:0f99754c8ac0318a2e8b62031aa5201c1844a007e58f63e58e0d569dabfb8be0` |
| 31 | `theorem` | [mul_eq_bot_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-eq-bot-iff--f60fdc98fc844991a6241407.md) | 253 | `result-track:f60fdc98fc844991a62414070c568e452c0f0c40e51cf7a24cc467e2a7d0c635` |
| 32 | `theorem` | [bot_lt_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/bot-lt-mul--1fe9fdd888409b9bafeefd47.md) | 257 | `result-track:1fe9fdd888409b9bafeefd47e34cce50d3174dcf24085720e3b190355945b353` |
| 33 | `theorem` | [bot_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/bot-lt-mul--1591e82f5cf2daae6286a86e.md) | 261 | `result-track:1591e82f5cf2daae6286a86e9823cecb31ca37fe4be48a3e0e41266307871e03` |
| 34 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/coe-mul--df1dad6904023420c055169f.md) | 272 | `result-track:df1dad6904023420c055169fc7f6c19452a4957cf7b6b03fb52bd470a9ed3fde` |
| 35 | `theorem` | [mul_coe](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/mul-coe--ca3c7fe5b7269063d39a5e67.md) | 276 | `result-track:ca3c7fe5b7269063d39a5e67649ddc3308fcfbe3e7e7f0ffcf930f1529bf6715` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--e2f36c46f6f530a2387921db.md) | 284 | `declaration-track:e2f36c46f6f530a2387921dbc941709e88dbc89597fee6e3d85c731a59f3874b` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--0510145d442a1e096cf77c85.md) | 287 | `declaration-track:0510145d442a1e096cf77c8516bb2a8e8d70f676c48911dd56378fd3ab60c051` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--e581fa42e1478e1f2c44d084.md) | 290 | `declaration-track:e581fa42e1478e1f2c44d0842c90e5f780fa4c883c82c7af91974626c0343b0e` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--f0b560f75c84ee2aa3a2f7c5.md) | 293 | `declaration-track:f0b560f75c84ee2aa3a2f7c5a224481bc70ec9ba8387641fa217c912711732fa` |
| 40 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/commmonoidwithzero--e7a0fb6403a3ecaa45c4e134.md) | 296 | `declaration-track:e7a0fb6403a3ecaa45c4e1340b7899b93844c13a9cafbbfc2a464ba76f51043c` |
| 41 | `instance` | [commSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/commsemiring--5c83f3967b79d6d85da3b7cc.md) | 300 | `declaration-track:5c83f3967b79d6d85da3b7ccc79423248b24b0cd28fbb892dd59c76826b08f7c` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--78dee02ef63a8b1d0a32a18d.md) | 304 | `declaration-track:78dee02ef63a8b1d0a32a18d94980714506974348bf17ece44801ab25646145a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--65063e71970dad8551f5c004.md) | 321 | `declaration-track:65063e71970dad8551f5c00422671a4e4d18ec32ad38d39a3e97a73784b7a2f7` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--4c009e9ffce25a66b4a4b93f.md) | 338 | `declaration-track:4c009e9ffce25a66b4a4b93f9e658b09f7a51ccddb4f060e2afdccc9db710f66` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--b2f9984ad157ddf1bd6eea60.md) | 351 | `declaration-track:b2f9984ad157ddf1bd6eea609d3d9b4e4aff5e988bc8048e8f068e3db288c727` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--b186a70714e446aa8113d059.md) | 364 | `declaration-track:b186a70714e446aa8113d0596c4be239f77ddaf439e82b65ad65db02aa6b4d0c` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--22e932fc7c67b84ed9330488.md) | 382 | `declaration-track:22e932fc7c67b84ed933048820402f2589d655dc5f03fcff6fa02e0b3d311d7d` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--f051dc4af5265b9b7ca9f183.md) | 400 | `declaration-track:f051dc4af5265b9b7ca9f1830b61cc0d8859475d86aabfa8296e1f0fb498e713` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/instance--af3690abd7bca128eb9bda94.md) | 414 | `declaration-track:af3690abd7bca128eb9bda9428d2523dfbdd4b0571188ef5d87a495813640d4f` |
| 50 | `instance` | [orderedCommSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/declarations/orderedcommsemiring--1070b11ea7e49d8742e3fb28.md) | 428 | `declaration-track:1070b11ea7e49d8742e3fb284fccd093aa60ad56d43025529863ce9dcefdde63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
