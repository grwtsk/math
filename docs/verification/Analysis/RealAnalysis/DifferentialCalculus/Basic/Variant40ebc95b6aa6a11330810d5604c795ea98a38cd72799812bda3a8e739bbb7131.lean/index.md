# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270590cafc7e2f09245f90e413ee35a3faef2279",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270590cafc7e2f09245f90e413ee35a3faef2279`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DualInterval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/dualinterval--a7cc1e93c0e713ba030519c2.md) | 38 | `declaration-track:a7cc1e93c0e713ba030519c2bd8d4cc7a1332e7fe5999ede951656bf42544df6` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/instance--9420cfe236f730f610b27d41.md) | 44 | `declaration-track:9420cfe236f730f610b27d41a84a5c8303bc7ba800c1cb834f0699e581f087c7` |
| 3 | `def` | [const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/const--6aa717421efc321db0a280dc.md) | 50 | `declaration-track:6aa717421efc321db0a280dcad3449f0c440ec113826e339c5084b7b2cdbdfdf` |
| 4 | `def` | [piConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/piconst--dbcc8750b6ddbbae1820ed6a.md) | 55 | `declaration-track:dbcc8750b6ddbbae1820ed6a201181a2450a121721de152dcd9ab8d06ce9734c` |
| 5 | `def` | [eulerMascheroniConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/eulermascheroniconst--d3dfd11eae9cd580fdd3b833.md) | 60 | `declaration-track:d3dfd11eae9cd580fdd3b83375196ff80e578b5686a0e76547b5b744f65599be` |
| 6 | `def` | [ofMathConst](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/ofmathconst--a179c0fd22108b7bab46e6fa.md) | 65 | `declaration-track:a179c0fd22108b7bab46e6fa7955b0f9e244a74367ecf7df503ef64c0a4f0d09` |
| 7 | `def` | [varActive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/varactive--f0fc70b087985deaccaa0541.md) | 70 | `declaration-track:f0fc70b087985deaccaa0541adc52df7195932df7088977adf19c0a877d76e2d` |
| 8 | `def` | [varPassive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/varpassive--00be58e7886e6c03474790f7.md) | 75 | `declaration-track:00be58e7886e6c03474790f7b4135c2f050f8c564f5663abd67e08a1ab9148d3` |
| 9 | `def` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/add--b435803b081cf6f21b00c770.md) | 80 | `declaration-track:b435803b081cf6f21b00c770ff3d27bc13926fc3b63067319ea55e9ef33db1e4` |
| 10 | `def` | [mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/mul--1421eab06b8a058bf45bb2e6.md) | 85 | `declaration-track:1421eab06b8a058bf45bb2e6f34f5ba78581f66561ed0e576afe4680b5a6c466` |
| 11 | `def` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/neg--ec63b33263de299942434ee6.md) | 93 | `declaration-track:ec63b33263de299942434ee603a8c640e7ca68c9fdb43498cdec4003d6653025` |
| 12 | `def` | [inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant40ebc95b6aa6a11330810d5604c795ea98a38cd72799812bda3a8e739bbb7131.lean/declarations/inv--b01a657cdf1bdcc19ca40412.md) | 100 | `declaration-track:b01a657cdf1bdcc19ca40412241bd8f16dea3798d6691064be9c5f13d8bd6a17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
