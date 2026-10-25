# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Intuition.Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04ca17c31f1fb8384c9b2253e506a09b11f016a5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04ca17c31f1fb8384c9b2253e506a09b11f016a5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PriorityFeature](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/priorityfeature--5e082f35fc4a7b11a9e390fd.md) | 21 | `declaration-track:5e082f35fc4a7b11a9e390fd6f29d435c3d0a3e31373868b458f60eb4de291d1` |
| 2 | `structure` | [IntuitionPriority](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/intuitionpriority--c47f6068b39b72421c025cd9.md) | 33 | `declaration-track:c47f6068b39b72421c025cd91482178bacaf576aae6ccff8801fd6e0bed23630` |
| 3 | `structure` | [IntuitionKernel](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/intuitionkernel--5eb4e5a1e2296a0bd45e7411.md) | 51 | `declaration-track:5eb4e5a1e2296a0bd45e7411b6f88b3e11cd509baca52dbdd3ca035e5729c29e` |
| 4 | `inductive` | [AttemptOutcome](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/attemptoutcome--810f0660ddb730eb7ed0d2ae.md) | 61 | `declaration-track:810f0660ddb730eb7ed0d2ae342e6f074736e6a6b05b11ed90eb0d130a4e62fe` |
| 5 | `structure` | [IntuitionAttempt](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/intuitionattempt--ead21792419f787891e584c1.md) | 75 | `declaration-track:ead21792419f787891e584c158ba907cd36671ba42df2da20c99821021c7777b` |
| 6 | `theorem` | [intuition_replay](../../../../mathematics/FoundationsLogicAndTypeTheory/Intuition/Variant07f7560bbb5aaf6e40a231e313a1adcb11be4a5813e675916399129125877213.lean/declarations/intuition-replay--48ccc5ab0fd3528d3a19a9f2.md) | 89 | `result-track:48ccc5ab0fd3528d3a19a9f22245746aabc21c94ad44d774f628ec0e7e2c44c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
