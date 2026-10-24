# Verification target: GRWTSK.Analysis.MeasureTheory.MeasureComp.Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "083c31bd7f592f851b7ee125bffb6ea4d8fff130",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `083c31bd7f592f851b7ee125bffb6ea4d8fff130`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.CompNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.MeasureCompProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_assoc](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-assoc--79495b7a27b2a2fe69d6ebad.md) | 26 | `result-track:79495b7a27b2a2fe69d6ebadbddace6a264d661f2c36f046fa38c16b35b687bf` |
| 2 | `lemma` | [comp_eq_comp_const_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-eq-comp-const-apply--2e3b2fa746324587abb5af08.md) | 31 | `result-track:2e3b2fa746324587abb5af0897ec49cd29f5e1cbd9bf0affb06ff077c0311f99` |
| 3 | `lemma` | [comp_eq_sum_of_countable](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-eq-sum-of-countable--965d89ca607f3670986fa5f7.md) | 34 | `result-track:965d89ca607f3670986fa5f7b650f407651ee574f251f4198336bee87e14f5e0` |
| 4 | `lemma` | [snd_compProd](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/snd-compprod--f7d41f325bb107299c3e07ef.md) | 41 | `result-track:f7d41f325bb107299c3e07efa65ec5a143f3da6ae81fb452ac9c2e4b7b681bb0` |
| 5 | `lemma` | [ae_ae_of_ae_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/ae-ae-of-ae-comp--623f4cdb67bedeae7e9c52eb.md) | 48 | `result-track:623f4cdb67bedeae7e9c52eba4e46dd6356c87aee0c73798654e4719c88cc839` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/instance--f29511ab9477628523c9b5db.md) | 53 | `declaration-track:f29511ab9477628523c9b5db3859e35df28a546857de1e904fb003f9ab18b39e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/instance--b41d6a00828970dccb8d0c9a.md) | 56 | `declaration-track:b41d6a00828970dccb8d0c9abc3d366176b92a18a25ddb7d76cf5f134006757b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/instance--958d768c80bd8b50439c205d.md) | 59 | `declaration-track:958d768c80bd8b50439c205df509fb68d6a8f07374e76e8061cb2dbdafb5082d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/instance--ebb659798ab7b5fc4d0b6e56.md) | 62 | `declaration-track:ebb659798ab7b5fc4d0b6e56def8ea225ea33589e43f656d6bca6b0459b4ffa1` |
| 10 | `lemma` | [map_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/map-comp--0620251d434d91f8b4ecdf34.md) | 66 | `result-track:0620251d434d91f8b4ecdf34de53ec5cf8191fb5d74773f4d3062488cd7f0b8b` |
| 11 | `lemma` | [compProd_eq_comp_prod](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/compprod-eq-comp-prod--defe1bef28770549b0611034.md) | 75 | `result-track:defe1bef28770549b06110344321c31ab204bace6421200cb82b9732f7669584` |
| 12 | `lemma` | [compProd_id_eq_copy_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/compprod-id-eq-copy-comp--bb932961f1ba4d2815a3f8af.md) | 80 | `result-track:bb932961f1ba4d2815a3f8af9aa96bfd4e2f3b202f631b959fe912d52edd9905` |
| 13 | `lemma` | [comp_compProd_comm](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-compprod-comm--057ad03485c5e6c49d8d8219.md) | 83 | `result-track:057ad03485c5e6c49d8d8219459ae25ca52e542bee4e4700e6f9c3cf7e9af610` |
| 14 | `lemma` | [prodMkLeft_comp_compProd](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/prodmkleft-comp-compprod--479491cf2124ebcf500be507.md) | 98 | `result-track:479491cf2124ebcf500be50761d14f4712d4e0adfc73511fcc5917213252db7d` |
| 15 | `lemma` | [comp_add](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-add--cd4abd3a1a1bc8a91d3c603f.md) | 108 | `result-track:cd4abd3a1a1bc8a91d3c603f7f489f24deeefe2afb30f5005387e83f8d8705b1` |
| 16 | `lemma` | [add_comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/add-comp--89a73f5ec5676517ef84c793.md) | 111 | `result-track:89a73f5ec5676517ef84c793de5eef744a64d8be4e1b77059e5832a59613789e` |
| 17 | `lemma` | [add_comp'](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/add-comp--b5e0b5f74ec00706989a0cbf.md) | 117 | `result-track:b5e0b5f74ec00706989a0cbf73b829c038c2988ed11391aa970f8ccb4476a667` |
| 18 | `lemma` | [comp_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/comp-smul--fa067e02b9c75980b5339f14.md) | 120 | `result-track:fa067e02b9c75980b5339f146a16287a9056d4d148e6159128ea4decf363551c` |
| 19 | `lemma` | [AbsolutelyContinuous.comp_right](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/absolutelycontinuous-comp-right--74bf7d2da03c99e128e51f5e.md) | 128 | `result-track:74bf7d2da03c99e128e51f5e1b1e865c26a3b8bb1cd0d86f3e72155255f201cf` |
| 20 | `lemma` | [AbsolutelyContinuous.comp_left](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/absolutelycontinuous-comp-left--6592997c2af07cfbcbe84f6b.md) | 135 | `result-track:6592997c2af07cfbcbe84f6b6621a401e1902bfb0f5ef48a4fb297a2726c6fa2` |
| 21 | `lemma` | [AbsolutelyContinuous.comp](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/absolutelycontinuous-comp--cace3be46144027d8ad94bcb.md) | 142 | `result-track:cace3be46144027d8ad94bcb693dad32bc2fa8fa45c59ba10a34e06b7139233a` |
| 22 | `lemma` | [absolutelyContinuous_comp_of_countable](../../../../../mathematics/Analysis/MeasureTheory/MeasureComp/Variant28c9beecb3ed25656e95f6e05a292eb70166f8b53a8a4bd4a6361e00417086c1.lean/declarations/absolutelycontinuous-comp-of-countable--37ae7945615366d88940ed88.md) | 146 | `result-track:37ae7945615366d88940ed887a859f4bcdf7716645d0c1bb69113cd1260ee7bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
