# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae9c1567289b5f149eaaf978ba667ecff9488569`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/macro-rules--9c0020db3d2ac0a6f5afaeac.md) | 29 | `declaration-track:9c0020db3d2ac0a6f5afaeac08868f71981dd134a7c3892ecc221f6462ef1cb2` |
| 2 | `def` | [jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/jacobitheta--9476d2edff3ee2913c8efed7.md) | 32 | `declaration-track:9476d2edff3ee2913c8efed7095a3a7d6ffe00b3b8d5ee560b72b920c319f897` |
| 3 | `theorem` | [norm_exp_mul_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/norm-exp-mul-sq-le--b5327d69c9776c22c3a265e6.md) | 36 | `result-track:b5327d69c9776c22c3a265e60ecbf0122747722be54f3f269fd8c82c8f1aa492` |
| 4 | `theorem` | [exists_summable_bound_exp_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/exists-summable-bound-exp-mul-sq--6d288a678cb131b9fa98a3aa.md) | 53 | `result-track:6d288a678cb131b9fa98a3aae95f58587dfed309d77380f68a06068d874c1ae8` |
| 5 | `theorem` | [summable_exp_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/summable-exp-mul-sq--f325127ada5e3dd24264b82c.md) | 67 | `result-track:f325127ada5e3dd24264b82cf5753330ae4c146c9736cc7e7d889ccb7b72f1e8` |
| 6 | `theorem` | [jacobiTheta_two_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/jacobitheta-two-add--9300ae9b4da58bf83e51182e.md) | 73 | `result-track:9300ae9b4da58bf83e51182e36018c0acee57d2e2f6c75bcd264209b94944756` |
| 7 | `theorem` | [jacobiTheta_T_sq_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/jacobitheta-t-sq-smul--dd44ce032603e2e4bf75f3df.md) | 80 | `result-track:dd44ce032603e2e4bf75f3df58cdbd03bf012c565da32ee6586104aecee29400` |
| 8 | `theorem` | [jacobiTheta_S_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/jacobitheta-s-smul--b6967b0f8db80eb1acee26b6.md) | 88 | `result-track:b6967b0f8db80eb1acee26b653038a7e3c553ea9c08fcf599200bd9392076e30` |
| 9 | `theorem` | [hasSum_nat_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/hassum-nat-jacobitheta--1df5d04369d34bf79528bdc4.md) | 116 | `result-track:1df5d04369d34bf79528bdc4bffd2aebff9cdb8286e7741d01620e75f7789664` |
| 10 | `theorem` | [jacobiTheta_eq_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/jacobitheta-eq-tsum-nat--697d20e2c42da0135838bb44.md) | 128 | `result-track:697d20e2c42da0135838bb44bb42fe8de121733d9f4833f82e17de145d4e8f52` |
| 11 | `theorem` | [norm_jacobiTheta_sub_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/norm-jacobitheta-sub-one-le--7e65c1f6bdca916ccf8e8590.md) | 135 | `result-track:7e65c1f6bdca916ccf8e859013f0e86d0ead82e7b24e9f07db8040f3535bd2cb` |
| 12 | `theorem` | [isBigO_at_im_infty_jacobiTheta_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/isbigo-at-im-infty-jacobitheta-sub-one--604218814c32cab7fd5e783f.md) | 161 | `result-track:604218814c32cab7fd5e783f585ba90c1dd92b46926d8092342c5511ca4fcb51` |
| 13 | `theorem` | [differentiableAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/differentiableat-jacobitheta--195b0a1a9c57f97617f9d4f8.md) | 176 | `result-track:195b0a1a9c57f97617f9d4f80940aff3866ae1297b7b67fc980018296c88ff5d` |
| 14 | `theorem` | [continuousAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/declarations/continuousat-jacobitheta--b99f45bf542a17597d7b4b22.md) | 192 | `result-track:b99f45bf542a17597d7b4b2272f88402479285dceeadb4615291f3b3bbde62c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
