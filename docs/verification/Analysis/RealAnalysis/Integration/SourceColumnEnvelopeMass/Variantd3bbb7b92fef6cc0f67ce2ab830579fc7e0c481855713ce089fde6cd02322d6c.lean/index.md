# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceColumnEnvelopeMass.Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a62a9d4dd91dfc1addafbcb79aec9cb167f26c46",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a62a9d4dd91dfc1addafbcb79aec9cb167f26c46`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtQuotientEndpoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_sqrt_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/declarations/inverse-sqrt-antiderivative--2cc9f8041c41f8db353abc80.md) | 29 | `result-track:2cc9f8041c41f8db353abc803731ad18acda0d50150ea7e9c690bbda69b36410` |
| 2 | `theorem` | [inverse_sqrt_cell_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/declarations/inverse-sqrt-cell-integrable--f4515b6426de3b571169a488.md) | 40 | `result-track:f4515b6426de3b571169a488339de6de2056cad552120066cc2c9fb454cc9112` |
| 3 | `theorem` | [inverse_sqrt_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/declarations/inverse-sqrt-integral--faecc4200451d23eb29c9a0f.md) | 49 | `result-track:faecc4200451d23eb29c9a0f971f956a901d9ce3dadd0c417897c0ff2e2436c9` |
| 4 | `def` | [columnEnvelopeMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/declarations/columnenvelopemass--b668e0ea98d271cedc7c51fb.md) | 60 | `declaration-track:b668e0ea98d271cedc7c51fb886a1fcddd513a86601c5fe8c3e72fd8104457fc` |
| 5 | `theorem` | [columnEnvelopeMass_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceColumnEnvelopeMass/Variantd3bbb7b92fef6cc0f67ce2ab830579fc7e0c481855713ce089fde6cd02322d6c.lean/declarations/columnenvelopemass-le--ffef08ea8c8c58cb4a063f9b.md) | 67 | `result-track:ffef08ea8c8c58cb4a063f9b8a5fd6f1f4db60e8355841233ed0c82272a563f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
