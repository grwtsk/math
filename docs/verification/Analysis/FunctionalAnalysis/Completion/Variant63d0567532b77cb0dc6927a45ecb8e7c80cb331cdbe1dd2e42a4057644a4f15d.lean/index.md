# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Completion.Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b731be13084df4cc77132000ab72e56fab5f44c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b731be13084df4cc77132000ab72e56fab5f44c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Quotient` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/kernelspace--68e301f5d7939e6d84d46bab.md) | 30 | `declaration-track:68e301f5d7939e6d84d46bab9c6a96e1596b5dadda95a4aef3ad8ead56435d7d` |
| 2 | `def` | [completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/completeprekernel--0fc702e5f4805a491620abc4.md) | 35 | `declaration-track:0fc702e5f4805a491620abc40ab3e0256e92c2268ccb392237d2e66924d336eb` |
| 3 | `def` | [kernelSpace_hilbertStructure](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/kernelspace-hilbertstructure--a28aadd896ef86cc5fcc866d.md) | 40 | `declaration-track:a28aadd896ef86cc5fcc866decae5cbd358d4f6a44bd1890486c6dde04a253ed` |
| 4 | `theorem` | [kernelSpace_isHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/kernelspace-ishilbert--4197c324d4576e55d814b3c3.md) | 45 | `result-track:4197c324d4576e55d814b3c3529a6744eb50573ed2f2a550ee6a2066e80ae282` |
| 5 | `theorem` | [inner_completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/inner-completeprekernel--70c4e89f3042d7a82e32ebba.md) | 51 | `result-track:70c4e89f3042d7a82e32ebba794ee56bcc9811ea3b262f4680e73c35fc265b0b` |
| 6 | `theorem` | [completePreKernel_denseRange](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variant63d0567532b77cb0dc6927a45ecb8e7c80cb331cdbe1dd2e42a4057644a4f15d.lean/declarations/completeprekernel-denserange--9b2505a70ea0ef78c2b392d8.md) | 59 | `result-track:9b2505a70ea0ef78c2b392d8738777fe2880d93b5d54c3b6c276e1671aa77d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
