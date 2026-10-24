# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HermiteBounds.Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e4b1f2bb098d867be2cf5f57f363e52d9fb40be",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e4b1f2bb098d867be2cf5f57f363e52d9fb40be`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Hermite.Gaussian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianSq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/declarations/gaussiansq--0714d871ed3b7618d39f8e3b.md) | 43 | `declaration-track:0714d871ed3b7618d39f8e3b35072e4cb88dbd51bd85af1db2c69c1d22e34797` |
| 2 | `theorem` | [gaussianSq_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/declarations/gaussiansq-le-one--82662700fba1ff0ec070fd71.md) | 46 | `result-track:82662700fba1ff0ec070fd7127360c589afbda4d2cd0e6a5511ea0d8d6adba07` |
| 3 | `theorem` | [gaussianSq_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/declarations/gaussiansq-pos--ca52727f282604a07dbdaf74.md) | 53 | `result-track:ca52727f282604a07dbdaf740d55c4a2ae719715c14cc510d54d839280f16ee5` |
| 4 | `theorem` | [gaussianSq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/HermiteBounds/Variant8d79fa83d06ff67cc078bfea3edb6b886f8b36a484b4301646686b1eae7e6098.lean/declarations/gaussiansq-nonneg--4cd4f9b367c870b011c59782.md) | 57 | `result-track:4cd4f9b367c870b011c59782b354c1719aea8e8811cedb9842d233e40d52a1b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
