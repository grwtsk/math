# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SelfAdjoint.Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8f87d6e61af06fb812b3ad7a0b00944f0d5ce1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8f87d6e61af06fb812b3ad7a0b00944f0d5ce1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.Operator` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hilbert.SymmetricOperator](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean/declarations/hilbert-symmetricoperator--8e6fd8a66e2518dc1c7ccebd.md) | 23 | `declaration-track:8e6fd8a66e2518dc1c7ccebd472d31ab985c9f5ab53eec6aaa309d76c04d7706` |
| 2 | `structure` | [Hilbert.SelfAdjointCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean/declarations/hilbert-selfadjointcertificate--0c510e727dd8fa1169553f83.md) | 30 | `declaration-track:0c510e727dd8fa1169553f83be49254288c22fb80c87205e530d2883a28891df` |
| 3 | `theorem` | [Hilbert.selfAdjoint_implies_symmetric](../../../../../mathematics/Analysis/FunctionalAnalysis/SelfAdjoint/Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579.lean/declarations/hilbert-selfadjoint-implies-symmetric--10e496cfae3fd5f5ad291940.md) | 39 | `result-track:10e496cfae3fd5f5ad291940c7afbe41b203ff33641ef9edf0dbfe1a0f0ef907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
