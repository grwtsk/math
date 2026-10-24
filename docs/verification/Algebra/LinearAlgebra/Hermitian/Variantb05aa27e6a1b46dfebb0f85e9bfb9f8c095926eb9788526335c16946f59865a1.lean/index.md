# Verification target: GRWTSK.Algebra.LinearAlgebra.Hermitian.Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68d60b2897603d11b6dcd862e9b118b0af6ebede",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68d60b2897603d11b6dcd862e9b118b0af6ebede`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.ConjTranspose` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian--8106fc6d26e8a0fd2711de74.md) | 41 | `declaration-track:8106fc6d26e8a0fd2711de74fc5ad45a87cf9c5cec130dae97266e13803636ff` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/instance--6b2a482179ad0047644e7d98.md) | 43 | `declaration-track:6b2a482179ad0047644e7d98ee72a85ca4c1bbb0f819c1d3eb41fc36c4995e90` |
| 3 | `theorem` | [IsHermitian.eq](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-eq--26adfdaeb0ef2656ffbbbcbb.md) | 46 | `result-track:26adfdaeb0ef2656ffbbbcbbc89633fd73c98e8ceb2065a8618708c75528c074` |
| 4 | `theorem` | [IsHermitian.isSelfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-isselfadjoint--e967d9d6b7e4dd38333a2606.md) | 48 | `result-track:e967d9d6b7e4dd38333a2606d08528deb064e74b05b3980813ae4caa53abc372` |
| 5 | `theorem` | [IsHermitian.ext](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-ext--d5bb4dd42d170cd14693e294.md) | 51 | `result-track:d5bb4dd42d170cd14693e294e81dea48abbbc1d7d05da161731806aca0f57873` |
| 6 | `theorem` | [IsHermitian.apply](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-apply--8984c69633f4014465250e09.md) | 54 | `result-track:8984c69633f4014465250e094b8a9e522a699363fe61e471cefe7e6209bb1dd8` |
| 7 | `theorem` | [IsHermitian.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-ext-iff--09a2e0c3e4c18aecbb3930d0.md) | 57 | `result-track:09a2e0c3e4c18aecbb3930d03ff0c1dcc60b9e8fd9b6ccd73ac7b4ea6d26b55b` |
| 8 | `theorem` | [IsHermitian.map](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-map--79d6407047d8a3482241aeac.md) | 61 | `result-track:79d6407047d8a3482241aeac2c48e3ed0cb94500e503695554fa93d930e70f19` |
| 9 | `theorem` | [IsHermitian.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-transpose--a26f6ad265392e2a5a08f464.md) | 65 | `result-track:a26f6ad265392e2a5a08f464951dfb7759868e17438522412b8e7af2d16c67c5` |
| 10 | `theorem` | [isHermitian_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-transpose-iff--c647a14b52b5e9eae0ae39b6.md) | 70 | `result-track:c647a14b52b5e9eae0ae39b6e0331fb44f72112de94b31436b982716659b7150` |
| 11 | `theorem` | [IsHermitian.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-conjtranspose--9ef536e7735c23a6e1019f02.md) | 73 | `result-track:9ef536e7735c23a6e1019f02e517aab1f2f5442b6f2c3383deac8faebea77515` |
| 12 | `theorem` | [IsHermitian.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-submatrix--951187f546ef97be6269d21d.md) | 77 | `result-track:951187f546ef97be6269d21d376f2303cb3dc7363a1adffe812b13a131ae003f` |
| 13 | `theorem` | [isHermitian_submatrix_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-submatrix-equiv--944e72030ff7a039a53fa6ad.md) | 81 | `result-track:944e72030ff7a039a53fa6adf100aa990a786ed498f854319e7f90d4195e30aa` |
| 14 | `theorem` | [isHermitian_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-conjtranspose-iff--a394971136a4042ffc3b3734.md) | 92 | `result-track:a394971136a4042ffc3b3734fed573fe037dd8670c9d73f17b0bf19d8f4f23a9` |
| 15 | `theorem` | [IsHermitian.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-fromblocks--efe4fa3390cb9333cd8097bc.md) | 97 | `result-track:efe4fa3390cb9333cd8097bc99fbb03815ca3a03d57fb960e8a10539b6d32014` |
| 16 | `theorem` | [isHermitian_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-fromblocks-iff--dbc6097427672453216d63a5.md) | 105 | `result-track:dbc6097427672453216d63a59ce06c97560cee1e6c7d98d45362e8cd260e01fa` |
| 17 | `theorem` | [isHermitian_diagonal_of_self_adjoint](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-diagonal-of-self-adjoint--28c66efc5bc21060e9c7d25e.md) | 120 | `result-track:28c66efc5bc21060e9c7d25e7a67a4a6779e6be9e482a28a3dd79ca327c7497a` |
| 18 | `lemma` | [isHermitian_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-diagonal-iff--1daf32176a08b5261111718c.md) | 126 | `result-track:1daf32176a08b5261111718c747325ca41eac40f5330ed3569a74f24b7bb68b3` |
| 19 | `theorem` | [isHermitian_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-diagonal--6e082d12d735a12640767ff6.md) | 133 | `result-track:6e082d12d735a12640767ff607bda3ec7d4d7df9ecd7bdc4d99278db0fa74626` |
| 20 | `theorem` | [isHermitian_zero](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-zero--73167bbf908966c6e1d16d5c.md) | 138 | `result-track:73167bbf908966c6e1d16d5cecb2c9803bf404bd3f33a12edaf11650d75efb18` |
| 21 | `theorem` | [IsHermitian.add](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-add--9cfeb2fa6f9b2d402cd98cf3.md) | 142 | `result-track:9cfeb2fa6f9b2d402cd98cf30faab7a8a218a113f1ec8d310ea98a1beb4ee0e2` |
| 22 | `theorem` | [isHermitian_add_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-add-transpose-self--cb7631fe2f1b5b35bd06547b.md) | 152 | `result-track:cb7631fe2f1b5b35bd06547b420107ffa9add35b4b85f5e8551df23cc246d597` |
| 23 | `theorem` | [isHermitian_transpose_add_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-transpose-add-self--e9177bc7bec1bb908dc5fda3.md) | 155 | `result-track:e9177bc7bec1bb908dc5fda38e015f7f1a65f3e4bdebda80eb431c68cfecace4` |
| 24 | `theorem` | [IsHermitian.neg](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-neg--cae8e543ae01979d8660e256.md) | 165 | `result-track:cae8e543ae01979d8660e25632d25501ba0ae4cdece5108e90fb3c116ad52bd8` |
| 25 | `theorem` | [IsHermitian.sub](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-sub--1927d0afb798e00ffbefcfda.md) | 169 | `result-track:1927d0afb798e00ffbefcfda1c533d08ca22d17259480c77db59ca313bc7c386` |
| 26 | `theorem` | [isHermitian_mul_conjTranspose_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-mul-conjtranspose-self--4238d43ab37e1f59a7022f8f.md) | 180 | `result-track:4238d43ab37e1f59a7022f8f6040a2faa3d57c04cbd3abe178e75847afbf6b3f` |
| 27 | `theorem` | [isHermitian_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-transpose-mul-self--78059096d39e1a5f97dbfe73.md) | 184 | `result-track:78059096d39e1a5f97dbfe73f02fc4d8a2f768ce0518b42024406c4b7500c5ef` |
| 28 | `theorem` | [isHermitian_conjTranspose_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-conjtranspose-mul-mul--6a38050c61a6458f59426a91.md) | 188 | `result-track:6a38050c61a6458f59426a9181bb74fd86b9d0cfca8eb410e20bb56dd580654a` |
| 29 | `theorem` | [isHermitian_mul_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-mul-mul-conjtranspose--dab51c223cbe734aa6c857b4.md) | 193 | `result-track:dab51c223cbe734aa6c857b470d94e265eeeaecd8561b59a1e47e76a3d963b69` |
| 30 | `lemma` | [commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/commute-iff--265b0ed00b5223ee02d7ec86.md) | 197 | `result-track:265b0ed00b5223ee02d7ec8643ab8db6b384a983c199051520c03a7ef0508da2` |
| 31 | `theorem` | [isHermitian_one](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-one--938b1d2d7e4eaf1de8696335.md) | 210 | `result-track:938b1d2d7e4eaf1de8696335520221b8e72d586580cccb68c8c9b23d8acf8575` |
| 32 | `theorem` | [isHermitian_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-natcast--44219587ea5614d1ed50130b.md) | 214 | `result-track:44219587ea5614d1ed50130bcb599d8a4115fb14f1965ca122e76349aef1f7bd` |
| 33 | `theorem` | [IsHermitian.pow](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-pow--3f1c2985b2ac964a4e205309.md) | 217 | `result-track:3f1c2985b2ac964a4e205309bddd490961e97d9608f898e4ecdfa7d0ae501e73` |
| 34 | `theorem` | [isHermitian_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-intcast--a8d21b770e657d6c70c3002b.md) | 226 | `result-track:a8d21b770e657d6c70c3002b43a6253bdf9aa339c80e8c4cd3b1ca7dee44277b` |
| 35 | `theorem` | [IsHermitian.inv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-inv--e3c07bf934c820c4694dd98f.md) | 235 | `result-track:e3c07bf934c820c4694dd98f28d6ee15c5752c00a37e568e8bbbf7ce98697170` |
| 36 | `theorem` | [isHermitian_inv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-inv--527497f8e1e8f143dfbac19e.md) | 239 | `result-track:527497f8e1e8f143dfbac19ef5aee8e5a7f594590654fc346f8d0547d4f75ab1` |
| 37 | `theorem` | [IsHermitian.adjugate](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-adjugate--5a61b76304eef4856b246518.md) | 243 | `result-track:5a61b76304eef4856b246518f8d3232e7da3732adad76d88d7809989558df928` |
| 38 | `theorem` | [IsHermitian.zpow](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-zpow--146186523b77129257f2f6df.md) | 247 | `result-track:146186523b77129257f2f6dfaea4b7ee89c21b87f214c9b3020e7f2dd5f2e9a1` |
| 39 | `theorem` | [IsHermitian.coe_re_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-coe-re-apply-self--f4e92e61d5b4c399e2bbbba1.md) | 261 | `result-track:f4e92e61d5b4c399e2bbbba1bb221ca7ce0b0e65ba7c0a7dbea552f17f506f1c` |
| 40 | `theorem` | [IsHermitian.coe_re_diag](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-coe-re-diag--92c426976604c0d60baa3648.md) | 265 | `result-track:92c426976604c0d60baa3648052a120a539f992ab9ee53538343a48f93326762` |
| 41 | `theorem` | [isHermitian_iff_isSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variantb05aa27e6a1b46dfebb0f85e9bfb9f8c095926eb9788526335c16946f59865a1.lean/declarations/ishermitian-iff-issymmetric--a82c3349aaa4b4a9afa3770e.md) | 270 | `result-track:a82c3349aaa4b4a9afa3770efacb730d74b08d583789564754d92baffa6da14b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
