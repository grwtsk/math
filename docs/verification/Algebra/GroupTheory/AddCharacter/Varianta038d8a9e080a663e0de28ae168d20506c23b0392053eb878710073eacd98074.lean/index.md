# Verification target: GRWTSK.Algebra.GroupTheory.AddCharacter.Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bd64b0593d3a6d9246adfd8c4283255d9d8ea85",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bd64b0593d3a6d9246adfd8c4283255d9d8ea85`.

Source path: `GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [val_mem_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/val-mem-rootsofunity--c97869a622c40eabd67577c3.md) | 50 | `result-track:c97869a622c40eabd67577c30ff9b06e10ecfe1384e02a2acdd908c0b30b1a42` |
| 2 | `def` | [IsPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/isprimitive--deac5d131c8b2aa0c63885f8.md) | 57 | `declaration-track:deac5d131c8b2aa0c63885f85981ca3f0c527b1fda65616af5e1eef749f6c102` |
| 3 | `lemma` | [IsPrimitive.compMulHom_of_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/isprimitive-compmulhom-of-isprimitive--7912fee3dffdb781354a2d2f.md) | 61 | `result-track:7912fee3dffdb781354a2d2f297b03b1b8cecbcff5e129bfb87829c7f3ca6b16` |
| 4 | `theorem` | [to_mulShift_inj_of_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/to-mulshift-inj-of-isprimitive--a13102d5676a709f01552b29.md) | 68 | `result-track:a13102d5676a709f01552b29a11de365a6238790db9637d177b4498928ac2540` |
| 5 | `theorem` | [IsPrimitive.of_ne_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/isprimitive-of-ne-one--0e477ee3c972ad4db70b2825.md) | 80 | `result-track:0e477ee3c972ad4db70b2825279f34cf5a87e134890b89c16d7124aff644b67d` |
| 6 | `lemma` | [not_isPrimitive_mulShift](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/not-isprimitive-mulshift--e8f011410ca63aab7e11afa3.md) | 85 | `result-track:e8f011410ca63aab7e11afa353a2e0e78f8e566c057b01e63cb713122d1866ea` |
| 7 | `structure` | [PrimitiveAddChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/primitiveaddchar--6d1581655ec60b49477c5a54.md) | 95 | `declaration-track:6d1581655ec60b49477c5a54a3a3bde605a66401711893dc60959f7a9678369b` |
| 8 | `lemma` | [exists_divisor_of_not_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/exists-divisor-of-not-isprimitive--87143aa301b65919c1bf3d13.md) | 112 | `result-track:87143aa301b65919c1bf3d13820698fa407e977d339bc3109aca0287447832c4` |
| 9 | `def` | [zmodChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmodchar--f6e47657b7e8cc9d606972c1.md) | 134 | `declaration-track:f6e47657b7e8cc9d606972c164fba3bf9b7e7af109721428875d96d8d95ee940` |
| 10 | `theorem` | [zmodChar_apply](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmodchar-apply--03dad00f95d5b506c56779ec.md) | 140 | `result-track:03dad00f95d5b506c56779ec60fd80924cfdd7ef9acb26d03cdef27812abf23e` |
| 11 | `theorem` | [zmodChar_apply'](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmodchar-apply--00ad4b535cfa6a74f78f2e36.md) | 144 | `result-track:00ad4b535cfa6a74f78f2e36e0b2b111d4498ce0a11cc5b359ba17320b22ecaf` |
| 12 | `theorem` | [zmod_char_ne_one_iff](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmod-char-ne-one-iff--e420dfc7643a9bfde9596905.md) | 151 | `result-track:e420dfc7643a9bfde9596905e9f437ef4a71694a29cc61403c9d61610611aa89` |
| 13 | `theorem` | [IsPrimitive.zmod_char_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/isprimitive-zmod-char-eq-one-iff--cf140281205305395080a76f.md) | 161 | `result-track:cf140281205305395080a76f52341a6e9df87fa67fa237652932d99d6adf9926` |
| 14 | `theorem` | [zmod_char_primitive_of_eq_one_only_at_zero](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmod-char-primitive-of-eq-one-only-at-zero--08fc8c7c3a3ffce7f0a2fc05.md) | 169 | `result-track:08fc8c7c3a3ffce7f0a2fc059e3db094082a4900becadf6775509bec91dcf446` |
| 15 | `theorem` | [zmodChar_primitive_of_primitive_root](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/zmodchar-primitive-of-primitive-root--c82bdd29ab340a105670cca0.md) | 179 | `result-track:c82bdd29ab340a105670cca0c67ceb1a4016eab678cf1759962a853cc104332d` |
| 16 | `def` | [primitiveZModChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/primitivezmodchar--eadbf997dd1660aa932c79f5.md) | 188 | `declaration-track:eadbf997dd1660aa932c79f5dfdb9e01ccb69b14d285a62db708f3169579ed35` |
| 17 | `def` | [FiniteField.primitiveChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/finitefield-primitivechar--00c04e43c4678af67e4748de.md) | 207 | `declaration-track:00c04e43c4678af67e4748de14729481d6090281539ffb935a09588d31152613` |
| 18 | `theorem` | [sum_eq_zero_of_ne_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/sum-eq-zero-of-ne-one--1d9703387439a567461cb4f3.md) | 236 | `result-track:1d9703387439a567461cb4f3b282858aa306b19b348bb124600047321fc6b4f7` |
| 19 | `theorem` | [sum_eq_card_of_eq_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/sum-eq-card-of-eq-one--8c48ecf8ae11aa71a9221497.md) | 246 | `result-track:8c48ecf8ae11aa71a92214975c2cc3069e135f77f8e0e70cc111192295670f74` |
| 20 | `theorem` | [sum_mulShift](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/sum-mulshift--8aa74984483695938e3b1c3b.md) | 253 | `result-track:8aa74984483695938e3b1c3b35dcaafa4d35ca9c80406cd4b75e592b1c6eb9ee` |
| 21 | `lemma` | [starComp_eq_inv](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/starcomp-eq-inv--09cb13a215386cfd6e706d6d.md) | 274 | `result-track:09cb13a215386cfd6e706d6d863147aca4c1d2765d31b7352f81058344ffeb54` |
| 22 | `lemma` | [starComp_apply](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/starcomp-apply--b06fa6ab45af23b935a987a5.md) | 282 | `result-track:b06fa6ab45af23b935a987a552b5cdc496b0cfd0afe0e78c121eb75fe2721d3c` |
| 23 | `lemma` | [ringChar_ne](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/ringchar-ne--0a4ecfc203f36ec0aec21294.md) | 293 | `result-track:0a4ecfc203f36ec0aec21294a395fc6a91ff79896e1f653dd8ab1f76be3b141a` |
| 24 | `def` | [FiniteField.primitiveChar_to_Complex](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/finitefield-primitivechar-to-complex--91129b63667170490faa3fc1.md) | 297 | `declaration-track:91129b63667170490faa3fc19fb7306cdceeb3d12fec57b91d961023e2c7cf5b` |
| 25 | `lemma` | [FiniteField.primitiveChar_to_Complex_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/declarations/finitefield-primitivechar-to-complex-isprimitive--d7379d7657691a98ec2ba7df.md) | 301 | `result-track:d7379d7657691a98ec2ba7df9a1cd579746d1cb668abf4da8c068fcac6114125` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
