# Verification target: GRWTSK.Analysis.AddCircle.Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1db652083f61f73d92ca087cb3d7118c871bb9e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1db652083f61f73d92ca087cb3d7118c871bb9e`.

Source path: `GRWTSK/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/instance--4bbfccc2df7b7b12973411dd.md) | 40 | `declaration-track:4bbfccc2df7b7b12973411dd900d5bf86ed6cb300171063352555125391e105d` |
| 2 | `theorem` | [norm_coe_mul](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-coe-mul--330f13e12e5ddf8c2da5285c.md) | 44 | `result-track:330f13e12e5ddf8c2da5285ccdf827e13b0e7531bf398d679ba4d313a35dbfe1` |
| 3 | `theorem` | [norm_neg_period](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-neg-period--740e47607c2096a5e3232536.md) | 71 | `result-track:740e47607c2096a5e32325363fb921c314c06aef9fd22c33e4a27242fe2edb9a` |
| 4 | `theorem` | [norm_eq_of_zero](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-eq-of-zero--44ebf0f6859f564fb08f6f6f.md) | 79 | `result-track:44ebf0f6859f564fb08f6f6fb45ff3091a4a9a24173d14bccad7556367afff8f` |
| 5 | `theorem` | [norm_eq](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-eq--8bfced1305b7f3918882e53b.md) | 86 | `result-track:8bfced1305b7f3918882e53b18e1b42614742232b337b0149c77ab4dbc20b2ad` |
| 6 | `theorem` | [norm_eq'](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-eq--8de9bdaf93aa65aead6ce68e.md) | 121 | `result-track:8de9bdaf93aa65aead6ce68ea882db2c2d9c8951b37d0d18772c55ff0869f9ad` |
| 7 | `theorem` | [norm_le_half_period](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-le-half-period--b446b75f8e9def47de90d891.md) | 128 | `result-track:b446b75f8e9def47de90d891efc9185776d987b5f3c65ef203904e713e09e1a6` |
| 8 | `theorem` | [norm_half_period_eq](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-half-period-eq--15d00feca406a7e150cf35a2.md) | 137 | `result-track:15d00feca406a7e150cf35a262288788688eea4b8e820079da5bfe20542a58ef` |
| 9 | `theorem` | [norm_coe_eq_abs_iff](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-coe-eq-abs-iff--2ab45deca8defafb3fd86c05.md) | 143 | `result-track:2ab45deca8defafb3fd86c05681f2322c4f09a625695b6bdb015de8f1243f180` |
| 10 | `theorem` | [closedBall_eq_univ_of_half_period_le](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/closedball-eq-univ-of-half-period-le--c3b4f28845ff3c8f16c26b10.md) | 170 | `result-track:c3b4f28845ff3c8f16c26b102e52bc5bf3ae290de92f2346d8f6ee5b27dbee64` |
| 11 | `theorem` | [coe_real_preimage_closedBall_period_zero](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/coe-real-preimage-closedball-period-zero--74edb299bebef2dd58a4639b.md) | 177 | `result-track:74edb299bebef2dd58a4639b2351d7a436d4e353ef22f021d1af460484e1663d` |
| 12 | `theorem` | [coe_real_preimage_closedBall_eq_iUnion](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/coe-real-preimage-closedball-eq-iunion--1428a2659458901f83ca8671.md) | 185 | `result-track:1428a2659458901f83ca867183fb307288b7eeacb5392685c88c1871de0b16fa` |
| 13 | `theorem` | [coe_real_preimage_closedBall_inter_eq](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/coe-real-preimage-closedball-inter-eq--755b7cda1368e5bc0e1f70a0.md) | 199 | `result-track:755b7cda1368e5bc0e1f70a08af871dbb009653adfc6de5b5694519fc6638546` |
| 14 | `theorem` | [norm_div_nat_cast](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-div-nat-cast--50f4eb3d7c09a32a5d5f0ca3.md) | 246 | `result-track:50f4eb3d7c09a32a5d5f0ca33ac34aa86ebdd16780b8f243e0b0f0d27bc1849f` |
| 15 | `theorem` | [exists_norm_eq_of_isOfFinAddOrder](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/exists-norm-eq-of-isoffinaddorder--18979bf39465e2473b27fbf3.md) | 252 | `result-track:18979bf39465e2473b27fbf3d211a697fb38eb9fce1b945267151a419a1ab9c0` |
| 16 | `theorem` | [le_add_order_smul_norm_of_isOfFinAddOrder](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/le-add-order-smul-norm-of-isoffinaddorder--7b685045e949770854b5b5cb.md) | 261 | `result-track:7b685045e949770854b5b5cba9ea370cace5f30f596c192094cb55f2f67626d1` |
| 17 | `theorem` | [norm_eq](../../../../mathematics/Analysis/AddCircle/Variant205a13ba7cdc083f606fa94ba8e9699fcb75953ef37defbdec9000570f97f9e4.lean/declarations/norm-eq--2679568a47753bb2987cdb02.md) | 280 | `result-track:2679568a47753bb2987cdb02c1de577c4bc9ce940d9af95e6fa2b71a13c2a4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
