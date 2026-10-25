# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwoPointing.Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dadcfc89123b4cb44249f63623b333f52df2c4a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dadcfc89123b4cb44249f63623b333f52df2c4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Nontrivial.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nonempty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Simps.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoPointing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/twopointing--90766479c5964a57cf9a4a96.md) | 40 | `declaration-track:90766479c5964a57cf9a4a9639fc0ead333e057bd33a71e37b23c64779010634` |
| 2 | `theorem` | [snd_ne_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/snd-ne-fst--1caf5f555a683cad56eb78d4.md) | 51 | `result-track:1caf5f555a683cad56eb78d482fb2128d1edeacfe455fe7a42c9836059ef2d28` |
| 3 | `def` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/swap--8ed372528c7faeebb3c665f0.md) | 56 | `declaration-track:8ed372528c7faeebb3c665f0c74410fdc7f54d8c44724fdf38f937020c909024` |
| 4 | `theorem` | [swap_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/swap-fst--a39d078ad03721460be95e0a.md) | 59 | `result-track:a39d078ad03721460be95e0a8e1d349edce46dec2b9341614d23fa993e3802ea` |
| 5 | `theorem` | [swap_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/swap-snd--06110896ffb3653b8c39f5c9.md) | 61 | `result-track:06110896ffb3653b8c39f5c9b8a72390a62f87482c9fabb97ce903e45b45876d` |
| 6 | `theorem` | [swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/swap-swap--81c121cc0e3c232fa59a6103.md) | 64 | `result-track:81c121cc0e3c232fa59a61037dbe61ad1db2a78f4a5608606ac54466fdea6191` |
| 7 | `theorem` | [to_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/to-nontrivial--f938856beddbf88b62fe06c8.md) | 67 | `result-track:f938856beddbf88b62fe06c88ecf543b4ba215dde1a6377b7fdb8d9d90f14d42` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/instance--665f099cd495d4b836353da3.md) | 70 | `declaration-track:665f099cd495d4b836353da38651aaa6fc1ecf8f3b6a018e310e05af57fec13b` |
| 9 | `theorem` | [nonempty_two_pointing_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/nonempty-two-pointing-iff--7c4853cf83835a6861fb6fa0.md) | 75 | `result-track:7c4853cf83835a6861fb6fa04f3d25c59eb4777db14caa705c8263dc022904ab` |
| 10 | `def` | [pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/pi--fa3fbe9b5d5dfa304f6d3898.md) | 83 | `declaration-track:fa3fbe9b5d5dfa304f6d3898bd96e1b1052340918a78b7fa7e27e75224846d0d` |
| 11 | `theorem` | [pi_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/pi-fst--b1f4a59e3f6bed09978a9c62.md) | 89 | `result-track:b1f4a59e3f6bed09978a9c62411f20c9ac7f36af7c34bb89c3bbf53842e55b1e` |
| 12 | `theorem` | [pi_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/pi-snd--8a036de61746e2ae4d591c34.md) | 93 | `result-track:8a036de61746e2ae4d591c34e2079a87f41da0208ea2aa6f366b9ef1f0e06346` |
| 13 | `def` | [prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prod--ae5accd2e464c59b4f690d37.md) | 99 | `declaration-track:ae5accd2e464c59b4f690d37e63c14b18a89cc456ae1a7fc43731f289b3de5c8` |
| 14 | `theorem` | [prod_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prod-fst--1bfb8fcf80440f6ee93464ee.md) | 105 | `result-track:1bfb8fcf80440f6ee93464ee852f09e4106b057df78911744062983ef4a50213` |
| 15 | `theorem` | [prod_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prod-snd--6dba0471f3ffa4958f18d044.md) | 109 | `result-track:6dba0471f3ffa4958f18d044deb52e97a51f4d524bd72807fb3c25ce52776369` |
| 16 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/sum--62e45e479523c35b1e4c9316.md) | 114 | `declaration-track:62e45e479523c35b1e4c93169957d33e9ddb8fb7662d8288d430ca83587a7fc0` |
| 17 | `theorem` | [sum_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/sum-fst--d6110d232819f4cd7fa1cb5a.md) | 118 | `result-track:d6110d232819f4cd7fa1cb5a587552b799289ceb130698e17c70ce5866249a3a` |
| 18 | `theorem` | [sum_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/sum-snd--7337ae95f3cc03b92b173fbd.md) | 122 | `result-track:7337ae95f3cc03b92b173fbd08a05b2d8d6d6206f9cbfe8a79b3463f04254c51` |
| 19 | `def` | [bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/bool--37a01aea4166c87d7f4c6d07.md) | 126 | `declaration-track:37a01aea4166c87d7f4c6d0778906ba8e833a3c048b2f4b888d1460d56d2e557` |
| 20 | `theorem` | [bool_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/bool-fst--54b839ded82fa4e5a1f28951.md) | 130 | `result-track:54b839ded82fa4e5a1f28951bbe8163b154532c93e1a97225f400c08d172af36` |
| 21 | `theorem` | [bool_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/bool-snd--c313897d959b02b12b037437.md) | 133 | `result-track:c313897d959b02b12b037437a47fcd615039fa31833f67b9cfcd29c2b98e02f0` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/instance--fad3f41dd4342e9dd80b79e5.md) | 135 | `declaration-track:fad3f41dd4342e9dd80b79e52ac62995d6d2436888d359af4171180708cf0342` |
| 23 | `def` | [prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prop--cd45e8430fccc23c553cfae6.md) | 139 | `declaration-track:cd45e8430fccc23c553cfae6c9b9f23cc097fd8e86c49a4ac750130b6b1c90ff` |
| 24 | `theorem` | [prop_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prop-fst--a8cb752b10f2b5ad8951a1b0.md) | 143 | `result-track:a8cb752b10f2b5ad8951a1b01fa3e2a92ad5bdcf5343dc748b5ae41ee20998f6` |
| 25 | `theorem` | [prop_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/TwoPointing/Variantdb9ffe0bcbe642911f402e1285ca842430822ae105c243a75e43c70d8c23f271.lean/declarations/prop-snd--e97ec821a5870646fe2609b1.md) | 147 | `result-track:e97ec821a5870646fe2609b1929bcce3794fe5bed7702581601d0a33dd9aa4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
