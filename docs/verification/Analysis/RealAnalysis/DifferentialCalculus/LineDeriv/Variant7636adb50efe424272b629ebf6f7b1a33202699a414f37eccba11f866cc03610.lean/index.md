# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LineDeriv.Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31c6c901633b1a3f36ae7a3f065fb7768a6c571b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31c6c901633b1a3f36ae7a3f065fb7768a6c571b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsExtrFilter.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextrfilter-haslinederivat-eq-zero--629bed0e8c7fba7aa1a2fa7e.md) | 31 | `result-track:629bed0e8c7fba7aa1a2fa7ee439dd2ac8fe5e4e354e4ec5f5515f161944af7c` |
| 2 | `theorem` | [IsExtrFilter.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextrfilter-linederiv-eq-zero--9d45cc375bf95ad99c59c1dc.md) | 35 | `result-track:9d45cc375bf95ad99c59c1dc4dcd6b06167e2e94a9c33722d1749a49dbb869c1` |
| 3 | `theorem` | [IsExtrOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextron-haslinederivat-eq-zero--e2492f5f58de0cd18e054611.md) | 43 | `result-track:e2492f5f58de0cd18e054611f612765ec7ff9a9f0db5a68277c32a4358e64fd3` |
| 4 | `theorem` | [IsExtrOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextron-linederiv-eq-zero--fae562162ed015aa500e544c.md) | 47 | `result-track:fae562162ed015aa500e544ccd5a29f2994032f26dd7c426e1a8c1450637a06d` |
| 5 | `theorem` | [IsMinOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isminon-haslinederivat-eq-zero--350c1e43846c93ff4f82ef8f.md) | 51 | `result-track:350c1e43846c93ff4f82ef8f557c7434a754a160e51d2244df6846fb94e74bf0` |
| 6 | `theorem` | [IsMinOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isminon-linederiv-eq-zero--84fe7185766ffab658bbc938.md) | 55 | `result-track:84fe7185766ffab658bbc938eafa5cc8992e8b11c02c8c9300557f9990aa805c` |
| 7 | `theorem` | [IsMaxOn.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/ismaxon-haslinederivat-eq-zero--364df2285bea5493b3e68e02.md) | 59 | `result-track:364df2285bea5493b3e68e0289f37165f233e080660ddc0f09017493d7bafa27` |
| 8 | `theorem` | [IsMaxOn.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/ismaxon-linederiv-eq-zero--7c82266d2692c8fd966c8faf.md) | 63 | `result-track:7c82266d2692c8fd966c8faf82f9fc6629755df3b778f43fcbe85b4fd2ea69b1` |
| 9 | `theorem` | [IsExtrOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextron-haslinederivwithinat-eq-zero--5a907f36eb91245d015f2c2d.md) | 67 | `result-track:5a907f36eb91245d015f2c2daf8510d8c706ed006429b895f3f44316aec73c30` |
| 10 | `theorem` | [IsExtrOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isextron-linederivwithin-eq-zero--d11fe4ee3a92f6b50bb166bf.md) | 71 | `result-track:d11fe4ee3a92f6b50bb166bf1702d1ad655148d87614af95163e7a6bfc8fbcdc` |
| 11 | `theorem` | [IsMinOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isminon-haslinederivwithinat-eq-zero--065941ff50088e141c082ab6.md) | 79 | `result-track:065941ff50088e141c082ab69bc0ceae61a1a9440ffaf0f0a7da95eec2c1f0b4` |
| 12 | `theorem` | [IsMinOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/isminon-linederivwithin-eq-zero--2871e6de549ab5c2ac032f86.md) | 83 | `result-track:2871e6de549ab5c2ac032f86fc85c6af9d40276df152b504c30bcd6b80c415c6` |
| 13 | `theorem` | [IsMaxOn.hasLineDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/ismaxon-haslinederivwithinat-eq-zero--e79b5e3393d295b63c671fb6.md) | 87 | `result-track:e79b5e3393d295b63c671fb6a09a6ab44e026e6f1b67bca4f5f6f5a6e32243de` |
| 14 | `theorem` | [IsMaxOn.lineDerivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/ismaxon-linederivwithin-eq-zero--b4bceb0bfdd8856cee1dcaf5.md) | 91 | `result-track:b4bceb0bfdd8856cee1dcaf5dad103c3ee7f1f561685e5075800ded96964349f` |
| 15 | `theorem` | [IsLocalExtr.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalextr-haslinederivat-eq-zero--15d8555f0316e3386e166d8c.md) | 100 | `result-track:15d8555f0316e3386e166d8c3636193c11452ceb4908ca6422a20e09cc166f15` |
| 16 | `theorem` | [IsLocalExtr.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalextr-linederiv-eq-zero--16dad3cd7cc6c1bf0511831b.md) | 104 | `result-track:16dad3cd7cc6c1bf0511831b19a36765a98d0edd5743f698cd7663223a845238` |
| 17 | `theorem` | [IsLocalMin.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalmin-haslinederivat-eq-zero--750bf05a5d4f4c6dc1ed731e.md) | 107 | `result-track:750bf05a5d4f4c6dc1ed731e3052de49fa4dddfd5badf889be61157596086718` |
| 18 | `theorem` | [IsLocalMin.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalmin-linederiv-eq-zero--889ead9a8c49139d449eb1ff.md) | 111 | `result-track:889ead9a8c49139d449eb1ff2303173bba6c73ae953f0bc28815fd36ae8fc44a` |
| 19 | `theorem` | [IsLocalMax.hasLineDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalmax-haslinederivat-eq-zero--c807a771a748f374eeef1beb.md) | 114 | `result-track:c807a771a748f374eeef1bebcb640dcf976b3fc27249561558a55c96f97b8d29` |
| 20 | `theorem` | [IsLocalMax.lineDeriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LineDeriv/Variant7636adb50efe424272b629ebf6f7b1a33202699a414f37eccba11f866cc03610.lean/declarations/islocalmax-linederiv-eq-zero--de6d1b674da4ca259c2647c1.md) | 118 | `result-track:de6d1b674da4ca259c2647c13822b8d697690c5cebec8e4c5ad23ea1714a6282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
