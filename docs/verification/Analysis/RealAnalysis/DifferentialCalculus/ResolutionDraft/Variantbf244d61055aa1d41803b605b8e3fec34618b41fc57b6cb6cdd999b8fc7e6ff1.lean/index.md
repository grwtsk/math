# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ResolutionDraft.Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "011520280aa89bbd8bd8c6766268d8bbe5e5f0ac",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `011520280aa89bbd8bd8c6766268d8bbe5e5f0ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationEnergy` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [phaseRatio_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/phaseratio-le-one--0556581b2df4a38fc7b0ca0e.md) | 17 | `result-track:0556581b2df4a38fc7b0ca0ed6a8b5c71e61bc358e70b35ecffe96c43c21fff5` |
| 2 | `theorem` | [pairedDeriv_abs_le_critical](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/pairedderiv-abs-le-critical--73fa0064cb45409ab790179f.md) | 22 | `result-track:73fa0064cb45409ab790179fc3075dd03278c76a6863d8d9728132b107cdef9f` |
| 3 | `theorem` | [pairedDeriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/pairedderiv-abs-le--c64b5850e03e599ee54e6099.md) | 28 | `result-track:c64b5850e03e599ee54e60993cafbe8e4c6ed19886d2f911d45a419dfce6fc80` |
| 4 | `theorem` | [paired_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/paired-lipschitz--bec0fc4b94fe0a5537c7b9bd.md) | 45 | `result-track:bec0fc4b94fe0a5537c7b9bdb17bb4493b53d4f050fc9e35d70209665fb6d7eb` |
| 5 | `def` | [decodedReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/decodedreadout--f82404087733563d333fe29f.md) | 56 | `declaration-track:f82404087733563d333fe29f4dca2c291989f7d90c11c7ac7f6e120e1017599d` |
| 6 | `theorem` | [actualReadout_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/actualreadout-eq--899d4b1807233e4c23ea6c84.md) | 61 | `result-track:899d4b1807233e4c23ea6c840d60a80eedbd39cfa7213deb6f41fed41b9dcf6c` |
| 7 | `theorem` | [primeReadout_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/primereadout-error--29e05071dd18147541826bea.md) | 67 | `result-track:29e05071dd18147541826bea35cd7d95e5c804a5c3d41d7ad6a0cb848060490e` |
| 8 | `theorem` | [squareReadout_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/squarereadout-error--0ec57babf1a2d3a93c50b347.md) | 86 | `result-track:0ec57babf1a2d3a93c50b34700acc61c1a378c299b18e18355bf7fc3a2307cad` |
| 9 | `theorem` | [decodedReadout_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/decodedreadout-error--216e7568440d8b7e5a18a7f2.md) | 106 | `result-track:216e7568440d8b7e5a18a7f2ffd087e70d4f24ad8d08f7659e391c5cde2f2eed` |
| 10 | `theorem` | [decodedReadout_uniform_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/decodedreadout-uniform-error--2421656a5ee5554a9ac26257.md) | 154 | `result-track:2421656a5ee5554a9ac262576283e431a0685cb686e2e761bc7bf81c6da5b8f2` |
| 11 | `theorem` | [mesh_decoder_error](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/mesh-decoder-error--08e160f90f6a0e21ca4812e7.md) | 165 | `result-track:08e160f90f6a0e21ca4812e74f29cc11239803490358e1372d6f033618ffaf54` |
| 12 | `theorem` | [lower_transfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ResolutionDraft/Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1.lean/declarations/lower-transfer--61ccf240bf1efab542a4ba74.md) | 185 | `result-track:61ccf240bf1efab542a4ba74dcd6b794ef5572a82f7259aeb036f1241190775e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
