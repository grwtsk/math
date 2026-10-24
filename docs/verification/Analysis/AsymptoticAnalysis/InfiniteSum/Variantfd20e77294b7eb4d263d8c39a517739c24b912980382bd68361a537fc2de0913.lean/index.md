# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.InfiniteSum.Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc0e48481bd364de15f2b7c2713a97f24936a5f0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc0e48481bd364de15f2b7c2713a97f24936a5f0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [summable_norm_of_tsum_eLpNorm_ne_top](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/declarations/summable-norm-of-tsum-elpnorm-ne-top--0e598c4a658b87ac0d2d0064.md) | 38 | `result-track:0e598c4a658b87ac0d2d0064643125e98e6a5b37dfc2e8caba179c36cbba0ec2` |
| 2 | `theorem` | [hasSum_coeFn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/declarations/hassum-coefn-tsum-nat--c487e5df0a91e04a132a8b01.md) | 118 | `result-track:c487e5df0a91e04a132a8b016921a73c5618e5f1646c492cc345eec93dd91f3f` |
| 3 | `theorem` | [hasSum_coeFn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/declarations/hassum-coefn-tsum--17094f26a19ad3f82afa0ce6.md) | 137 | `result-track:17094f26a19ad3f82afa0ce6bfa5c49610625a8edce7731cf29a250c4febcad7` |
| 4 | `theorem` | [coeFn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/InfiniteSum/Variantfd20e77294b7eb4d263d8c39a517739c24b912980382bd68361a537fc2de0913.lean/declarations/coefn-tsum--eddb4e0ef6fbab95da6e4838.md) | 154 | `result-track:eddb4e0ef6fbab95da6e4838f1ec66842c2a5ca9c9f33514f97316f0654e6fa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
