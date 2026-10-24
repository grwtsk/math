# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e7a4a62baea7b5bb54bb32062a5c1558150ac05",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e7a4a62baea7b5bb54bb32062a5c1558150ac05`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.ConformalLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformalat--8ee82e3230bbeedf7075952d.md) | 53 | `declaration-track:8ee82e3230bbeedf7075952deb41f62dc001be8b0cb4abf94c8ef6136dc24f37` |
| 2 | `theorem` | [conformalAt_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformalat-id--2342628b33eef77cd8c0211f.md) | 56 | `result-track:2342628b33eef77cd8c0211fa4897578b3bccf243117c5aa4abbbdf22b5b5922` |
| 3 | `theorem` | [conformalAt_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformalat-const-smul--1f75bea68996475db4387f55.md) | 59 | `result-track:1f75bea68996475db4387f556327a087af098a5e8af3aa21b98a6e8157e4402c` |
| 4 | `theorem` | [Subsingleton.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/subsingleton-conformalat--244b315d46a792d519717f87.md) | 63 | `result-track:244b315d46a792d519717f87456669a9e9a4c905d6df39ec7edfa4d3d4134e8c` |
| 5 | `theorem` | [conformalAt_iff_isConformalMap_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformalat-iff-isconformalmap-fderiv--65b18f57566217b7f2f792bc.md) | 67 | `result-track:65b18f57566217b7f2f792bcd0091645cde7c3b07e5f8314641e11a5e3d7cdcf` |
| 6 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/differentiableat--926fcd5e682bd1156f7d7519.md) | 80 | `result-track:926fcd5e682bd1156f7d7519e637db4fc38b0a330c4903b5f43b796f00c45af2` |
| 7 | `theorem` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/congr--382ce71473fba61000d18901.md) | 84 | `result-track:382ce71473fba61000d189018463d1482b7e579007e1553ab1a81f24b7a92ef2` |
| 8 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/comp--fe131aa817245417b35dee79.md) | 89 | `result-track:fe131aa817245417b35dee79eaff4257e585e61349a70260b9d72d7c8409cd37` |
| 9 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/const-smul--b703c7b1a385f6fc14c06564.md) | 95 | `result-track:b703c7b1a385f6fc14c06564c219c81c894fdc8f654cfb097edfd6fdd048c5d7` |
| 10 | `def` | [Conformal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformal--f9d3fd0ee7bc6dacdb39bd6e.md) | 106 | `declaration-track:f9d3fd0ee7bc6dacdb39bd6e761b384cbc415a48c84771ad29deedfeb0ae0041` |
| 11 | `theorem` | [conformal_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformal-id--df167f6c5b9e84ff4539b994.md) | 109 | `result-track:df167f6c5b9e84ff4539b994b17d73c6774d50d44eb9b853b8a1520aa16485ca` |
| 12 | `theorem` | [conformal_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformal-const-smul--600099c69bc5beb4d4836001.md) | 111 | `result-track:600099c69bc5beb4d48360018cf71bae0ca5fe342fc8b5f10a726b8d99bc70a0` |
| 13 | `theorem` | [conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/conformalat--c3076112b000e2a428c65610.md) | 116 | `result-track:c3076112b000e2a428c656104d609898028ef5bed97290c01772bc0a3487ee23` |
| 14 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/differentiable--5c97fd0a9b2f99b1fab5cbb7.md) | 119 | `result-track:5c97fd0a9b2f99b1fab5cbb773ae1343c2e026dc15d256a5821376a2da2fb10c` |
| 15 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/comp--3ac12ee29638e2bf9f5618ab.md) | 122 | `result-track:3ac12ee29638e2bf9f5618abf74e97f8c4d920970993cbd0162fea9fca4bae58` |
| 16 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant19081ef280505d077c8eddb0a265cde70fbde6b8f215dbee09a01f25e19c00d9.lean/declarations/const-smul--1a4e3088f640ec8560831297.md) | 125 | `result-track:1a4e3088f640ec85608312974c2e3f5ceffb743a3406c66adb8dd7588b8079ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
