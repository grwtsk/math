# Verification target: GRWTSK.Analysis.Convolution.CompactProfileTailSigns

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97a04434a3ee8926caafa98cc7bd3a590bb4e4c8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileTailSigns.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97a04434a3ee8926caafa98cc7bd3a590bb4e4c8`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileTailSigns.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileTailSigns.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.TestFunctions.PowerFourResidualSigns`](../../../../mathematics/Analysis/TestFunctions/PowerFourResidualSigns.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tail_product_signs](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-product-signs--eefd499227cf28e4d5398e60.md) | 21 | `result-track:eefd499227cf28e4d5398e60a7cda833475488b3cdbfca15f255b7c2498d4867` |
| 2 | `theorem` | [tail_first_product_continuous](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-first-product-continuous--33e078eb05b5ffd7c692625d.md) | 51 | `result-track:33e078eb05b5ffd7c692625d44eb10bf8259575fe7fe212206abc803084ebafb` |
| 3 | `theorem` | [tail_curvature_product_continuous](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-curvature-product-continuous--ee848e637e53ed7e6e8f0686.md) | 58 | `result-track:ee848e637e53ed7e6e8f0686f4834362c25f25e7c60af9e08de185cc75124802` |
| 4 | `theorem` | [tail_first_product_integrable](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-first-product-integrable--8e59beee0f6f51fcd59f7b59.md) | 65 | `result-track:8e59beee0f6f51fcd59f7b592b3b7bda6d8eb6fabe3e99fb481aa5fe4abe0926` |
| 5 | `theorem` | [tail_curvature_product_integrable](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-curvature-product-integrable--9b2aa467a851ba3fc3e708dd.md) | 74 | `result-track:9b2aa467a851ba3fc3e708ddc04f9e5c5283df8fee971a8543a6d1f63a08eb22` |
| 6 | `theorem` | [tail_first_deriv_eq_integral](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-first-deriv-eq-integral--8f5b2547da4e7747c5380106.md) | 83 | `result-track:8f5b2547da4e7747c53801062436219ea6dc34c361b4bbf833dc5a81f3a96995` |
| 7 | `theorem` | [tail_first_deriv_nonpos](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-first-deriv-nonpos--73360b0b36d24bd674a19f3f.md) | 93 | `result-track:73360b0b36d24bd674a19f3fe75ebb6b617958fadc4ef0156d79640c07ce0db5` |
| 8 | `theorem` | [tail_second_deriv_pos](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-second-deriv-pos--c7c66e55c043ad1519267839.md) | 98 | `result-track:c7c66e55c043ad151926783923ccc79033d05cdd576cbd78dbf5f36d4832e338` |
| 9 | `theorem` | [tail_atom_pos](../../../../mathematics/Analysis/Convolution/CompactProfileTailSigns.lean/declarations/tail-atom-pos--0811500f8ab57aa5288f4023.md) | 114 | `result-track:0811500f8ab57aa5288f4023fde7bb7553535ecc53f9c42ae560c0f353b3d4dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
