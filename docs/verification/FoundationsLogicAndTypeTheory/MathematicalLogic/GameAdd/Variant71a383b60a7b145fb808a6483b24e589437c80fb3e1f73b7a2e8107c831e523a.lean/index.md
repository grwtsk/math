# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GameAdd.Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9e44533feb499c6ad9652c220507ddd5637360e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9e44533feb499c6ad9652c220507ddd5637360e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Sym2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd--200799f0ba2b5f974b05bd50.md) | 50 | `declaration-track:200799f0ba2b5f974b05bd50325e8a71e532d09899b3f8cd6cdf34b90aa67241` |
| 2 | `theorem` | [gameAdd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-iff--5a239b4290105fcd33877a15.md) | 54 | `result-track:5a239b4290105fcd33877a159e7b3979d89b8e1a5457c70bfceb51a2baabe3c2` |
| 3 | `theorem` | [gameAdd_mk_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-mk-iff--cafc7f8bed295c5ce72b70cd.md) | 63 | `result-track:cafc7f8bed295c5ce72b70cddeaf7ccc6da79888d8eb6d0faeab19f4f45820b2` |
| 4 | `theorem` | [gameAdd_swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-swap-swap--0ec2ce29b64eba45b48caa5c.md) | 68 | `result-track:0ec2ce29b64eba45b48caa5c940990469b760dd5c982e554435d08d258c2c9c8` |
| 5 | `theorem` | [gameAdd_swap_swap_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-swap-swap-mk--2e6a2a8ea6077548f00e3b3b.md) | 71 | `result-track:2e6a2a8ea6077548f00e3b3b291bef594774473a8d233cccfe87d28ca69de9e1` |
| 6 | `theorem` | [gameAdd_le_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-le-lex--bc6c24d541650f3c9039ee8f.md) | 76 | `result-track:bc6c24d541650f3c9039ee8f028db3ce10620c61f5d819a363b40654926fc88f` |
| 7 | `theorem` | [rprod_le_transGen_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/rprod-le-transgen-gameadd--870833edbc8932e3259f3b2e.md) | 80 | `result-track:870833edbc8932e3259f3b2ecbebcb711327a312045df33c55812b04530a7820` |
| 8 | `theorem` | [Acc.prod_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/acc-prod-gameadd--c54fbde7d8686c97df4d0ed0.md) | 90 | `result-track:c54fbde7d8686c97df4d0ed0e2b300b4c7bb602532d3ee49b76a9e8d34e70f7c` |
| 9 | `theorem` | [WellFounded.prod_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/wellfounded-prod-gameadd--c214c31651a566a23e6bf76b.md) | 101 | `result-track:c214c31651a566a23e6bf76b224302459cb8d9539c205c26aab50cc8cee55dcc` |
| 10 | `def` | [GameAdd.fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fix--4e97aed106fe95a3e0a5f13d.md) | 109 | `declaration-track:4e97aed106fe95a3e0a5f13d17390900b1947fce165c946e7bcf434b70e7da69` |
| 11 | `theorem` | [GameAdd.fix_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fix-eq--a8dbf140b422f28f48160b27.md) | 115 | `result-track:a8dbf140b422f28f48160b275d723c00c5472aeccfd5ccaea4ad9a52243afc90` |
| 12 | `theorem` | [GameAdd.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-induction--7def6f2a5add401c49684ba2.md) | 122 | `result-track:7def6f2a5add401c49684ba2cc2a2cdc73576ac7744380781408649574a42840` |
| 13 | `def` | [GameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd--1914cb538ff8605befedc80b.md) | 138 | `declaration-track:1914cb538ff8605befedc80ba67c11aec59fca03843e7c6c95527194ffe351c4` |
| 14 | `theorem` | [gameAdd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-iff--30d104502daf687d87d24185.md) | 146 | `result-track:30d104502daf687d87d241850ef0f1922a58bfb962fd8539710685bc568327c6` |
| 15 | `theorem` | [gameAdd_mk'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-mk-iff--3b925a2d2996b6b856e8be17.md) | 151 | `result-track:3b925a2d2996b6b856e8be176db22d5d40d17377a7b7b2be4683be8d49bab125` |
| 16 | `theorem` | [_root_.Prod.GameAdd.to_sym2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/root-prod-gameadd-to-sym2--2bfc0bc2798e46e1afb4ad13.md) | 156 | `result-track:2bfc0bc2798e46e1afb4ad13eafe7975ebc3576a5e35709ed7abd958e03b0cd8` |
| 17 | `theorem` | [GameAdd.fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fst--5b9001670eb119c1e7e1d330.md) | 160 | `result-track:5b9001670eb119c1e7e1d3300be1864cbe101a181deac839e55d7756e97b2cd0` |
| 18 | `theorem` | [GameAdd.snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-snd--37ea378898d1d299148f14bd.md) | 163 | `result-track:37ea378898d1d299148f14bd721c65a7b1c52afef76d769b25e3e5e3db50723f` |
| 19 | `theorem` | [GameAdd.fst_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fst-snd--990065b86f431a6819561ce5.md) | 166 | `result-track:990065b86f431a6819561ce5e3fe053afd3f3fe74330b4fcb8b0446e9ad491b8` |
| 20 | `theorem` | [GameAdd.snd_fst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-snd-fst--dbb24572fad7dc7413f9a20b.md) | 170 | `result-track:dbb24572fad7dc7413f9a20b04c1dd14b3a443a716fd36892659379b004ea661` |
| 21 | `theorem` | [Acc.sym2_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/acc-sym2-gameadd--1f4d0934fa401484e735321a.md) | 176 | `result-track:1f4d0934fa401484e735321acc03fda70db64415683138491e79785fe1493c7c` |
| 22 | `theorem` | [WellFounded.sym2_gameAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/wellfounded-sym2-gameadd--62551501680ef41bd73210c3.md) | 193 | `result-track:62551501680ef41bd73210c3852741ddb5dd0f656db17b35ca65887f1e5db05d` |
| 23 | `def` | [GameAdd.fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fix--fe08e09bbdd9e194d1e7109d.md) | 201 | `declaration-track:fe08e09bbdd9e194d1e7109dcd28c3086526be0b2d076b1a84716f395417c9ce` |
| 24 | `theorem` | [GameAdd.fix_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-fix-eq--11d9e25b3306a4c9364c65f2.md) | 209 | `result-track:11d9e25b3306a4c9364c65f2440725abd26c6dd5d1e6ee7260b4e7c365755651` |
| 25 | `theorem` | [GameAdd.induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant71a383b60a7b145fb808a6483b24e589437c80fb3e1f73b7a2e8107c831e523a.lean/declarations/gameadd-induction--e5bda47326a51e6a42360856.md) | 215 | `result-track:e5bda47326a51e6a42360856289b0198e0ff23a1aba9d1f0248abb1fab38edce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
