# Verification target: GRWTSK.Analysis.NormedSpace.NormTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00c0e880d441620a959f12601c21cd45090f069e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NormedSpace/NormTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00c0e880d441620a959f12601c21cd45090f069e`.

Source path: `GRWTSK/Analysis/NormedSpace/NormTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NormedSpace/NormTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reconstruction_bound](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/reconstruction-bound--166e3e2d316c26445e81f4ed.md) | 14 | `result-track:166e3e2d316c26445e81f4eded629cd418be3a4b3d50acf751a9b4904c444e4c` |
| 2 | `def` | [budget](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/budget--fd60347c6161444078e87dd7.md) | 21 | `declaration-track:fd60347c6161444078e87dd7af9a7dde65f3ee5a54ba3cc5c92b00361d69f805` |
| 3 | `inductive` | [Chain](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/chain--15bfa8aed426fdfea23d0f3b.md) | 26 | `declaration-track:15bfa8aed426fdfea23d0f3be25f54bb0345eed59415c1978b1b8b581f922eb5` |
| 4 | `theorem` | [Chain.bound](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/chain-bound--831ca1a815205c62bfde3fa6.md) | 33 | `result-track:831ca1a815205c62bfde3fa62ea79a30bbed2e54b45bb88bb837976814f9a5fc` |
| 5 | `theorem` | [budget_nonnegative](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/budget-nonnegative--5f26fc0e73eacfd755ccbf63.md) | 45 | `result-track:5f26fc0e73eacfd755ccbf639a214efaa5cec7f474c06c058185229cd0866e13` |
| 6 | `theorem` | [budget_unit_gains](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormTransport.lean/declarations/budget-unit-gains--0488d3c5e1cd5ab06114721d.md) | 57 | `result-track:0488d3c5e1cd5ab06114721d8a0f9e940f69406f2bfd8e315b130f6e45339dc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
