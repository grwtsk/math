# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "149b52b18fc7472e8b7811cb39d83f65c7d371c9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `149b52b18fc7472e8b7811cb39d83f65c7d371c9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/instance--d6e04899d9ad70caffd0a80e.md) | 38 | `declaration-track:d6e04899d9ad70caffd0a80e71ed04f022b6a07be13a719c86378adfff53649a` |
| 2 | `theorem` | [_root_.DomMulAct.smul_linearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/root-dommulact-smul-linearmap-apply--13d6397acd1a0793b27c743f.md) | 44 | `result-track:13d6397acd1a0793b27c743f59eff5d83f36a954bc9792fda48743924a908aab` |
| 3 | `theorem` | [_root_.DomMulAct.mk_smul_linearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/root-dommulact-mk-smul-linearmap-apply--cd766127c3246d8d592f2c34.md) | 49 | `result-track:cd766127c3246d8d592f2c346924bf717e686a23b100fa60e8b2e406d4b0a51b` |
| 4 | `theorem` | [_root_.DomMulAct.coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/root-dommulact-coe-smul-linearmap--15dbc49ea596135fc19acc88.md) | 53 | `result-track:15dbc49ea596135fc19acc884a08a660efb9e20fa392aac49683002bd5f51ffa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/instance--3f88d0182a02c4ce3232310e.md) | 57 | `declaration-track:3f88d0182a02c4ce3232310e315e576b31c63724425c666d168d1f21e21679e5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/instance--50c53219ffdfd79f0dae3158.md) | 72 | `declaration-track:50c53219ffdfd79f0dae3158979394fb480dc65b89250806a7525ec3acf79006` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/instance--b0d20d5c4d8fa64643582985.md) | 85 | `declaration-track:b0d20d5c4d8fa64643582985045e20e87ec2471b120b9298a833e4ac67383627` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant3f193b0cc7570d3588b3b3505e6954e7bbe15e5a45ec3d5716bee7b472a73fd2.lean/declarations/instance--18fd354f128ae683a8e43762.md) | 88 | `declaration-track:18fd354f128ae683a8e43762f77edb03c5c471ada36a5497d368d9ee462a1624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
