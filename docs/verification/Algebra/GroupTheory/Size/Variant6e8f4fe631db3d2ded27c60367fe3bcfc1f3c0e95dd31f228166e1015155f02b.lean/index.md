# Verification target: GRWTSK.Algebra.GroupTheory.Size.Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c36fc9c530774013bb16b1c48895e4c34b663a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c36fc9c530774013bb16b1c48895e4c34b663a`.

Source path: `GRWTSK/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftLeft_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/shiftleft-eq-mul-pow--eaca3b334c0c25b0a10d2470.md) | 18 | `result-track:eaca3b334c0c25b0a10d2470cfb6e59e042012cd213dc7417ebeec5eedb150f2` |
| 2 | `theorem` | [shiftLeft'_tt_eq_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/shiftleft-tt-eq-mul-pow--a56de8902b127e4a6121341f.md) | 20 | `result-track:a56de8902b127e4a6121341fb4192fd4410023f1dcf4cf39d196d3a10ff61658` |
| 3 | `theorem` | [shiftLeft'_ne_zero_left](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/shiftleft-ne-zero-left--7c18e5608933784bbe05a61a.md) | 28 | `result-track:7c18e5608933784bbe05a61a98683947f7305e07d2934a215e3c815398910c81` |
| 4 | `theorem` | [shiftLeft'_tt_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/shiftleft-tt-ne-zero--42bde38d39a6d5e351bd2270.md) | 31 | `result-track:42bde38d39a6d5e351bd2270a33160dd24c553a5ac98868c094a6778de8b4fd4` |
| 5 | `theorem` | [size_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-zero--d4e6e43033b2a9b70f088a52.md) | 39 | `result-track:d4e6e43033b2a9b70f088a5220d335bf35190d2ae8cb99e2d9e81674f4a15b80` |
| 6 | `theorem` | [size_bit](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-bit--346cb538d517fe726468422f.md) | 42 | `result-track:346cb538d517fe726468422f109708210e7f33965d46f0f4aaeb6ac0ca479944` |
| 7 | `theorem` | [size_one](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-one--03a5cd62d41dd3b9f5644975.md) | 52 | `result-track:03a5cd62d41dd3b9f5644975294944d5c88c9ecac162d28c78503db3328a7d8e` |
| 8 | `theorem` | [size_shiftLeft'](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-shiftleft--80736b8243ab8ac7991d44a2.md) | 58 | `result-track:80736b8243ab8ac7991d44a273848fb385585abbfc2b79e1c0c1daf3a8b28bf2` |
| 9 | `theorem` | [size_shiftLeft](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-shiftleft--99045588ed8c0ea13fb20067.md) | 77 | `result-track:99045588ed8c0ea13fb20067bfe8d5ae5bab229005873ae864b019597511fe7e` |
| 10 | `theorem` | [lt_size_self](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/lt-size-self--f3d9e3530c1268a35b93b1d3.md) | 80 | `result-track:f3d9e3530c1268a35b93b1d32fdf88658b4a219a3b03653b1951c139c14c42c6` |
| 11 | `theorem` | [size_le](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-le--99f7282cb05295c565ae5db0.md) | 91 | `result-track:99f7282cb05295c565ae5db0455108f71392b9bfa8e141a45c5f6cc092de4c48` |
| 12 | `theorem` | [lt_size](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/lt-size--9c0663592ce2906a8ba8549d.md) | 110 | `result-track:9c0663592ce2906a8ba8549d8a805874c0c206aabe0deca956de9df4f1aad8fc` |
| 13 | `theorem` | [size_pos](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-pos--268bdf73273df1b6ba354232.md) | 113 | `result-track:268bdf73273df1b6ba35423268c9daf01cb8257d2c3da5cef68a63a3049dd367` |
| 14 | `theorem` | [size_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-eq-zero--181f4262e62bedefc4cff478.md) | 115 | `result-track:181f4262e62bedefc4cff47813f7e6142212b93612d6ec197ca5faddf2e31a23` |
| 15 | `theorem` | [size_pow](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-pow--b606cec1044390218753ad0a.md) | 118 | `result-track:b606cec1044390218753ad0ad36928fcae00faeb261e25e7458e09462be68c60` |
| 16 | `theorem` | [size_le_size](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-le-size--ce32c468c75e24680c763d5d.md) | 122 | `result-track:ce32c468c75e24680c763d5dfdbc84bee429db273a274ef92a3732f48089a638` |
| 17 | `theorem` | [size_eq_bits_len](../../../../../mathematics/Algebra/GroupTheory/Size/Variant6e8f4fe631db3d2ded27c60367fe3bcfc1f3c0e95dd31f228166e1015155f02b.lean/declarations/size-eq-bits-len--d88aea1e57d512f23555fc67.md) | 125 | `result-track:d88aea1e57d512f23555fc67422f0146b64b50affb25e0aa478d6af3641be7cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
