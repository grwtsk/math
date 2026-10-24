# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalResponseGram

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8485e1ebc666cd74690126a7658be174f6f5c8f2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalResponseGram.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8485e1ebc666cd74690126a7658be174f6f5c8f2`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalResponseGram.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalResponseGram.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedSignal](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/signedsignal--7a4a841d8a3a0e5442592975.md) | 34 | `declaration-track:7a4a841d8a3a0e54425929759efdaf13370393ede2d78f5a1d0e69c051f2f441` |
| 2 | `def` | [quadraticForm](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/quadraticform--8e1687098447e8414992f8c0.md) | 38 | `declaration-track:8e1687098447e8414992f8c0210dfd5eb581c7b732b0d0f2a7de8177ae2f49e0` |
| 3 | `theorem` | [weighted_response_product_integrable](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/weighted-response-product-integrable--03e5c96ff782469687182368.md) | 42 | `result-track:03e5c96ff782469687182368b61c5eb1733826d79ca9408cdd1cc3372f1c02d4` |
| 4 | `theorem` | [weighted_response_row_integrable](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/weighted-response-row-integrable--68bd5aab9750f9b1201ecf09.md) | 47 | `result-track:68bd5aab9750f9b1201ecf0943421194f9b3c33cae6c0c40bda2c814cf76ef23` |
| 5 | `theorem` | [signedSignal_square](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/signedsignal-square--71f5d1b3e26732c5681c7f5d.md) | 54 | `result-track:71f5d1b3e26732c5681c7f5d6eae9a2c7f13707e9c6f37276343c622bf35a8c5` |
| 6 | `theorem` | [signedSignal_square_integrable](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/signedsignal-square-integrable--05451f765131ff29de137ffc.md) | 68 | `result-track:05451f765131ff29de137ffc115912d5dc50382d6e3f45c10be4e7aafb791fc1` |
| 7 | `theorem` | [signedSignal_integral_square_eq_quadraticForm](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/signedsignal-integral-square-eq-quadraticform--486946a5a7f87976aeb0ab4a.md) | 80 | `result-track:486946a5a7f87976aeb0ab4aee1f81f04f995d6e2ae9f624d33d8282772eb8cb` |
| 8 | `theorem` | [gram_symmetric](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/gram-symmetric--4fe4927fc89c9d43a839df74.md) | 104 | `result-track:4fe4927fc89c9d43a839df74abc090c9fd095f715f7f202bb0228599b853c389` |
| 9 | `theorem` | [gram_diagonal_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/gram-diagonal-nonnegative--ddb2ad7638c7ab9d61f57540.md) | 110 | `result-track:ddb2ad7638c7ab9d61f5754048c3ed19f54db94cc4421cd031b3ff4c70b7966d` |
| 10 | `theorem` | [quadraticForm_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/quadraticform-nonnegative--fd74c19a3eecb153ec81b241.md) | 118 | `result-track:fd74c19a3eecb153ec81b241b890a81cc9a3bc03bc4873488ee517f7a9a6736e` |
| 11 | `theorem` | [actual_energy_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/actual-energy-nonnegative--90219066b7a6d355ec664894.md) | 126 | `result-track:90219066b7a6d355ec664894ae2969cc9358e3ad5a6321ef1b1b84589073c5e3` |
| 12 | `theorem` | [actual_diagonal_nonnegative](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/actual-diagonal-nonnegative--d6b47c009d7b2bd2023eab63.md) | 131 | `result-track:d6b47c009d7b2bd2023eab636bc0e4c1996fd89bcff34ac2b42300837a951b51` |
| 13 | `theorem` | [actual_cross_lower_bound](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/declarations/actual-cross-lower-bound--ae2afafc055b3475a382629e.md) | 139 | `result-track:ae2afafc055b3475a382629e5e398866f462ce51d4b6e6f1da31478057c4fe7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
