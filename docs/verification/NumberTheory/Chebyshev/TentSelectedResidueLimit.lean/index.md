# Verification target: GRWTSK.NumberTheory.Chebyshev.TentSelectedResidueLimit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135a5c01991efd725d2b4a10102db71dac32fa04",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135a5c01991efd725d2b4a10102db71dac32fa04`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay`](../../../../mathematics/NumberTheory/Chebyshev/TentHorizontalDecay.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours`](../../../../mathematics/NumberTheory/Chebyshev/SeparatedTentContours.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [selected_heightHead_tendsto_atTop](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/selected-heighthead-tendsto-attop--07bd47a50383b821afe50605.md) | 35 | `result-track:07bd47a50383b821afe506052500b6cd1665c3141e53817d9705e56feaec2cea` |
| 2 | `theorem` | [summable_selected_heads_tendsto](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/summable-selected-heads-tendsto--88a906c524bf099bce68129e.md) | 48 | `result-track:88a906c524bf099bce68129eabaca141727de4ddd39f2111558925de510e5271` |
| 3 | `theorem` | [norm_right_residue_defect_le](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/norm-right-residue-defect-le--93db009fd23ca40d3c6b72e2.md) | 55 | `result-track:93db009fd23ca40d3c6b72e258c1ff0c98f9e8ea5374f2ac6be7209f0e4c1cf6` |
| 4 | `theorem` | [finite_residues_tendsto_squareSource](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/finite-residues-tendsto-squaresource--ff29d7b164f121aa18e7fbb0.md) | 66 | `result-track:ff29d7b164f121aa18e7fbb039168d2e201a3b8589d0d95c7f440388316931fa` |
| 5 | `theorem` | [selected_zero_sums_tendsto](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/selected-zero-sums-tendsto--ebbff87600e302fd8d00bdcd.md) | 96 | `result-track:ebbff87600e302fd8d00bdcd2459190015db99626a0edeea19917bf07a9790fb` |
| 6 | `theorem` | [square_source_eq_of_selected_zero_limit](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/square-source-eq-of-selected-zero-limit--aa0e0788dbdc5bd38560dc97.md) | 110 | `result-track:aa0e0788dbdc5bd38560dc975adeb6eb74b695ea1c5039bf2a722296e6e596c3` |
| 7 | `theorem` | [square_source_eq_tsum_of_summable](../../../../mathematics/NumberTheory/Chebyshev/TentSelectedResidueLimit.lean/declarations/square-source-eq-tsum-of-summable--64e3dc2580bbb7fdab28e443.md) | 121 | `result-track:64e3dc2580bbb7fdab28e4434029215905d6de224096440675b1a53efce461dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
