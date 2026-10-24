# Verification target: GRWTSK.Algebra.GroupTheory.AddCharacter.Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "662110ff9188a0f32e66e48f25cb84054e8f30cd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `662110ff9188a0f32e66e48f25cb84054e8f30cd`.

Source path: `GRWTSK/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Cyclotomic.PrimitiveRoots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Units` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [val_mem_rootsOfUnity](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/val-mem-rootsofunity--b381515292ed3bf91864a8eb.md) | 58 | `result-track:b381515292ed3bf91864a8ebc8cfcd65442c11ff04a4ff502dc67983a6af0e6f` |
| 2 | `def` | [IsPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/isprimitive--e8821989cbf09ad2d25d920d.md) | 65 | `declaration-track:e8821989cbf09ad2d25d920d6c8ccb0246be09a43a42e151b7db3242f8bb9701` |
| 3 | `lemma` | [IsPrimitive.compMulHom_of_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/isprimitive-compmulhom-of-isprimitive--3a0f18354c2bd0851bee7108.md) | 69 | `result-track:3a0f18354c2bd0851bee71080cca28363574ecd1da1fe56a19fd291ff1b36375` |
| 4 | `theorem` | [to_mulShift_inj_of_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/to-mulshift-inj-of-isprimitive--c977cc71999af9400f3e576a.md) | 76 | `result-track:c977cc71999af9400f3e576afe0c8d9076a9c698b4a2be2cb442dc8ee0ead97a` |
| 5 | `theorem` | [IsPrimitive.of_ne_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/isprimitive-of-ne-one--cff3aee60d205d0d5ef9e35e.md) | 88 | `result-track:cff3aee60d205d0d5ef9e35e487451dbdd9e8e14e3e33fbeca5c98fcd0706d98` |
| 6 | `lemma` | [not_isPrimitive_mulShift](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/not-isprimitive-mulshift--14d42b8f41d7535b4e759912.md) | 93 | `result-track:14d42b8f41d7535b4e75991299562889fea858e1aa189aecd5fec1424651a8e6` |
| 7 | `structure` | [PrimitiveAddChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/primitiveaddchar--2f34bbeebad4e60581909bdc.md) | 103 | `declaration-track:2f34bbeebad4e60581909bdc05c8d91ef894463d8311e2a28fd51ac499c4fd76` |
| 8 | `lemma` | [exists_divisor_of_not_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/exists-divisor-of-not-isprimitive--f20cabea81bd9265955d6a00.md) | 120 | `result-track:f20cabea81bd9265955d6a005f9c01bd4a6e9f83a683da05a35ee86439e887f8` |
| 9 | `def` | [zmodChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmodchar--9cd78721e00e733847554c90.md) | 142 | `declaration-track:9cd78721e00e733847554c90d5f761065c415e8b5ddc33e831b4c44deb4d830b` |
| 10 | `theorem` | [zmodChar_apply](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmodchar-apply--4266c26ed9ba2f8dcc664d9e.md) | 148 | `result-track:4266c26ed9ba2f8dcc664d9eee21d3eda325d3208b004578e72a02bbdbff93de` |
| 11 | `theorem` | [zmodChar_apply'](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmodchar-apply--aecbacdf779e9e1b69b65bc5.md) | 152 | `result-track:aecbacdf779e9e1b69b65bc5abdcc681dd0606c71cf093fd4c91279a72264612` |
| 12 | `theorem` | [zmod_char_ne_one_iff](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmod-char-ne-one-iff--086549cdd4212c789d932f25.md) | 159 | `result-track:086549cdd4212c789d932f25b01d810f90aaa62d8d167dbbcbd50d8cce4c9b2f` |
| 13 | `theorem` | [IsPrimitive.zmod_char_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/isprimitive-zmod-char-eq-one-iff--d28ee02c4452bb02a1d0abfd.md) | 169 | `result-track:d28ee02c4452bb02a1d0abfd6c2314a4240f1af8453c7875ad3a213697df2982` |
| 14 | `theorem` | [zmod_char_primitive_of_eq_one_only_at_zero](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmod-char-primitive-of-eq-one-only-at-zero--ab5b4613514bbc15a03e7d52.md) | 177 | `result-track:ab5b4613514bbc15a03e7d52c6b3748c741e06b63559c77a9078c0d66a1de61c` |
| 15 | `theorem` | [zmodChar_primitive_of_primitive_root](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/zmodchar-primitive-of-primitive-root--43ed387978a07d9a829084f5.md) | 187 | `result-track:43ed387978a07d9a829084f5eddc0caf45e3b7c2ace16dcc678ad3370f0cb94c` |
| 16 | `def` | [primitiveZModChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/primitivezmodchar--83a5f0a344b72a69e7aed431.md) | 196 | `declaration-track:83a5f0a344b72a69e7aed4318ff3b81c1a40f5f17def012ede523fce1a21a881` |
| 17 | `def` | [FiniteField.primitiveChar](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/finitefield-primitivechar--fb1c7821b979289f0c8a809f.md) | 215 | `declaration-track:fb1c7821b979289f0c8a809f1cfef6def53734b5c849eb885270b4d1befb6455` |
| 18 | `theorem` | [sum_eq_zero_of_ne_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/sum-eq-zero-of-ne-one--84adfc219a1e229675a346e6.md) | 244 | `result-track:84adfc219a1e229675a346e662aa663ca0c7c148ee05dd0c30caa28e6426bc33` |
| 19 | `theorem` | [sum_eq_card_of_eq_one](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/sum-eq-card-of-eq-one--8ec35c8d9139a7eb6c23f9ce.md) | 254 | `result-track:8ec35c8d9139a7eb6c23f9cef7c589b8f0f33cb93f8a878ec5b2ac22a009fc66` |
| 20 | `theorem` | [sum_mulShift](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/sum-mulshift--30992b65dd3dda227c8d4f99.md) | 261 | `result-track:30992b65dd3dda227c8d4f996afc19ff57a8a088cb796e34c1148231f2c160e8` |
| 21 | `lemma` | [starComp_eq_inv](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/starcomp-eq-inv--b7e8d2a97357addc73cd5200.md) | 282 | `result-track:b7e8d2a97357addc73cd52004e29f26dd39a7c166c999c284c1528ebcb1763b6` |
| 22 | `lemma` | [starComp_apply](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/starcomp-apply--e264814240165e8a58822e6b.md) | 290 | `result-track:e264814240165e8a58822e6bb495da90f073664e3c8f3c8e954968401c2d2c7f` |
| 23 | `lemma` | [ringChar_ne](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/ringchar-ne--dbeaf3736d4bb7f86aeb0526.md) | 301 | `result-track:dbeaf3736d4bb7f86aeb052668239244d3dabdaa37ac9f503570f24254ec47c3` |
| 24 | `def` | [FiniteField.primitiveChar_to_Complex](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/finitefield-primitivechar-to-complex--9d3e2fd285a18b59d1568391.md) | 305 | `declaration-track:9d3e2fd285a18b59d1568391c0098b8f0be8db6513b7dcd5b6c44f6583a74f77` |
| 25 | `lemma` | [FiniteField.primitiveChar_to_Complex_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/AddCharacter/Variant402edcf2b082d6c2761cee4cc0ee6f4b30f81046d80acc403e21fe373cae120f.lean/declarations/finitefield-primitivechar-to-complex-isprimitive--2f4823faa64770cf0db3c98e.md) | 309 | `result-track:2f4823faa64770cf0db3c98ee9feca5cb1483f268e068ea773064cc09d56dcc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
