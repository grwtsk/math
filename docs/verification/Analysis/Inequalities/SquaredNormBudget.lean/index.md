# Verification target: GRWTSK.Analysis.Inequalities.SquaredNormBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc72afc35fac0695c73ff5b6f7e4c16969987f42",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/SquaredNormBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc72afc35fac0695c73ff5b6f7e4c16969987f42`.

Source path: `GRWTSK/Analysis/Inequalities/SquaredNormBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/SquaredNormBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [constant_slack](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/constant-slack--82f217e5783f3b89eb2c20c2.md) | 11 | `result-track:82f217e5783f3b89eb2c20c22840d1dbd7689ed225f841972fd490b8ef4c7f3b` |
| 2 | `theorem` | [forward_energy](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/forward-energy--40289641bfca946e3835ea25.md) | 14 | `result-track:40289641bfca946e3835ea25547d6e24270f4bb9cf98f23a4f57ae07619c4d3d` |
| 3 | `theorem` | [reverse_energy](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/reverse-energy--46f4803c0be20ae68dfd4732.md) | 21 | `result-track:46f4803c0be20ae68dfd473268c7b456e73b9c056d9321bffdaf6bc51de46304` |
| 4 | `theorem` | [mixed_energy_identity](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/mixed-energy-identity--5959b8b1b38f1ab717b4d9fe.md) | 27 | `result-track:5959b8b1b38f1ab717b4d9fe56ac49c294b73b3ed6fb023fcc3151348b472c42` |
| 5 | `theorem` | [canonical_upper](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/canonical-upper--a0e0d04103cac434794dd11d.md) | 31 | `result-track:a0e0d04103cac434794dd11de69d4c7db1b3ee8fc8f7dd5895eeefbf14594c57` |
| 6 | `theorem` | [canonical_reverse](../../../../mathematics/Analysis/Inequalities/SquaredNormBudget.lean/declarations/canonical-reverse--4cfb465a9e2cf9626d4d1b9a.md) | 38 | `result-track:4cfb465a9e2cf9626d4d1b9af4d1798b114ef8272fe8a1f215d339e240f061f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
