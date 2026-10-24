# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Etransform.Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pointwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulDysonEtransform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muldysonetransform--e108167fa771be3f42afb8dc.md) | 60 | `declaration-track:e108167fa771be3f42afb8dcb5057db60a5c0497ae8070af6ecfff691a4e03d5` |
| 2 | `theorem` | [mulDysonEtransform.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muldysonetransform-subset--aea3f20807d4ddb6d788b054.md) | 66 | `result-track:aea3f20807d4ddb6d788b054fa278c1a46d2d676b4ce8aa3aff7fb8eb1b2b18a` |
| 3 | `theorem` | [mulDysonEtransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muldysonetransform-card--b7d90041517fac963119a95d.md) | 74 | `result-track:b7d90041517fac963119a95d80dd3aa8a137efcc718974af4fbd9deaa9ed7b52` |
| 4 | `theorem` | [mulDysonEtransform_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muldysonetransform-idem--d717a1f8b0ce61cf1ff02757.md) | 83 | `result-track:d717a1f8b0ce61cf1ff02757d214017355215d5e52228e160e4d6bacaf037b0c` |
| 5 | `theorem` | [mulDysonEtransform.smul_finset_snd_subset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muldysonetransform-smul-finset-snd-subset-fst--e5a79fc3a5c68f163791101a.md) | 96 | `result-track:e5a79fc3a5c68f163791101a9f669c5f6b134f24b69a7d5e5015b13333022760` |
| 6 | `def` | [mulEtransformLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformleft--e1383ac52d6a08a9870c0ff5.md) | 125 | `declaration-track:e1383ac52d6a08a9870c0ff53235c596445690c26c619a3acad8c9f6c8028158` |
| 7 | `def` | [mulEtransformRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformright--806dec5f5606c5ccc4d5b16e.md) | 134 | `declaration-track:806dec5f5606c5ccc4d5b16e9359aca4603ad8b3ba012211d044ce813c6cd7bd` |
| 8 | `theorem` | [mulEtransformLeft_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformleft-one--7b9ab4b647f6a8318098f2d6.md) | 140 | `result-track:7b9ab4b647f6a8318098f2d640f3de446f8cba33351bb48a2f71fb9929b63e28` |
| 9 | `theorem` | [mulEtransformRight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformright-one--5471c03720d034499606b952.md) | 145 | `result-track:5471c03720d034499606b9520c31c3741d9e01b3550c017a044184572585be6c` |
| 10 | `theorem` | [mulEtransformLeft.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformleft-fst-mul-snd-subset--c8addfa8c26f4e25b45e7d10.md) | 150 | `result-track:c8addfa8c26f4e25b45e7d103c59e4949c6defea13077531d71e87a7c37e2883` |
| 11 | `theorem` | [mulEtransformRight.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformright-fst-mul-snd-subset--bc6ee8ab6bb53b90a97c44b2.md) | 158 | `result-track:bc6ee8ab6bb53b90a97c44b230898750e37e2919b48ebd5f9d73fb1c711e6475` |
| 12 | `theorem` | [mulEtransformLeft.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformleft-card--77c47d8fb34b2ec5f124c566.md) | 166 | `result-track:77c47d8fb34b2ec5f124c5662dbb4e6ec71e06d582f8a08fbd4986f4f0938244` |
| 13 | `theorem` | [mulEtransformRight.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformright-card--05efbac0ad761c29fe152ab6.md) | 173 | `result-track:05efbac0ad761c29fe152ab671c883725030a0d05d90c9ae9d9039cb7bdda036` |
| 14 | `theorem` | [MulEtransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransform-card--0207842a903108a13e6dc550.md) | 182 | `result-track:0207842a903108a13e6dc550666f7c77140d07a1e33d11e03a48ae5460f1cbcc` |
| 15 | `theorem` | [mulEtransformLeft_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformleft-inv--041f70718cef4351feb15f61.md) | 197 | `result-track:041f70718cef4351feb15f61111782fe375c60bd36266d5bbed6643809b1742b` |
| 16 | `theorem` | [mulEtransformRight_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/declarations/muletransformright-inv--fcd1c8afef73e7713309bc7b.md) | 203 | `result-track:fcd1c8afef73e7713309bc7b35c6d0bb770f34ca8b0a8f742b619a1eafa92f26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
