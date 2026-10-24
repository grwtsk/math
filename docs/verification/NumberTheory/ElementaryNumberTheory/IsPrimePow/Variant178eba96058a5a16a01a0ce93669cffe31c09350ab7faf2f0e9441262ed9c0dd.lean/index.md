# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.IsPrimePow.Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de84acbd4d8ce5f447b3ab23a15a592c2321cb9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de84acbd4d8ce5f447b3ab23a15a592c2321cb9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow--feba8eae8ac9d78163d23872.md) | 29 | `declaration-track:feba8eae8ac9d78163d238725aa13031fa0d5b15f9fdd3583b37de9afd72affe` |
| 2 | `theorem` | [isPrimePow_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-def--ee0f1d041d2ee9a1597f8d2a.md) | 32 | `result-track:ee0f1d041d2ee9a1597f8d2a1538334f9fc7093fa48214f9a7d34b9af2a5eede` |
| 3 | `theorem` | [isPrimePow_iff_pow_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-iff-pow-succ--212af1970c527c59e45f3ed8.md) | 37 | `result-track:212af1970c527c59e45f3ed86f5338447e3487e27481332314e13858a2abb436` |
| 4 | `theorem` | [not_isPrimePow_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/not-isprimepow-zero--3c58a7ad53d476c633d71a89.md) | 42 | `result-track:3c58a7ad53d476c633d71a894b95544680df19c539818b6ee16718b5e50fdb10` |
| 5 | `theorem` | [IsPrimePow.not_unit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-not-unit--1af62891a5a142af3626e06d.md) | 48 | `result-track:1af62891a5a142af3626e06db8a4093e3a68c29e2a97bf58c98b99e9de7e1ddc` |
| 6 | `theorem` | [IsUnit.not_isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isunit-not-isprimepow--efe155e77250edc5619e622a.md) | 52 | `result-track:efe155e77250edc5619e622a787ce72710b3332ae2181c9d9524d8bc333c9d1b` |
| 7 | `theorem` | [not_isPrimePow_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/not-isprimepow-one--bc663138747b057be23e2f31.md) | 54 | `result-track:bc663138747b057be23e2f3114d664707892cadbca73ec9974cc0977c8ccc41f` |
| 8 | `theorem` | [Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/prime-isprimepow--c80532cec4548d2a78c046ed.md) | 57 | `result-track:c80532cec4548d2a78c046edd7cac8ac3c4cb601f6ce18bc1c24a00a53c7a12b` |
| 9 | `theorem` | [IsPrimePow.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-pow--5e99836cc696389a6c5abdb2.md) | 60 | `result-track:5e99836cc696389a6c5abdb282460fdfa4ca1915e487958b91ac5fb78419dd62` |
| 10 | `theorem` | [IsPrimePow.ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-ne-zero--bee950b67ae2d2fe3894eb6f.md) | 64 | `result-track:bee950b67ae2d2fe3894eb6f175da633c4e9a489a117be4afc2d003f5f919cca` |
| 11 | `theorem` | [IsPrimePow.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-ne-one--dde33ae8ff2bfe482f8781b5.md) | 67 | `result-track:dde33ae8ff2bfe482f8781b519ba5e13d0f42a5a4ac3a634cbd7c15da0fe2efb` |
| 12 | `theorem` | [isPrimePow_nat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-nat-iff--9eacc8b6b04981a904ee8d8a.md) | 72 | `result-track:9eacc8b6b04981a904ee8d8a66289dba1cb05f46060883fcca217b6f9ab4827b` |
| 13 | `theorem` | [Nat.Prime.isPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/nat-prime-isprimepow--bc2cb35d5954262ff917edc9.md) | 75 | `result-track:bc2cb35d5954262ff917edc908193c26517da7efa0df9c981d91964fcdeeca64` |
| 14 | `theorem` | [isPrimePow_nat_iff_bounded](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-nat-iff-bounded--9efc932aca56bc68b58cb26e.md) | 78 | `result-track:9efc932aca56bc68b58cb26ee1ff4062c2d9e9adcfc01cb9d5bc98f8974c0f36` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/instance--6fe96eec179fd67469933603.md) | 87 | `declaration-track:6fe96eec179fd67469933603de760f084a6cdaebba8d7f11833235d4e349bdaf` |
| 16 | `theorem` | [IsPrimePow.dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-dvd--29a571f4b0f69521d7477bec.md) | 90 | `result-track:29a571f4b0f69521d7477beca343c7cdc6c72e5adc7ed803431b5ba9040f1d61` |
| 17 | `theorem` | [IsPrimePow.two_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-two-le--5b2d4a1120a171f2bf1bb741.md) | 99 | `result-track:5b2d4a1120a171f2bf1bb74195f8a15996f2330ecc8580ab0ea70b28c9ca9da3` |
| 18 | `theorem` | [IsPrimePow.pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-pos--b4471020c4afb83b00ed1123.md) | 104 | `result-track:b4471020c4afb83b00ed112339bf5c9621db6d375d68f70edaf26c86600884cc` |
| 19 | `theorem` | [IsPrimePow.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/IsPrimePow/Variant178eba96058a5a16a01a0ce93669cffe31c09350ab7faf2f0e9441262ed9c0dd.lean/declarations/isprimepow-one-lt--cd972af3d0c5262a87c66206.md) | 107 | `result-track:cd972af3d0c5262a87c6620636ea6ee75a7fd6d885dcd0031cdbfe7ef096ca53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
