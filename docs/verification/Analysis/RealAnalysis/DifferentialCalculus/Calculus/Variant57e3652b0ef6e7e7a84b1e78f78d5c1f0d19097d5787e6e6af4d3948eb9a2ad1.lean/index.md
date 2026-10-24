# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Calculus.Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6520cf3a25b197e803f61ec3e8fa00be5c877893",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6520cf3a25b197e803f61ec3e8fa00be5c877893`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/macro-rules--0276712a7148620aaf1a2c90.md) | 25 | `declaration-track:0276712a7148620aaf1a2c90120f6015eaa24216665538734f97be04f60f41e6` |
| 2 | `theorem` | [ContDiffWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/contdiffwithinat-inversion--74b7d08ad925cb3cc0f5e2e7.md) | 39 | `result-track:74b7d08ad925cb3cc0f5e2e7715b7db38617b984a37fe4205c6730a44da02436` |
| 3 | `theorem` | [ContDiffOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/contdiffon-inversion--b34536c179461ab8f7032903.md) | 44 | `result-track:b34536c179461ab8f7032903e3aadc3bbf0fd4b9a1b37eaf2d3beb6d4c50ee2d` |
| 4 | `theorem` | [ContDiffAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/contdiffat-inversion--75851b9b85be85299f59005b.md) | 49 | `result-track:75851b9b85be85299f59005ba16c45e72804763b6cbb3ae68ce1f541385a438f` |
| 5 | `theorem` | [ContDiff.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/contdiff-inversion--090e44bf71e07387604d8d9d.md) | 54 | `result-track:090e44bf71e07387604d8d9d522d1981bb0a65461baeb36b65b7d9bba7b1ec6f` |
| 6 | `theorem` | [DifferentiableWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/differentiablewithinat-inversion--e9671484885f30525741876e.md) | 59 | `result-track:e9671484885f30525741876eced4c98b74095d101d5c096b6d111b4c490127f3` |
| 7 | `theorem` | [DifferentiableOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/differentiableon-inversion--ad830fb22b6802554aecbed4.md) | 65 | `result-track:ad830fb22b6802554aecbed4cdb7526b87fb13b25e4b0101ae07c13712a176bc` |
| 8 | `theorem` | [DifferentiableAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/differentiableat-inversion--26a083714715d1887b0879e0.md) | 70 | `result-track:26a083714715d1887b0879e006a7a19df723ede729cf5b0100ab0f34a89c0408` |
| 9 | `theorem` | [Differentiable.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/differentiable-inversion--4475dd75894a8843425b1bc8.md) | 76 | `result-track:4475dd75894a8843425b1bc8b26319e1239a8de8f9ce3a38686015cb347fb070` |
| 10 | `theorem` | [hasFDerivAt_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant57e3652b0ef6e7e7a84b1e78f78d5c1f0d19097d5787e6e6af4d3948eb9a2ad1.lean/declarations/hasfderivat-inversion--b4cddd1b20a4307300d12806.md) | 88 | `result-track:b4cddd1b20a4307300d128063758a0ce1f2cec81d5e5f58b82c40421ca129a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
