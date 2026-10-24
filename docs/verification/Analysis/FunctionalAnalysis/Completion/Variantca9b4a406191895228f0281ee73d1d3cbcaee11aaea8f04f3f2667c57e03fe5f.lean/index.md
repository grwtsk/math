# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Completion.Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8760751e52fd4fc587c562985d553ece510a2af",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8760751e52fd4fc587c562985d553ece510a2af`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Quotient` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/kernelspace--9d87731dc648fff21d0345be.md) | 22 | `declaration-track:9d87731dc648fff21d0345be1be8da34f125076f11fab34482640649f2678a05` |
| 2 | `def` | [completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/completeprekernel--994dab22984121382ff619de.md) | 27 | `declaration-track:994dab22984121382ff619deca06a1b6107b86c5b2c3906062db7b2009f6ca5c` |
| 3 | `def` | [kernelSpace_hilbertStructure](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/kernelspace-hilbertstructure--3a655ed83cb8f51f7dfe100a.md) | 32 | `declaration-track:3a655ed83cb8f51f7dfe100aef41427ddcdf7d784b3bb950f6cc06d50105954b` |
| 4 | `theorem` | [kernelSpace_isHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/kernelspace-ishilbert--b1345b8e3ec6940992d4e53f.md) | 37 | `result-track:b1345b8e3ec6940992d4e53fde377ab119c9a0bb73834ab6025fe2689ff63885` |
| 5 | `theorem` | [inner_completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/inner-completeprekernel--95d13cdd160a00a1f4cb484d.md) | 43 | `result-track:95d13cdd160a00a1f4cb484dfc272158868daf4d0efb552b5668b69969e014a1` |
| 6 | `theorem` | [completePreKernel_denseRange](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantca9b4a406191895228f0281ee73d1d3cbcaee11aaea8f04f3f2667c57e03fe5f.lean/declarations/completeprekernel-denserange--d88cb9dcbf95a9fd381a45df.md) | 51 | `result-track:d88cb9dcbf95a9fd381a45df7fe14aa7f7c29848012434f3edfd5250da9b97cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
