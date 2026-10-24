# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Compare.Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d701990484110353ca7fcf734723a1416f12f831",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d701990484110353ca7fcf734723a1416f12f831`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Ordering.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Synonym` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cmpLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmple--5c61369c7a032cd2c2afdeed.md) | 28 | `declaration-track:5c61369c7a032cd2c2afdeedc6fe8bedc3f9ff3319ce4c3a4489789681b981c0` |
| 2 | `theorem` | [cmpLE_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmple-swap--8e16e0b7b555f89ab638304b.md) | 31 | `result-track:8e16e0b7b555f89ab638304b21fa45cd16a775be821d73ef8e1c2b0410bf183d` |
| 3 | `theorem` | [cmpLE_eq_cmp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmple-eq-cmp--0c07de3f31cf5ef753045222.md) | 36 | `result-track:0c07de3f31cf5ef75304522271bed39118b64fd4375037a244b24159a4b1060d` |
| 4 | `theorem` | [compares_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-swap--0e2c60b394a45c50865a5297.md) | 43 | `result-track:0e2c60b394a45c50865a529789a5d860f3b15c4c76e90fc9b8d6b798f5545555` |
| 5 | `theorem` | [swap_eq_iff_eq_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/swap-eq-iff-eq-swap--dfaa2bb28c329b9a656b6df1.md) | 51 | `result-track:dfaa2bb28c329b9a656b6df17a979463cce495a0c6dede40f06446cc97499a93` |
| 6 | `theorem` | [Compares.eq_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-eq-lt--91fd0b66c1be0323046c7999.md) | 54 | `result-track:91fd0b66c1be0323046c7999a3039acad8e3e6ff7ea5c243be413e4fff17e6ea` |
| 7 | `theorem` | [Compares.ne_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-ne-lt--e0331b47880e728a59dd96c9.md) | 59 | `result-track:e0331b47880e728a59dd96c9b17063283681262cef66a822e11a479da5e1e5a7` |
| 8 | `theorem` | [Compares.eq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-eq-eq--3d2912849e35ff350011a785.md) | 64 | `result-track:3d2912849e35ff350011a785df99ed4ba8e90f23b7cd5217c2369816d4ed726a` |
| 9 | `theorem` | [Compares.eq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-eq-gt--8bb6efafe1d88bfe7bf9ec04.md) | 69 | `result-track:8bb6efafe1d88bfe7bf9ec040653e276a9eceaa7f2d2f61f274bbf51db383399` |
| 10 | `theorem` | [Compares.ne_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-ne-gt--c60fc0c0e744da61f83f9bdb.md) | 72 | `result-track:c60fc0c0e744da61f83f9bdb7d6e74bd5a3cf4120bb73ebc9ee619ef26ca1de5` |
| 11 | `theorem` | [Compares.le_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-le-total--e20e58699b5215b7f9d3dadb.md) | 75 | `result-track:e20e58699b5215b7f9d3dadb970299635fb4ec0a56d72f8de78dd1e88b4c307a` |
| 12 | `theorem` | [Compares.le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-le-antisymm--6adeeb7a5248f46cab017494.md) | 80 | `result-track:6adeeb7a5248f46cab017494358af7b1e0a98d3f6187ead62f6e69c14771a530` |
| 13 | `theorem` | [Compares.inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-inj--e30255e3154ecc90ce444b58.md) | 85 | `result-track:e30255e3154ecc90ce444b584df3d0747dc76800dcc4f45a33749b52e312839f` |
| 14 | `theorem` | [compares_iff_of_compares_impl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/compares-iff-of-compares-impl--b6dde2f31c30d885f511de65.md) | 91 | `result-track:b6dde2f31c30d885f511de65d6cd373e4dc0473a96ee37e9017761e41fb9568f` |
| 15 | `theorem` | [toDual_compares_toDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/todual-compares-todual--2473b3117c69278d06999483.md) | 107 | `result-track:2473b3117c69278d0699948332d454fbee90c344c439cf0b7c76986df3c3ed85` |
| 16 | `theorem` | [ofDual_compares_ofDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/ofdual-compares-ofdual--dd3f70824b852e851879f1c4.md) | 113 | `result-track:dd3f70824b852e851879f1c49191754115c20ce0dc7028f0b1d83c371851951b` |
| 17 | `theorem` | [cmp_compares](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-compares--b3026abb71cfba45d31e1537.md) | 118 | `result-track:b3026abb71cfba45d31e1537117821cbb64694dc7dda94ae20677cb0d7798aa3` |
| 18 | `theorem` | [Ordering.Compares.cmp_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/ordering-compares-cmp-eq--02c4f04e8007dc6dec802965.md) | 121 | `result-track:02c4f04e8007dc6dec80296590564ac47ccbc316b67f9a313170fcb1f06f8f13` |
| 19 | `theorem` | [cmp_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-swap--ddb60849b75979848bbb4836.md) | 126 | `result-track:ddb60849b75979848bbb4836ad34183af6751268a210778e02f19894ff46c014` |
| 20 | `theorem` | [cmpLE_toDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmple-todual--921c991fdba1bd9d1b068b93.md) | 132 | `result-track:921c991fdba1bd9d1b068b9364a6bd05f6351fdae14af34c4ab15ac2e204629f` |
| 21 | `theorem` | [cmpLE_ofDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmple-ofdual--153ca90ebd039c68879c3788.md) | 136 | `result-track:153ca90ebd039c68879c37880375994b0c2ef2ba715a915683d5be915acc09da` |
| 22 | `theorem` | [cmp_toDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-todual--86c723c79e876b5d60ef1656.md) | 140 | `result-track:86c723c79e876b5d60ef16565289c90eb3230f84e850e19d4b5976179eb9cb48` |
| 23 | `theorem` | [cmp_ofDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-ofdual--c23b0e4f645669b151b3dbda.md) | 144 | `result-track:c23b0e4f645669b151b3dbdaf569e8b84a9b5ec0a5f92e9d65143d73565c5b46` |
| 24 | `def` | [linearOrderOfCompares](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/linearorderofcompares--efe7b3b27e74b397c52fb677.md) | 148 | `declaration-track:efe7b3b27e74b397c52fb677a1ff41b7ccf7b6d8b4274115ffb0d7cc254dfa91` |
| 25 | `theorem` | [cmp_eq_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-eq-lt-iff--7b36aa6cb3344e1169369af2.md) | 163 | `result-track:7b36aa6cb3344e1169369af2d76ba563b6a685ca4003269359da1544dd1f9c1b` |
| 26 | `theorem` | [cmp_eq_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-eq-eq-iff--a150c1e0297f41dc16170dd8.md) | 167 | `result-track:a150c1e0297f41dc16170dd85ca251cbb342d846eeeefec780a6d918f4e99eba` |
| 27 | `theorem` | [cmp_eq_gt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-eq-gt-iff--b001df5051c46147dd3beca9.md) | 171 | `result-track:b001df5051c46147dd3beca90d9d88ed836dbc2e7ae9c4f08323ef9ff5869c1f` |
| 28 | `theorem` | [cmp_self_eq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-self-eq-eq--5df8de2b50c599da01c79f7b.md) | 175 | `result-track:5df8de2b50c599da01c79f7b586754fddade23b38bf447ef5db59620ca545525` |
| 29 | `theorem` | [cmp_eq_cmp_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/cmp-eq-cmp-symm--c9a0bc4cc0e0461c51bdea9b.md) | 179 | `result-track:c9a0bc4cc0e0461c51bdea9b0f3a44a8883b05381c181689d8f86b63f6368a1f` |
| 30 | `theorem` | [lt_iff_lt_of_cmp_eq_cmp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/lt-iff-lt-of-cmp-eq-cmp--4362a25a76a3a6f9281832c1.md) | 183 | `result-track:4362a25a76a3a6f9281832c19abfdd9bdba23c20b8b9ccebee47251dc6451991` |
| 31 | `theorem` | [le_iff_le_of_cmp_eq_cmp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/le-iff-le-of-cmp-eq-cmp--fa21c50802e466367b32749a.md) | 186 | `result-track:fa21c50802e466367b32749afa0de3aa3f9a5b3d4828ba49927e11adfde15d1f` |
| 32 | `theorem` | [eq_iff_eq_of_cmp_eq_cmp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/eq-iff-eq-of-cmp-eq-cmp--31666b26180844c063dda133.md) | 192 | `result-track:31666b26180844c063dda133dc3363936a171b4a74a27cc1b50c36300a22d21d` |
| 33 | `theorem` | [LT.lt.cmp_eq_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/lt-lt-cmp-eq-lt--71332cafaa69242394888520.md) | 196 | `result-track:71332cafaa692423948885204786beef6ef72d889e1cb90154b98fb1e10ae65d` |
| 34 | `theorem` | [LT.lt.cmp_eq_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/lt-lt-cmp-eq-gt--7ff0e91135c00e599eeef0b4.md) | 199 | `result-track:7ff0e91135c00e599eeef0b461503ed6549746ec8228bee39a96f6daea0a02ea` |
| 35 | `theorem` | [Eq.cmp_eq_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/eq-cmp-eq-eq--7676d7bf9fc279439f748883.md) | 202 | `result-track:7676d7bf9fc279439f74888375df76d7f7a44e34602d41d99c1b916f619bf0d2` |
| 36 | `theorem` | [Eq.cmp_eq_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variant5ccc56119ea829809c8f5c0e73987e11ac16938653dac77391190dfef695e099.lean/declarations/eq-cmp-eq-eq--8292df2013fee0c7f70b8510.md) | 205 | `result-track:8292df2013fee0c7f70b8510e58922c60e7d3bcb59a7aedd94c1b59fe37fd12a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
