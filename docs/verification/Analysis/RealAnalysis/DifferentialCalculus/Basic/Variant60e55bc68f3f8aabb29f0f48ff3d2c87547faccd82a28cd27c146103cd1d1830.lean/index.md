# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98e7a5659fd10ad95debe1f9af2c6c127b196d9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98e7a5659fd10ad95debe1f9af2c6c127b196d9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/contdiffbump--fc2801377bb292baf7f54bbb.md) | 74 | `declaration-track:fc2801377bb292baf7f54bbb078240295546906c1d35378d51c503a117e62356` |
| 2 | `structure` | [ContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/contdiffbumpbase--9381f5b1e791d259a7694e6d.md) | 85 | `declaration-track:9381f5b1e791d259a7694e6d4498657562a40f2830cf6a99c3f92813d383d8db` |
| 3 | `class` | [HasContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/hascontdiffbump--31f38e74410f9d2d3141335c.md) | 97 | `declaration-track:31f38e74410f9d2d3141335c1e394cb7170d8f88b8a768d1950a1c02d3856fd2` |
| 4 | `def` | [someContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/somecontdiffbumpbase--9bbeea1c999ca087b526a4ec.md) | 102 | `declaration-track:9bbeea1c999ca087b526a4ec442880e3c9e8ab5fbe4fc97360fb7b0db4728068` |
| 5 | `theorem` | [rOut_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/rout-pos--42d3dc9ec8a1bdb2e6e4b48b.md) | 108 | `result-track:42d3dc9ec8a1bdb2e6e4b48b7187ed86780c6a776d85aad0815611d45664fc83` |
| 6 | `theorem` | [one_lt_rOut_div_rIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/one-lt-rout-div-rin--2f5ea338f08e959407c8362a.md) | 111 | `result-track:2f5ea338f08e959407c8362ac90b0b30302f7b2eeb3f8d98ff143da7323a8160` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/instance--3ab646e8d9d8bbf0a373d1e1.md) | 115 | `declaration-track:3ab646e8d9d8bbf0a373d1e13f9e089d54242143141025212e8cb7210c8c80d8` |
| 8 | `def` | [toFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/tofun--873b43ccf760edcf34e0fb9d.md) | 123 | `declaration-track:873b43ccf760edcf34e0fb9d5f09d97a66af427021e9f7a864b0acd12ec0b42e` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/instance--11e35ba7485af3b33daa756d.md) | 126 | `declaration-track:11e35ba7485af3b33daa756d7cbf72d00f230579b5de19f18d8030022e8cb1d8` |
| 10 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/apply--b4b28219363dd58c81344b35.md) | 129 | `result-track:b4b28219363dd58c81344b3563e9d4957eaf4e4902e2cccf25cd65c14f200969` |
| 11 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/sub--6a72e5bc2e9a9d52f8966ff9.md) | 133 | `result-track:6a72e5bc2e9a9d52f8966ff98998d286f11eed4bad527c91dbbcc75176dbd232` |
| 12 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/neg--52256030eda121e63255c478.md) | 136 | `result-track:52256030eda121e63255c4781138aed81eca6025da74f41352bdf05439434177` |
| 13 | `theorem` | [one_of_mem_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/one-of-mem-closedball--7160249ed5ffcc59da334375.md) | 141 | `result-track:7160249ed5ffcc59da3343759d46fe4fecdbab471ab7f4d8781eac66d75878f1` |
| 14 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/nonneg--ec5e68da56f07aea522ccc07.md) | 146 | `result-track:ec5e68da56f07aea522ccc071714086ba77f9d860a849d36a470adc368da369d` |
| 15 | `theorem` | [nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/nonneg--e701b2dd62a89d414cf74d77.md) | 150 | `result-track:e701b2dd62a89d414cf74d770104d853b55fc3f4601eb7259923ac3a996f945d` |
| 16 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/le-one--7321252cf1558a82e0177086.md) | 152 | `result-track:7321252cf1558a82e01770869da2b74dfd9fd09cb66738d2fdb318da31742b01` |
| 17 | `theorem` | [support_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/support-eq--c0eb05ce6a60e9d19e1bdc26.md) | 155 | `result-track:c0eb05ce6a60e9d19e1bdc2677cc43dc46be51efcf4808e29b5f80864f9b0af1` |
| 18 | `theorem` | [tsupport_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/tsupport-eq--5faf2fd574aa45252c900962.md) | 161 | `result-track:5faf2fd574aa45252c90096200fe41b45b87cca7f44394d27c28853e068d533d` |
| 19 | `theorem` | [pos_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/pos-of-mem-ball--5503960ea2d45c856c64c779.md) | 164 | `result-track:5503960ea2d45c856c64c7795ece174b2506f99b7cbcaf400a3aa5a311d895e3` |
| 20 | `theorem` | [zero_of_le_dist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/zero-of-le-dist--6af485f4d55826b063fb6519.md) | 167 | `result-track:6af485f4d55826b063fb6519331bacfb6ee678d6e85a45f28d06affbc5d739ea` |
| 21 | `theorem` | [hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/hascompactsupport--8f0c75d3305a3e6058f2409a.md) | 170 | `result-track:8f0c75d3305a3e6058f2409ab18d0eb99dfa24bf48263730d7c32c27157e46d9` |
| 22 | `theorem` | [eventuallyEq_one_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/eventuallyeq-one-of-mem-ball--1ffa3cf5d13bf515c9035d3e.md) | 173 | `result-track:1ffa3cf5d13bf515c9035d3ec2f2cfe1ff15ba5ce89e668d7c8dbba8252ccc06` |
| 23 | `theorem` | [eventuallyEq_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/eventuallyeq-one--96a6ce92648bfd7059ae701f.md) | 176 | `result-track:96a6ce92648bfd7059ae701f2b48e6fbb120d4eb92511d309bec56ce6850a2c4` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.ContDiffWithinAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--135f91de35f1d32c710c2de9.md) | 180 | `result-track:135f91de35f1d32c710c2de9dacdfc0e4df6525970ba5d37ecbf8334bd893607` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.ContDiffAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--1649df9508f29c0114afcf14.md) | 194 | `result-track:1649df9508f29c0114afcf1492e20460f77fafcd35ab5c7ac34e63f56a731af8` |
| 26 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffBump.Variant6347e8b29ad1c843a61b01c9df824b3223ce199a44850abb837b720d01c23a6a.ContDiff.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-contdiffbump-vari--b1f7d336f7a8c1c8bbe19202.md) | 200 | `result-track:b1f7d336f7a8c1c8bbe192029855c3cb9f42417a2740cd9e9fb892a77d445687` |
| 27 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/contdiff--9cc475a00553121389e9946b.md) | 207 | `result-track:9cc475a00553121389e9946bf9b380d83359441d8afb083ec84fbcf7089a68d7` |
| 28 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/contdiffat--b9cd2fed8fee9cc823f17dee.md) | 210 | `result-track:b9cd2fed8fee9cc823f17deef89aabfcecaf1e4dcd52453481a8d96e08725519` |
| 29 | `theorem` | [contDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/contdiffwithinat--198055067852972721d39c33.md) | 213 | `result-track:198055067852972721d39c33904f810294402d6a1416f1c88f382bc4ebb3c823` |
| 30 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant60e55bc68f3f8aabb29f0f48ff3d2c87547faccd82a28cd27c146103cd1d1830.lean/declarations/continuous--d741f6e1fe3f2189bb38b8d2.md) | 216 | `result-track:d741f6e1fe3f2189bb38b8d214f6fdce2e5386e5831ebe372709fd788093a443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
