# Verification target: GRWTSK.Analysis.Real.PowerCellMajorant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c77f105665d4f13284e684007f919750c001b3b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/PowerCellMajorant.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c77f105665d4f13284e684007f919750c001b3b`.

Source path: `GRWTSK/Analysis/Real/PowerCellMajorant.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/PowerCellMajorant.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decayPower](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/decaypower--bb4432fa837bb5605f864881.md) | 35 | `declaration-track:bb4432fa837bb5605f86488195903d5cc17033db6f39503f114b613e4d83b78b` |
| 2 | `def` | [powerCell](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/powercell--53e8e1adf4f2efc93a707810.md) | 38 | `declaration-track:53e8e1adf4f2efc93a707810a810b3cc3895f5247f49cd36790708b6f24ff319` |
| 3 | `theorem` | [decayPower_pos](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/decaypower-pos--4f55337142fd3257763d336d.md) | 40 | `result-track:4f55337142fd3257763d336dd9eb940cc29d54fd5477ef2c170818ff4a672024` |
| 4 | `theorem` | [decayPower_one](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/decaypower-one--5716716f3ceef8a3ad47c099.md) | 42 | `result-track:5716716f3ceef8a3ad47c099ea1f56a82e36b1cc713de0e922ca47359d577fa6` |
| 5 | `theorem` | [decayPower_antitone](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/decaypower-antitone--71a3edb223c8d3ef1e28902b.md) | 45 | `result-track:71a3edb223c8d3ef1e28902b4d51324509d296e8b5f7b32b3353b12b137bc162` |
| 6 | `theorem` | [powerCell_nonneg](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/powercell-nonneg--a9a3414519e2e2af1c5f6871.md) | 50 | `result-track:a9a3414519e2e2af1c5f687158a8801b32db3a3445c62160579a802a2336ec70` |
| 7 | `theorem` | [hasDerivAt_decayPower](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/hasderivat-decaypower--4a678c29bfdac92373d1d750.md) | 55 | `result-track:4a678c29bfdac92373d1d75063065ba5ffb547eefe987a6ec48856bc2efd730b` |
| 8 | `theorem` | [integral_powerCell](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/integral-powercell--1605f91d9cf84a11903c9623.md) | 68 | `result-track:1605f91d9cf84a11903c962318b9761b42f7dd775f08c058ff746736df69fecc` |
| 9 | `theorem` | [sum_powerCell](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/sum-powercell--6ce34384952946f36fd5e7a3.md) | 90 | `result-track:6ce34384952946f36fd5e7a3ea15f22c99c114edc15264082414dccfaae59933` |
| 10 | `theorem` | [sum_powerCell_le](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/sum-powercell-le--2521439cda92c603372073be.md) | 100 | `result-track:2521439cda92c603372073be614b1bd0345c2b99e79e3dedfe77b30ec2f92058` |
| 11 | `theorem` | [summable_powerCell](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/summable-powercell--77dcaebd7fe01bcb75ffe953.md) | 106 | `result-track:77dcaebd7fe01bcb75ffe953a11ea36e644855c8c7f99c0c5bacfe606c246792` |
| 12 | `theorem` | [tsum_powerCell_le](../../../../mathematics/Analysis/RealAnalysis/PowerCellMajorant.lean/declarations/tsum-powercell-le--bee309362e88245f9c304793.md) | 112 | `result-track:bee309362e88245f9c30479323fed62bc13bba988dd330c6c54f40fb6bdcf9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
