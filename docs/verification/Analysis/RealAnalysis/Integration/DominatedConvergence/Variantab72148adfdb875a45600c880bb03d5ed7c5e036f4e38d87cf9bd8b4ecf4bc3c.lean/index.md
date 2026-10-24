# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a2b936a3ea5d10ab3f40084b1f37182b408124a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a2b936a3ea5d10ab3f40084b1f37182b408124a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Markov` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Sub` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limsup_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/limsup-lintegral-le--8279efa620a35f96e74ccdff.md) | 31 | `result-track:8279efa620a35f96e74ccdff4860de58455a9b07a539c49e15cbc4b6034b1146` |
| 2 | `theorem` | [tendsto_lintegral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-lintegral-of-dominated-convergence--38d37822532d7ee5927e5522.md) | 50 | `result-track:38d37822532d7ee5927e552214bae4c621b82e263a1a4b571b42c5d9105518c2` |
| 3 | `theorem` | [tendsto_lintegral_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-lintegral-of-dominated-convergence--09c76198346d5564d10d4b04.md) | 65 | `result-track:09c76198346d5564d10d4b0484ff1cca957194b8b890ac2a1e0e76e3fc4c3a20` |
| 4 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--6b23f46895848d12d98f71d6.md) | 84 | `result-track:6b23f46895848d12d98f71d6685e6b0609770a066f5dbe01336c23d9c02b6bbf` |
| 5 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone-aux--e8bbdf2df87cea8278d900ce.md) | 117 | `result-track:e8bbdf2df87cea8278d900ce75206f6635297bc202b9633b7516bd9b6b9f8134` |
| 6 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone--dc6c87738f89d633a7801089.md) | 156 | `result-track:dc6c87738f89d633a7801089e5c0a3f2903ca9d99c21c81953fc88f84b9e2811` |
| 7 | `lemma` | [tendsto_of_lintegral_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantab72148adfdb875a45600c880bb03d5ed7c5e036f4e38d87cf9bd8b4ecf4bc3c.lean/declarations/tendsto-of-lintegral-tendsto-of-antitone--850657707f6f7136fbfb28c4.md) | 198 | `result-track:850657707f6f7136fbfb28c43572d80560d473be19f144bafa02b8b21bc52933` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
