# Verification target: GRWTSK.Analysis.MatrixNormPricing.Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1434b50f0728be24f04a2f0165490cfc03bd72ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/index.md) · [Full source](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1434b50f0728be24f04a2f0165490cfc03bd72ed`.

Source path: `GRWTSK/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedGramPricing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticForm](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/quadraticform--8af0b34ee3e40da072f321f3.md) | 28 | `declaration-track:8af0b34ee3e40da072f321f3efc63725474e6b66cf0b1423b9d6253df1a77f1e` |
| 2 | `def` | [operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/operatornorm--55b24506fe4d9d91f92295d1.md) | 36 | `declaration-track:55b24506fe4d9d91f92295d1b72a4865e94bc10ed2fe477fe21734ee3161eacf` |
| 3 | `theorem` | [quadraticForm_le_operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/quadraticform-le-operatornorm--aabc005f81aa0024efe168fa.md) | 39 | `result-track:aabc005f81aa0024efe168fa912188fc27af50f43b3f982d211b45b1db013f29` |
| 4 | `theorem` | [diagonal_entry_le_operatorNorm](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/diagonal-entry-le-operatornorm--bd6f05d469cfd3385a32a8eb.md) | 55 | `result-track:bd6f05d469cfd3385a32a8eb86e8c60709cc184fb64b794831f517b89aea4d9e` |
| 5 | `def` | [anchoredMatrix](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/anchoredmatrix--97c252323b2ea9172ff7306b.md) | 66 | `declaration-track:97c252323b2ea9172ff7306b22b12ebfe9f80a6a4336d35226c26d506512bc0e` |
| 6 | `theorem` | [anchored_matrix_anchor_bound](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/anchored-matrix-anchor-bound--b7bf606f8b0c2d0bafced691.md) | 74 | `result-track:b7bf606f8b0c2d0bafced691d4ea56c55caac9d32dba003d942db1db3bb24d57` |
| 7 | `theorem` | [anchored_matrix_shell_bound](../../../../mathematics/Analysis/MatrixNormPricing/Variant243543f84aff4d88bc8aba1121d62726c019080b492f273ae2e7fe5e6d40dfbd.lean/declarations/anchored-matrix-shell-bound--17567376ec3397dc4ed3d2cd.md) | 79 | `result-track:17567376ec3397dc4ed3d2cd0695856b1b85a81e6d37d27c6385ad9c534c810e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
