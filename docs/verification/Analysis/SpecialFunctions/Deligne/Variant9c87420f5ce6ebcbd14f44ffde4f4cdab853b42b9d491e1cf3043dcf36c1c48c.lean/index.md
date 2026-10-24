# Verification target: GRWTSK.Analysis.SpecialFunctions.Deligne.Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a235f225ffac0e1964bd1193b11878b1d88ca53",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a235f225ffac0e1964bd1193b11878b1d88ca53`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gammaℝ](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma--f82d8c89d3250f67e0604900.md) | 40 | `declaration-track:f82d8c89d3250f67e0604900135edf94ba24af85b6bef88c3c7dd0e1824a79da` |
| 2 | `lemma` | [Gammaℝ_def](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-def--e0e1ba898e1a3988ebb38bf7.md) | 42 | `result-track:e0e1ba898e1a3988ebb38bf7899a647dbb66152398059100c800aa80454c4bcf` |
| 3 | `def` | [Gammaℂ](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma--0db628c9d45444c5e0ef438f.md) | 48 | `declaration-track:0db628c9d45444c5e0ef438f3ffdfdf75be16aabb769bb9be66a81219958879a` |
| 4 | `lemma` | [Gammaℂ_def](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-def--6a092d95c3a5e2a609d8c7a4.md) | 50 | `result-track:6a092d95c3a5e2a609d8c7a409c9d43ada5322158709e29f224400d4ae79bd9e` |
| 5 | `lemma` | [Gammaℝ_add_two](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-add-two--7fd908b0fcea1707d80aeb6f.md) | 52 | `result-track:7fd908b0fcea1707d80aeb6fa029c6e4c459f100acd870b2d22d71435879e79b` |
| 6 | `lemma` | [Gammaℂ_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-add-one--bc435ed23a52595d61054016.md) | 59 | `result-track:bc435ed23a52595d6105401694d421422ecc0552823284721046cfdf3eebb1a3` |
| 7 | `lemma` | [Gammaℝ_ne_zero_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-ne-zero-of-re-pos--3cbd71770cab50f1a5e3e6c5.md) | 65 | `result-track:3cbd71770cab50f1a5e3e6c5b253ff0b0dc486b7428b46ecaa42ace6ea7686f5` |
| 8 | `lemma` | [Gammaℝ_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-eq-zero-iff--c866108356867d0bf8264aac.md) | 72 | `result-track:c866108356867d0bf8264aaca697a452d470f24792f2e56435f7cd55329c5749` |
| 9 | `lemma` | [Gammaℝ_one](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-one--4c923778243bb9cd5963dc2e.md) | 76 | `result-track:4c923778243bb9cd5963dc2e09746e35fb40a4a06f86a9cc290daf9414b94163` |
| 10 | `lemma` | [Gammaℂ_one](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-one--24e86a43a81c8748e2fd2d92.md) | 81 | `result-track:24e86a43a81c8748e2fd2d926bb501b6c3461412e8d9ad2f4129ed437fcdfc6f` |
| 11 | `lemma` | [differentiable_Gammaℝ_inv](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/differentiable-gamma-inv--0202e68ac3ee608ba8982669.md) | 87 | `result-track:0202e68ac3ee608ba8982669d530115c189fb7451d259b168530f7291bef754d` |
| 12 | `lemma` | [Gammaℝ_residue_zero](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-residue-zero--25153ddae8beffb6c0bbbba3.md) | 94 | `result-track:25153ddae8beffb6c0bbbba30effc6ebf40999b86379354b2cd9319e4d394188` |
| 13 | `lemma` | [Gammaℝ_mul_Gammaℝ_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-mul-gamma-add-one--004e7e27c0c96d4ed9bd753d.md) | 114 | `result-track:004e7e27c0c96d4ed9bd753d36fa20ec0bce9df68dab9c74d41e020778e41bb9` |
| 14 | `lemma` | [Gammaℝ_one_sub_mul_Gammaℝ_one_add](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-one-sub-mul-gamma-one-add--d5f1cc2eafb0807e4486854d.md) | 130 | `result-track:d5f1cc2eafb0807e4486854d060a91f177d0578c17645d4e058fd9366e3c11b8` |
| 15 | `lemma` | [Gammaℝ_div_Gammaℝ_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/gamma-div-gamma-one-sub--9d573955ecf929fb7733ae46.md) | 147 | `result-track:9d573955ecf929fb7733ae462dc466ae5de976f72e1a98d264a5b77423865d17` |
| 16 | `lemma` | [inv_Gammaℝ_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/inv-gamma-one-sub--ee55b688510d29f577dfbd16.md) | 162 | `result-track:ee55b688510d29f577dfbd1606909f4fe097bf36e83ed7d447a0cb228004de58` |
| 17 | `lemma` | [inv_Gammaℝ_two_sub](../../../../../mathematics/Analysis/SpecialFunctions/Deligne/Variant9c87420f5ce6ebcbd14f44ffde4f4cdab853b42b9d491e1cf3043dcf36c1c48c.lean/declarations/inv-gamma-two-sub--7fd26b0f7a35aa603cb65106.md) | 177 | `result-track:7fd26b0f7a35aa603cb6510662a61ed6db6e41316bec43a7f4fbc65e646a7425` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
