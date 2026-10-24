# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a38d2ae13d0b73ae802faab0a4f17eaf4d788b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a38d2ae13d0b73ae802faab0a4f17eaf4d788b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/contdiffbump--120a1d21c503063523f849e8.md) | 76 | `declaration-track:120a1d21c503063523f849e808c59a08c668ce716409261f39a7208a90d40132` |
| 2 | `structure` | [ContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/contdiffbumpbase--4bc32b4ba90ae9a59dd020cc.md) | 94 | `declaration-track:4bc32b4ba90ae9a59dd020cc78a3ef1419e9f3af74c3a1c530400e68264d0f92` |
| 3 | `class` | [HasContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/hascontdiffbump--b2b79290b4461857af3a5d7a.md) | 106 | `declaration-track:b2b79290b4461857af3a5d7a754a87bf9cf25fccd4c44a0c0446fc4807509af3` |
| 4 | `def` | [someContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/somecontdiffbumpbase--2ea5b94388ad0f7c6e92e08a.md) | 112 | `declaration-track:2ea5b94388ad0f7c6e92e08acf8b69a721093ba0fcc127c49a2f088486407587` |
| 5 | `theorem` | [rOut_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/rout-pos--a1fbb15abf0de133b13a64d3.md) | 119 | `result-track:a1fbb15abf0de133b13a64d336505128ec5c7996b44b908fabc153a1f73fdadb` |
| 6 | `theorem` | [one_lt_rOut_div_rIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/one-lt-rout-div-rin--bc39b3064e6db345b400b82b.md) | 124 | `result-track:bc39b3064e6db345b400b82b9c5e31258dbad0511862c3d5d9b679a2e43dffce` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/instance--fe3f3b34956d7a8b197a506f.md) | 130 | `declaration-track:fe3f3b34956d7a8b197a506f20d49ba4cad5960a33ab6d60f04538ba5084e14f` |
| 8 | `def` | [toFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/tofun--26bc63f8e618234e967de97a.md) | 138 | `declaration-track:26bc63f8e618234e967de97aa39d42977afc86b819f697451dba31143dc3aa83` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/instance--b4eef7714d8f9584fe7e6e49.md) | 142 | `declaration-track:b4eef7714d8f9584fe7e6e49a913394611bd61963bf61f8cfdf34b41fe2cb2b5` |
| 10 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/apply--afad00d8d6fd8fd1ec533f2f.md) | 145 | `result-track:afad00d8d6fd8fd1ec533f2fa3afcc7759f23fcc2e0555272b74d5ef8b5a2ff7` |
| 11 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/sub--4bc27c25b7384414671609f9.md) | 150 | `result-track:4bc27c25b7384414671609f974550527589667d72db00e854b5303497f9e264d` |
| 12 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/neg--8a5bd032d16f015e259237ab.md) | 154 | `result-track:8a5bd032d16f015e259237ab66bda510969c4a879e18d3f9350b433741872b6f` |
| 13 | `theorem` | [one_of_mem_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/one-of-mem-closedball--bd86e7b4fdfd9a370293fdeb.md) | 160 | `result-track:bd86e7b4fdfd9a370293fdeb0bfcd05b080b4860e2f72560394a843fa391622a` |
| 14 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/nonneg--860e3709207fb519184d7226.md) | 166 | `result-track:860e3709207fb519184d722611adc5613233654276d3d45cd0c7d69cec660ee6` |
| 15 | `theorem` | [nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/nonneg--686a62a82a448bbde800276f.md) | 171 | `result-track:686a62a82a448bbde800276fa4db7847e4fd989f7beb43a7ec30fe253b6f176f` |
| 16 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/le-one--c9087f75a22c4ea8933b5ad9.md) | 174 | `result-track:c9087f75a22c4ea8933b5ad9b03718dbd9e9145d5fe24dfd2e2313466ce700ed` |
| 17 | `theorem` | [support_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/support-eq--6d740c9682cff201f0862d9b.md) | 178 | `result-track:6d740c9682cff201f0862d9bb4cfffd97aad2601f40fb7079a8e55aedb2958ea` |
| 18 | `theorem` | [tsupport_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/tsupport-eq--e596a1a9dfea6c06e1331280.md) | 185 | `result-track:e596a1a9dfea6c06e133128053efd8930fc84a9667fafbe8b25c0bd9c1a1a09c` |
| 19 | `theorem` | [pos_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/pos-of-mem-ball--43b49303fa4bf67071fc989c.md) | 189 | `result-track:43b49303fa4bf67071fc989cd3f8fa5f1c4389973ea060f3f97d1e147b663df5` |
| 20 | `theorem` | [zero_of_le_dist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/zero-of-le-dist--37c5ce2398977aa45ec771fa.md) | 193 | `result-track:37c5ce2398977aa45ec771fa3ca66ff9759456587f1d5d3bdf6b91ab22d26c04` |
| 21 | `theorem` | [hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/hascompactsupport--8dc372b8b91f2ea1534a36e4.md) | 197 | `result-track:8dc372b8b91f2ea1534a36e4281f2df3debb4d2d9566ce9773ba557ec1454cc1` |
| 22 | `theorem` | [eventuallyEq_one_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/eventuallyeq-one-of-mem-ball--7edca94df53950c679e7ef0f.md) | 201 | `result-track:7edca94df53950c679e7ef0feae94cff06e7ee1d780118bafc7e8628dd417bac` |
| 23 | `theorem` | [eventuallyEq_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/eventuallyeq-one--3e1865ce0ebb52c49a0d0f60.md) | 205 | `result-track:3e1865ce0ebb52c49a0d0f60c4215b0f0fd9b88df5687866e7ee4c1b701ccdb1` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiffWithinAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--84f75bc121f5c1b5cf58b42b.md) | 211 | `result-track:84f75bc121f5c1b5cf58b42bf97b393384897ecbdc364f77aacd6e398d08e30a` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiffAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--349f4fad1a8ab5d3b78a1024.md) | 224 | `result-track:349f4fad1a8ab5d3b78a1024278a5e88f6463edaf67e03d87a832897c9f047ff` |
| 26 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.ContDiff.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--f3dd6a86cffd3ee2a9b8daae.md) | 231 | `result-track:f3dd6a86cffd3ee2a9b8daae40f11263ef1a60e407448faa3281d49196ee0ffc` |
| 27 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/contdiff--385e331a81cb9c70f4e100f9.md) | 239 | `result-track:385e331a81cb9c70f4e100f96aaa30940cb5bc0a0898c43c83e722ed9d5d2b40` |
| 28 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/contdiffat--62f321db4cdc0e067a6aa35f.md) | 243 | `result-track:62f321db4cdc0e067a6aa35fe551f43a3a1d80e2d176cd9dd99662620445e9bc` |
| 29 | `theorem` | [contDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/contdiffwithinat--ef9c17e902297e125f24b479.md) | 247 | `result-track:ef9c17e902297e125f24b4794ec2d954938fae9b34d0d9e790178c4c5507597c` |
| 30 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7264cea96a3f19f5bf5070e05da7cbedff4b3dffbad02b410fb87e8972aa107b.lean/declarations/continuous--fb571850b22e7c6d8b94edb3.md) | 251 | `result-track:fb571850b22e7c6d8b94edb30346a6ad6d7c13abbe049a9d80f064ad6dbdc630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
