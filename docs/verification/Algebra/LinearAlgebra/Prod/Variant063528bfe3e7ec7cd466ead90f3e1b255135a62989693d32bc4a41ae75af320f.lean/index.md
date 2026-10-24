# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e06d940aa2396412dcbba58d8895f1d6810bd6c7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e06d940aa2396412dcbba58d8895f1d6810bd6c7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Grading` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Graded.Internal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_mul_map_of_isOrtho_of_mem_evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/map-mul-map-of-isortho-of-mem-evenodd--4e8da2fca6b91a941ac4b927.md) | 50 | `result-track:4e8da2fca6b91a941ac4b927469200ff4554fa45852e942b47170f59159bb3e3` |
| 2 | `theorem` | [commute_map_mul_map_of_isOrtho_of_mem_evenOdd_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/commute-map-mul-map-of-isortho-of-mem-evenodd-zero-left--3b4d5712611f8c2a77d62945.md) | 92 | `result-track:3b4d5712611f8c2a77d629458d33c582f5c6e75da8c5892234c31adbf656ab68` |
| 3 | `theorem` | [commute_map_mul_map_of_isOrtho_of_mem_evenOdd_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/commute-map-mul-map-of-isortho-of-mem-evenodd-zero-right--3be6cf3bdae3ca7b99e34213.md) | 97 | `result-track:3be6cf3bdae3ca7b99e342130d92469ca9a569761fbffb80a3307bbf9a8fec37` |
| 4 | `theorem` | [map_mul_map_eq_neg_of_isOrtho_of_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/map-mul-map-eq-neg-of-isortho-of-mem-evenodd-one--dd38f4c80f15d48e20621c4d.md) | 102 | `result-track:dd38f4c80f15d48e20621c4d19e2843892ca3223b24d049fcf92125e6ce69c86` |
| 5 | `def` | [ofProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/ofprod--17c3e490480291992d39a2bd.md) | 110 | `declaration-track:17c3e490480291992d39a2bdb3f67b469eada16ad9a12e036d3cb4f25a52f2df` |
| 6 | `lemma` | [ofProd_ι_mk](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/ofprod-mk--0bc57afd6a6c7f632c1e6ad5.md) | 129 | `result-track:0bc57afd6a6c7f632c1e6ad51da992fae7ff12f63db01455de0c0d7715c0d608` |
| 7 | `def` | [toProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/toprod--1ae769d169fa75f9e98dafb4.md) | 135 | `declaration-track:1ae769d169fa75f9e98dafb458b0548573c09036f89ae19a1fba9c4dccc60e54` |
| 8 | `lemma` | [toProd_ι_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/toprod-tmul-one--3a0ad49c439c6dcc1eb7c02d.md) | 143 | `result-track:3a0ad49c439c6dcc1eb7c02d8b6bd4243c02dd6c3183cc29a4175d8450b49ea3` |
| 9 | `lemma` | [toProd_one_tmul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/toprod-one-tmul--3ccb25314065f564114965fb.md) | 148 | `result-track:3ccb25314065f564114965fb48c69185a7d50f08a5320e3a5f1d08895b0b477a` |
| 10 | `lemma` | [toProd_comp_ofProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/toprod-comp-ofprod--80c95faf3847a4e11a32f9fd.md) | 152 | `result-track:80c95faf3847a4e11a32f9fd040151fb2fd8dc672dfeaf34b2e36fc0211b3ce4` |
| 11 | `lemma` | [ofProd_comp_toProd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/ofprod-comp-toprod--3ef869a6bd01b1758121dde7.md) | 159 | `result-track:3ef869a6bd01b1758121dde7832960924653376851c1bea648436ec64994109c` |
| 12 | `def` | [prodEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/declarations/prodequiv--dff68d2f7d72adb716eb58d7.md) | 167 | `declaration-track:dff68d2f7d72adb716eb58d79ea3b5f04a72a144316bcbcc739f3662d6538669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
