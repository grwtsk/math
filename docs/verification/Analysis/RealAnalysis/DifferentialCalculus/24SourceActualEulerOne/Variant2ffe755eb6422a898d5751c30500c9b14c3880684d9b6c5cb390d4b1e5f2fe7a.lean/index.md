# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.24SourceActualEulerOne.Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6f04143cb06f5446630faa81cdb592f432aeed",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6f04143cb06f5446630faa81cdb592f432aeed`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb1--9e5950bc2b6ed9f6aab920d8.md) | 28 | `declaration-track:9e5950bc2b6ed9f6aab920d83ce691b6d7b59ff4f7a1cd515ece1e218d436d70` |
| 2 | `def` | [periodicB2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2--a26797912a6dfb31d2c69fde.md) | 30 | `declaration-track:a26797912a6dfb31d2c69fde01b80ea1b0473d878ba75b91ef121654e806c44f` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/sourcefloorweight-eq-neg-periodicb1--26890c6acce28d0f17b1d832.md) | 33 | `result-track:26890c6acce28d0f17b1d83203b672fd7a292951da47768f7ff2163e8b8609f6` |
| 4 | `theorem` | [periodicB2_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-bounds--f37826e7caa85370681f71e6.md) | 38 | `result-track:f37826e7caa85370681f71e6d317b8fc29fea8578c02032cb558c29d5fc447fa` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-abs-le--32e018d489acb17def8c6c1b.md) | 48 | `result-track:32e018d489acb17def8c6c1b8324a60e0b805bec5b1bb65d2194fcd100a0bb8f` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-at-integer--120573413da2d496033b9fc3.md) | 52 | `result-track:120573413da2d496033b9fc34971e977dbac8e71d02b7f7c1bb13c4528d7c671` |
| 7 | `theorem` | [periodicB2_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-continuous--e9b2d7dfedee4935c854dcba.md) | 56 | `result-track:e9b2d7dfedee4935c854dcbab7a506ffb17a9ea422509710d95c021ba9948554` |
| 8 | `theorem` | [periodicB2_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-hasderivat--ef2081c9f17ad49452a4ed06.md) | 66 | `result-track:ef2081c9f17ad49452a4ed0621f0dbb9721a44eedd5e1de7bb2e9c9bda11bcf6` |
| 9 | `theorem` | [periodicB2_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/periodicb2-ae-hasderivat--3bdf7b424b6b37bc8621b027.md) | 84 | `result-track:3bdf7b424b6b37bc8621b0273710c1687f7e19b30abc12544eba064d8301fb65` |
| 10 | `theorem` | [actual_zeta_euler_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24SourceActualEulerOne/Variant2ffe755eb6422a898d5751c30500c9b14c3880684d9b6c5cb390d4b1e5f2fe7a.lean/declarations/actual-zeta-euler-one--6a80de5e75cf5c8d77e59134.md) | 92 | `result-track:6a80de5e75cf5c8d77e591343e37af39b2e5c9aac2187aaa55094b0bde9389ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
