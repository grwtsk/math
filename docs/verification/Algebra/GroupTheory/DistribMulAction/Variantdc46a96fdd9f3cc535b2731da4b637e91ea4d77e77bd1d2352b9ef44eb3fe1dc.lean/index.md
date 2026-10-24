# Verification target: GRWTSK.Algebra.GroupTheory.DistribMulAction.Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c417e7e7a4e1c550458a3c880dd2b2588ac372e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c417e7e7a4e1c550458a3c880dd2b2588ac372e`.

Source path: `GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/declarations/instance--3fce664779043fdd9277b93d.md) | 29 | `declaration-track:3fce664779043fdd9277b93dd5f5c36cb69441baa7b20e79aa6695487fdc6535` |
| 2 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/declarations/distribmulaction--6079085fabd121768e16e056.md) | 34 | `declaration-track:6079085fabd121768e16e056023a176452624c30cc63b52d08e3656ddd695f48` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/declarations/instance--78a1a1bdeff3737cba2cfe76.md) | 38 | `declaration-track:78a1a1bdeff3737cba2cfe767a1fbfac3e763c52902396b7b7c908a657aaaf8a` |
| 4 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/DistribMulAction/Variantdc46a96fdd9f3cc535b2731da4b637e91ea4d77e77bd1d2352b9ef44eb3fe1dc.lean/declarations/muldistribmulaction--e6b0b1345eef235ba237c186.md) | 43 | `declaration-track:e6b0b1345eef235ba237c186d078da55bbff4f7f13e95a1e58217e49144ff8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
