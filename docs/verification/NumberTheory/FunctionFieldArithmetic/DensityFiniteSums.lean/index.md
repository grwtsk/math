# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityFiniteSums

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e087ca9fe6e4fa128cab3f64f976a6a15cef25b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e087ca9fe6e4fa128cab3f64f976a6a15cef25b`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebiusReal_abs_le_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/moebiusreal-abs-le-one--c66d549d3b26f6c04a5004a2.md) | 10 | `result-track:c66d549d3b26f6c04a5004a2b2a6529107fff85877147e79d0175c91eb3003ca` |
| 2 | `theorem` | [density_closed_inventory_one_of_nonneg](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/density-closed-inventory-one-of-nonneg--963d6380555e1ab5087617f0.md) | 15 | `result-track:963d6380555e1ab5087617f0ee3233ea3ad655012c6c3435bad068cda0c30dcc` |
| 3 | `theorem` | [density_moebius_divisor_sum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/density-moebius-divisor-sum--a7a68765427ac4cf5d24de4d.md) | 23 | `result-track:a7a68765427ac4cf5d24de4d2de9275516fd4681fb196aab2ed8b6ca8376772f` |
| 4 | `theorem` | [density_coprime_indicator_moebius_sum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/density-coprime-indicator-moebius-sum--c7fcdc131295480f34b4f918.md) | 31 | `result-track:c7fcdc131295480f34b4f918bf977faa152a73908c8839722298d3536c468635` |
| 5 | `theorem` | [density_closed_inventory_mul_iff](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/density-closed-inventory-mul-iff--bc64a3527fd9c217f7f2c722.md) | 53 | `result-track:bc64a3527fd9c217f7f2c722c9b64497c427202670e280d6a80e407316812065` |
| 6 | `theorem` | [density_closed_convolution_regroup](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityFiniteSums.lean/declarations/density-closed-convolution-regroup--4f437e2c9d92be37dffd6c8a.md) | 74 | `result-track:4f437e2c9d92be37dffd6c8a3cc2e364a053c782df03e79a145bb37eed0ec7d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
