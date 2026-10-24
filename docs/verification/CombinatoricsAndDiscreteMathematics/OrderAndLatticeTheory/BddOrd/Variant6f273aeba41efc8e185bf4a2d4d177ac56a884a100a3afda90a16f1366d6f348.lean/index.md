# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddOrd.Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "327378ffda223234e87b5281144a2d776df8bdb5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `327378ffda223234e87b5281144a2d776df8bdb5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Bipointed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Bounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/bddord--a16e1df3566b5c9aee29f043.md) | 30 | `declaration-track:a16e1df3566b5c9aee29f0437c0a45be281728157700f267b2acbdd0ccf93662` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/instance--291b937850ed3227fc81330f.md) | 42 | `declaration-track:291b937850ed3227fc81330f8227f25c9b3fc38dac1e5bf2b04e9c173534c2cd` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/of--7a38b309470b034358713c55.md) | 46 | `declaration-track:7a38b309470b034358713c55c254526ae36e9e7ad353080d1c671ccf59613a6a` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom--0300ac684f086f55cf24e357.md) | 51 | `declaration-track:0300ac684f086f55cf24e357cce320a2d4ac46421932a4cd088618121804cba6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/instance--4886d7ef6f84008c6104fa85.md) | 56 | `declaration-track:4886d7ef6f84008c6104fa85afe867518390af594c0d3423292bc8250d96a754` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/instance--c45917251df1d8161749227f.md) | 61 | `declaration-track:c45917251df1d8161749227f63df77a07e0d5ebcbcbf21e58ba29f15c2a0aba7` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-hom--b99e46a38bf2501a585a5466.md) | 66 | `declaration-track:b99e46a38bf2501a585a5466b5e37c745b6aef4240010d5b6e6a653709b45a34` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ofhom--e43517484021382ec9194fe6.md) | 70 | `declaration-track:e43517484021382ec9194fe63a990e4b2e3bb5242a4ed5c1a7bbeb3e9a2c3e4f` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-simps-hom--dbd780b803eb341ca8b7c3da.md) | 76 | `declaration-track:dbd780b803eb341ca8b7c3dabde258f54b8e4d462d8fcddea95a33e496726b1f` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/coe-id--3f04ada8bac53904eb12fd08.md) | 86 | `result-track:3f04ada8bac53904eb12fd087419cd9408dfe99dfb550cee1c9fac08607e1f21` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/coe-comp--721814c6dc132de32c268fe3.md) | 89 | `result-track:721814c6dc132de32c268fe3ff003cb00081d02893038a3297c8599aeaf0d45a` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/forget-map--90c0cd6997096ac9bd93e352.md) | 92 | `result-track:90c0cd6997096ac9bd93e3527ad37b0f90b3d79a0a3351f3d9cc34e6a8241334` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ext--bb5297cbb1403a9c68d6e1e8.md) | 96 | `result-track:bb5297cbb1403a9c68d6e1e8df6e2272466607eb2551ae7547ca20231233e79d` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/coe-of--28929e2518a715948e89a733.md) | 100 | `result-track:28929e2518a715948e89a733c7d194947804d9ae1ec6126e0c5b84151837c056` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-id--9cd6c713564bf1d0b18de934.md) | 103 | `result-track:9cd6c713564bf1d0b18de93427725c7f81dda141d8bbb5b50fba065b265fe597` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/id-apply--7983f1bb41c56b952e4fc3c0.md) | 106 | `result-track:7983f1bb41c56b952e4fc3c05ddf36b01e9bbf5be03f340964fc88baa46ba871` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-comp--4ac7342c14999ab262046485.md) | 110 | `result-track:4ac7342c14999ab262046485fa0060644320d5648ff9f40996825507116d1c60` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/comp-apply--1a3e728da425f3754f235128.md) | 114 | `result-track:1a3e728da425f3754f235128d426e01da73f42bda6f8f7b910551d9d31a79e62` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-ext--a5176fc64f5fdfbce3a1960d.md) | 118 | `result-track:a5176fc64f5fdfbce3a1960dd3e8e105f758e66fe9bbe039f8d50f6ad4004e9f` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-ofhom--dae8d166dd3cc700f8c85d53.md) | 122 | `result-track:dae8d166dd3cc700f8c85d534838bfb82c655bca473e85a3d661ea379053992d` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ofhom-hom--b254167a778f19f20a2ab42f.md) | 127 | `result-track:b254167a778f19f20a2ab42f9d47d1f64f2f8d2f57020cf8311f602fa204ec7c` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ofhom-id--6a801956d987b41efcbf8506.md) | 131 | `result-track:6a801956d987b41efcbf8506d7a38c737ff0bedf29a399278c5aa8566f8c31cf` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ofhom-comp--35add099df7a11f4edc72cde.md) | 135 | `result-track:35add099df7a11f4edc72cde195734cd3010412e434701753aaf50168cb243a3` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/ofhom-apply--14b38b4f3296eb5e461634c2.md) | 141 | `result-track:14b38b4f3296eb5e461634c2596ced2231ff837d00039a64df402ed052d621a4` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/inv-hom-apply--107cd15622491f6ab5d846ca.md) | 145 | `result-track:107cd15622491f6ab5d846cad03a9b8effebbfa1bb2c1aa6c29b940fad1a95f4` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hom-inv-apply--8d2e1e45b307d883c6b2d3ad.md) | 148 | `result-track:8d2e1e45b307d883c6b2d3ad29f1c058b318ca4d826872a0af9989fd92eeac39` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/instance--0b125db06b5fa9f0b53d3729.md) | 151 | `declaration-track:0b125db06b5fa9f0b53d37293b053e2eb4e81497ca4b3ebade910bc111aeffe9` |
| 28 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hasforgettopartord--296dd4f639e23f47e0576cc8.md) | 154 | `declaration-track:296dd4f639e23f47e0576cc8c7fddb7e2c438daf9d119d5683051d3509eaf248` |
| 29 | `instance` | [hasForgetToBipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/hasforgettobipointed--a167409e5c64eed93c7653da.md) | 158 | `declaration-track:a167409e5c64eed93c7653da2c053d11639062f3599e9918639c3999f85a7145` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/dual--8816b0fb383b9fec07b6486c.md) | 166 | `declaration-track:8816b0fb383b9fec07b6486c1777626fef4701f8cb151b78ac16ed0f3fae1001` |
| 31 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/iso-mk--e45b810cf5f6f3462693c526.md) | 172 | `declaration-track:e45b810cf5f6f3462693c526b6e8174c1c3061e83d0326ad2199415bcae410fa` |
| 32 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/dualequiv--6b30d38ea3c870c881187086.md) | 180 | `declaration-track:6b30d38ea3c870c8811870865cd8aaacf570666a3a921d66af784cdb903fe0d1` |
| 33 | `theorem` | [bddOrd_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/bddord-dual-comp-forget-to-partord--4c35d26e4531fc69206b954b.md) | 188 | `result-track:4c35d26e4531fc69206b954bf83fc41bb33f3f1facce34cf9fae62c59d3153ef` |
| 34 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean/declarations/bddord-dual-comp-forget-to-bipointed--5095171244dc5b677d74a769.md) | 193 | `result-track:5095171244dc5b677d74a769e3afc0c44ae0f64d9f29966e6f102bcf7eea1dd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
