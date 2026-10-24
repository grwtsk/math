# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65b9087a71ad36f559e17a0b2f33f98f161f32ef",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65b9087a71ad36f559e17a0b2f33f98f161f32ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [listSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean/declarations/listsum--ea40f43f4c6fd4895bd1d3bb.md) | 25 | `result-track:ea40f43f4c6fd4895bd1d3bb7601f78e4e40afdc79ee5ddb1c332c8554a636ef` |
| 2 | `lemma` | [multisetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean/declarations/multisetsum--9f121994b4eeef2e5ea6820c.md) | 31 | `result-track:9f121994b4eeef2e5ea6820ce7c17c52512b89136a97390ed7f1704cdcfc243e` |
| 3 | `lemma` | [finsetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d.lean/declarations/finsetsum--7371d666299e477074290983.md) | 37 | `result-track:7371d666299e477074290983293075a4ebfda79b6133a49ec6d58eff88e02e42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
