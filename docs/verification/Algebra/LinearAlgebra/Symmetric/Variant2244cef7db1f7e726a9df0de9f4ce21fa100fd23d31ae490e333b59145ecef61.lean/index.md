# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60a2d288b1f8b8a4337e6b0511b303acff849f95",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60a2d288b1f8b8a4337e6b0511b303acff849f95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm--9117c78e53e0585666eea0dc.md) | 37 | `declaration-track:9117c78e53e0585666eea0dc4d69ae3f506d8a5fdf7da23376414095dcddcb5c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/instance--149b8d2efd521dbd9be3ad53.md) | 40 | `declaration-track:149b8d2efd521dbd9be3ad53d7a4f071942843d6402ebd2e8249ce703b5ade88` |
| 3 | `theorem` | [IsSymm.eq](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-eq--9c366d2f4da0ac7d65a2a0e4.md) | 43 | `result-track:9c366d2f4da0ac7d65a2a0e4b110601e1edae7f3369a0d7115d07abe2a418c7d` |
| 4 | `theorem` | [IsSymm.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-ext-iff--edf7772becd06382a9b757c9.md) | 47 | `result-track:edf7772becd06382a9b757c930f769982880becbccfc040c2256df42e4bab337` |
| 5 | `theorem` | [IsSymm.ext](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-ext--a0595e40bcd14cd6c7c5ce93.md) | 51 | `result-track:a0595e40bcd14cd6c7c5ce934e499d986948d39b0d4c320718b2e9c817797e4c` |
| 6 | `theorem` | [IsSymm.apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-apply--ceaa80cb358935ec99e8d7c0.md) | 54 | `result-track:ceaa80cb358935ec99e8d7c0bb14d3d62b1b9827bd4f1c8729ea714fb8179a2e` |
| 7 | `theorem` | [isSymm_mul_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-mul-transpose-self--5f72de2afa2ffbbb7dc2a7d7.md) | 57 | `result-track:5f72de2afa2ffbbb7dc2a7d7b68476c1c8fb9dc0171defe38eb8da9acb3e4f84` |
| 8 | `theorem` | [isSymm_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-transpose-mul-self--b7af9451ca66de73f4028106.md) | 61 | `result-track:b7af9451ca66de73f4028106aed5310a1450c6193f48be9d1b54e714c243f34e` |
| 9 | `theorem` | [isSymm_add_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-add-transpose-self--3e359af38ad0b9003df43935.md) | 65 | `result-track:3e359af38ad0b9003df43935bc9d21e8d25aee6086cd5b2ad270f7305bac50c0` |
| 10 | `theorem` | [isSymm_transpose_add_self](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-transpose-add-self--98d4d5529ca5aa7aef0b5b56.md) | 68 | `result-track:98d4d5529ca5aa7aef0b5b569b04fd1ceeb37f95932a8d67eb8790745c23741b` |
| 11 | `theorem` | [isSymm_zero](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-zero--28af87350f9bcc4a134d92cf.md) | 72 | `result-track:28af87350f9bcc4a134d92cfd11d15924e0a0cf1973b07f1373cd53fe8689625` |
| 12 | `theorem` | [isSymm_one](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-one--aaeba6c2a91d95426d0ca56b.md) | 76 | `result-track:aaeba6c2a91d95426d0ca56bee5f7efb36f514b025d0da051146d7455d9c3f04` |
| 13 | `theorem` | [IsSymm.pow](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-pow--e0946200e24c32cd1fbd87b6.md) | 79 | `result-track:e0946200e24c32cd1fbd87b69df03793f9e19faff8d83a66edede43609ba10b0` |
| 14 | `theorem` | [IsSymm.map](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-map--0469ff6a3bf046033f819fc6.md) | 85 | `result-track:0469ff6a3bf046033f819fc6fdd1ad713a8955aa74b629882e3ac9a794217648` |
| 15 | `theorem` | [IsSymm.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-transpose--9b1f8e9b8c4c3bfae3a26046.md) | 89 | `result-track:9b1f8e9b8c4c3bfae3a260466f133f20f96a977eb1283bd40c127684f299e48e` |
| 16 | `theorem` | [IsSymm.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-conjtranspose--31a95525cc26ff82eb90f8d6.md) | 93 | `result-track:31a95525cc26ff82eb90f8d68ca7f7ab1190488cfd243451e77246fe7c235a3e` |
| 17 | `theorem` | [IsSymm.neg](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-neg--8537c3b7dda3e46d14e7091c.md) | 97 | `result-track:8537c3b7dda3e46d14e7091ceaa42cd58ae0dfebf1982de793f8900f94be0d19` |
| 18 | `theorem` | [IsSymm.add](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-add--53b0a15940835eaa511e5252.md) | 101 | `result-track:53b0a15940835eaa511e52528560486e8aad8f0a458beddb0e7b3d1a5cbce398` |
| 19 | `theorem` | [IsSymm.sub](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-sub--df8c60ef070cfac8f4238a73.md) | 105 | `result-track:df8c60ef070cfac8f4238a7313dbeb8233c9d6942dfca8703923cb96f7909128` |
| 20 | `theorem` | [IsSymm.smul](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-smul--ca589a2ff62bed8e7d380de1.md) | 109 | `result-track:ca589a2ff62bed8e7d380de183fc0b7bbd4c5b7cd1496a981071cd4464cb89fc` |
| 21 | `theorem` | [IsSymm.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-submatrix--627ecf545125e011c47b8fc4.md) | 113 | `result-track:627ecf545125e011c47b8fc402bfea01b8017390e24ff064780a27293266654a` |
| 22 | `theorem` | [isSymm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-diagonal--dab2c99968e558ae2f34522d.md) | 118 | `result-track:dab2c99968e558ae2f34522d172e63808983dd6ad7e230271672c41220b38cc1` |
| 23 | `theorem` | [IsSymm.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-fromblocks--9fbefb2409941d5b2a49dd2e.md) | 123 | `result-track:9fbefb2409941d5b2a49dd2eb27e24b3ebd2c07d83e102ce71e82817d875e1c0` |
| 24 | `theorem` | [isSymm_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61.lean/declarations/issymm-fromblocks-iff--6877f91eb663e638794b93cc.md) | 133 | `result-track:6877f91eb663e638794b93cca0392765c835f21ac2dfc8703e8e3c18011a52e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
