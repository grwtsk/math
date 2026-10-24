# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sqrt.Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67fc6aa4eb65bd96530128b811e1aa32fae7bc0a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67fc6aa4eb65bd96530128b811e1aa32fae7bc0a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqLocalHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/sqlocalhomeomorph--dcf47607c1a690dea7260ad1.md) | 39 | `declaration-track:dcf47607c1a690dea7260ad1303e863ebd6a3e2b547356367bdea55565035fa0` |
| 2 | `theorem` | [deriv_sqrt_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/deriv-sqrt-aux--0f04c5a19c5e9b6b4d734585.md) | 54 | `result-track:0f04c5a19c5e9b6b4d734585d3e42099c872aa3e02e2e22fde5f4075ede5e09d` |
| 3 | `theorem` | [hasStrictDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasstrictderivat-sqrt--f37b036205915db3274808d3.md) | 69 | `result-track:f37b036205915db3274808d35ca805b2d44634b3d96bd88b3ed180b4a0f65be2` |
| 4 | `theorem` | [contDiffAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/contdiffat-sqrt--7a36b5be41dca6dfc71a613a.md) | 73 | `result-track:7a36b5be41dca6dfc71a613a9b28d60aea4109f34062995c012209103ebc451f` |
| 5 | `theorem` | [hasDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasderivat-sqrt--333e16c87025aa2acbfea055.md) | 77 | `result-track:333e16c87025aa2acbfea0556b7d7a7bd252e149053a7d1c7f8e1bc2dbcc0bf5` |
| 6 | `theorem` | [HasDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasderivwithinat-sqrt--3d700354c265b9c4e390c54a.md) | 89 | `result-track:3d700354c265b9c4e390c54aac0e7bd992da05299987016b4dae816567bbf906` |
| 7 | `theorem` | [HasDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasderivat-sqrt--6c7817f018ed6135c700640d.md) | 95 | `result-track:6c7817f018ed6135c700640d62650ead4ba4e00a9a4a970aaed6e218cbe6c862` |
| 8 | `theorem` | [HasStrictDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasstrictderivat-sqrt--67284407db2f2ab53e4cf4c5.md) | 100 | `result-track:67284407db2f2ab53e4cf4c563a8e7fda71bf8ffdc9ed50f771d3821df42f978` |
| 9 | `theorem` | [derivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/derivwithin-sqrt--da88889a9a12e26544d76587.md) | 105 | `result-track:da88889a9a12e26544d765873f9d4f059e1b31e94d8ccded197f76240963bf71` |
| 10 | `theorem` | [deriv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/deriv-sqrt--524f505acea52dd76110eca2.md) | 112 | `result-track:524f505acea52dd76110eca20aab6953ee0aedc3defdecec2b34aa61d9cd1531` |
| 11 | `theorem` | [HasFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasfderivat-sqrt--1ec461b8ebb830819d21db29.md) | 124 | `result-track:1ec461b8ebb830819d21db2998e9519ce90e91f49a01a94e85f49e37bfd3535c` |
| 12 | `theorem` | [HasStrictFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasstrictfderivat-sqrt--6cac4d1bfce207eef9aa0803.md) | 129 | `result-track:6cac4d1bfce207eef9aa0803ba2073fd2e1bd48f7697ae814644c6d42d350d9f` |
| 13 | `theorem` | [HasFDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/hasfderivwithinat-sqrt--3a313e3be9315c4bef3f2b47.md) | 134 | `result-track:3a313e3be9315c4bef3f2b47828bc11a5e7660b6002f4fd18678fcdaab3ce473` |
| 14 | `theorem` | [DifferentiableWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/differentiablewithinat-sqrt--85b0638b83b94f4255136f48.md) | 139 | `result-track:85b0638b83b94f4255136f48526f6b8b990b3addd1d5f84e257f1d24c644bda7` |
| 15 | `theorem` | [DifferentiableAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/differentiableat-sqrt--9b731d1f92d1d425d38eb3d1.md) | 144 | `result-track:9b731d1f92d1d425d38eb3d18d8ecb029b9ed468fe0345292743278f56edc453` |
| 16 | `theorem` | [DifferentiableOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/differentiableon-sqrt--30b55c277f81d8f7be48600e.md) | 149 | `result-track:30b55c277f81d8f7be48600e258b5f027b23a04d4166fbb1e4424b3360d2708a` |
| 17 | `theorem` | [Differentiable.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/differentiable-sqrt--0680311ff8000a19b3c43c3d.md) | 153 | `result-track:0680311ff8000a19b3c43c3d2750f2aee475175d0bac7ca30f8e7667edbdae27` |
| 18 | `theorem` | [fderivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/fderivwithin-sqrt--e6c2d8977cfb719fb438d923.md) | 157 | `result-track:e6c2d8977cfb719fb438d923beb3902703fb1ecfb93bad3486ae57e997c3493b` |
| 19 | `theorem` | [fderiv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/fderiv-sqrt--3b0ace27229473f63443af54.md) | 164 | `result-track:3b0ace27229473f63443af547a1b3975d3cffcd78c70c9fe2985f899da12a09b` |
| 20 | `theorem` | [ContDiffAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/contdiffat-sqrt--546dbaa56b2e5f46ba86be3d.md) | 169 | `result-track:546dbaa56b2e5f46ba86be3d6998974c15bb72168c1a6fe023c5fdd5713f9be6` |
| 21 | `theorem` | [ContDiffWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/contdiffwithinat-sqrt--d195f53f944393cb32bcef52.md) | 174 | `result-track:d195f53f944393cb32bcef52cd20a2091bf401b1e4249f200fa71d6844cf2518` |
| 22 | `theorem` | [ContDiffOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/contdiffon-sqrt--ba9d98d2642800adb413aa4a.md) | 179 | `result-track:ba9d98d2642800adb413aa4a6c37cf3cecc30063afe4be1efb7c231a9c0bc182` |
| 23 | `theorem` | [ContDiff.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variantfe324dcc5ac4618b86a65d0d95221a98dae05b630a454c298164c981ac39036b.lean/declarations/contdiff-sqrt--06b18e297557978a6973feb7.md) | 183 | `result-track:06b18e297557978a6973feb709d12ea763f24acbf39ddf11ad2e31f816aeb97e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
