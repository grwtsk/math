# Verification target: GRWTSK.Algebra.Kernel.Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cd4b5e222808f08fd722adeff7d4a1a7696fd63",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cd4b5e222808f08fd722adeff7d4a1a7696fd63`.

Source path: `GRWTSK/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TwoSidedIdeal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ker](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/declarations/ker--7abb8812f6caeef738b6f81b.md) | 32 | `declaration-track:7abb8812f6caeef738b6f81bb22c4f27efd6db7bf18d6a422cce531698d3f161` |
| 2 | `lemma` | [ker_ringCon](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/declarations/ker-ringcon--4d40e40dca0c5afa2354639d.md) | 40 | `result-track:4d40e40dca0c5afa2354639d9e8bbe9fc2f6cbd802b0280fa9e96e6d55629445` |
| 3 | `lemma` | [mem_ker](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/declarations/mem-ker--65aaea0730df07f3ceb2165f.md) | 42 | `result-track:65aaea0730df07f3ceb2165ff166c8684b8a7019438e5cc06cf1f80220767379` |
| 4 | `lemma` | [ker_eq_bot](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/declarations/ker-eq-bot--4c5c0d18d9d8a5d814eb7e38.md) | 45 | `result-track:4c5c0d18d9d8a5d814eb7e3824fafccddea1fb7a5ff523be568ab99ea2ac11f3` |
| 5 | `lemma` | [ker_ringCon_mk'](../../../../mathematics/Algebra/Kernel/Variant5da406906ba5989194e2c2cdfade9c092bc7a3b9bbd78712d141cddc94e844f5.lean/declarations/ker-ringcon-mk--b0a7c5e478eecb9b8e46dce7.md) | 59 | `result-track:b0a7c5e478eecb9b8e46dce7af33582d39386c9418e3d6f936ddea4ebb982167` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
