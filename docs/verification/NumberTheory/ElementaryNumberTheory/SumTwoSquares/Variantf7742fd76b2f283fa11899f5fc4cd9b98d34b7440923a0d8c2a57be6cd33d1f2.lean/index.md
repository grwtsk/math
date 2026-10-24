# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SumTwoSquares.Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a88c53e302d526422d755e1ac3cb350e6b67047`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Squarefree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Zsqrtd.QuadraticReciprocity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.Prime.sq_add_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-prime-sq-add-sq--ad7b169a5bd40bab8fa59af6.md) | 31 | `result-track:ad7b169a5bd40bab8fa59af695d1b2503aa3bf01aa2a065ac395becbaa91f20c` |
| 2 | `theorem` | [sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/sq-add-sq-mul--05eb12a4a531dc9a8014d764.md) | 47 | `result-track:05eb12a4a531dc9a8014d7649f366b468471a26904c47fbee3570d808c5391a8` |
| 3 | `theorem` | [Nat.sq_add_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-sq-add-sq-mul--fdacef63f812db6e9b45add2.md) | 52 | `result-track:fdacef63f812db6e9b45add2c1d304fbe2eec6a16e246d76ef5dd5916c52f22a` |
| 4 | `theorem` | [ZMod.isSquare_neg_one_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-of-dvd--369b510bd938352badf83234.md) | 72 | `result-track:369b510bd938352badf83234e5034766b7a390b5309a51962505f00cda86c2f8` |
| 5 | `theorem` | [ZMod.isSquare_neg_one_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-mul--af88f47f710f6e6b7856cd10.md) | 80 | `result-track:af88f47f710f6e6b7856cd10842dad4a0e3f58b29a2300da7d21a105554cf5a2` |
| 6 | `theorem` | [Nat.Prime.mod_four_ne_three_of_dvd_isSquare_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-prime-mod-four-ne-three-of-dvd-issquare-neg-one--2dca4f02cb020366b457b56e.md) | 91 | `result-track:2dca4f02cb020366b457b56e7f355a97575304511ba57047ef6cfcc782df2faa` |
| 7 | `theorem` | [ZMod.isSquare_neg_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-iff--080033f339a8bf9ffcc5b1aa.md) | 100 | `result-track:080033f339a8bf9ffcc5b1aa2c3a081b51d84bae117b90746c1d60ae56c1a579` |
| 8 | `theorem` | [ZMod.isSquare_neg_one_iff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-iff--05998b52c146cf2b434379ff.md) | 117 | `result-track:05998b52c146cf2b434379ff4f6e11034983ac5c5f2f9615584b853d52624acf` |
| 9 | `theorem` | [Nat.eq_sq_add_sq_of_isSquare_mod_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-eq-sq-add-sq-of-issquare-mod-neg-one--b24ed99a7945c9effd779104.md) | 138 | `result-track:b24ed99a7945c9effd779104708415a7807933113ceb47bb6a5b35dd55178029` |
| 10 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_isCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-iscoprime--f81719285734e00fabb23113.md) | 152 | `result-track:f81719285734e00fabb23113a255b6c0b69be2ee1786cee3abf506415c27c9a3` |
| 11 | `theorem` | [ZMod.isSquare_neg_one_of_eq_sq_add_sq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/zmod-issquare-neg-one-of-eq-sq-add-sq-of-coprime--0b4c500c598b8bf93b49821b.md) | 167 | `result-track:0b4c500c598b8bf93b49821ba995408679e0d53470df1637169c62fd1c551108` |
| 12 | `theorem` | [Nat.eq_sq_add_sq_iff_eq_sq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-eq-sq-add-sq-iff-eq-sq-mul--142ddf79f4b3d44370203c30.md) | 174 | `result-track:142ddf79f4b3d44370203c30e7a136949ad63f9b02bc132ad085581cd40148ce` |
| 13 | `theorem` | [Nat.eq_sq_add_sq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/declarations/nat-eq-sq-add-sq-iff--1364d08401bf770e984cabb8.md) | 202 | `result-track:1364d08401bf770e984cabb8c2bc83775b0a6c93e028add5e193f1916d6b037a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
