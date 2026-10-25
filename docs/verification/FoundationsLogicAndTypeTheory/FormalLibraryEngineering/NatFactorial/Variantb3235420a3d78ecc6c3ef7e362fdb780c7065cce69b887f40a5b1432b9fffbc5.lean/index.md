# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFactorial.Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce27881347b719c784a82a550072f2e2210f973c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce27881347b719c784a82a550072f2e2210f973c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [asc_factorial_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/asc-factorial-aux--e7e180de76e3326bc54b8e63.md) | 30 | `result-track:e7e180de76e3326bc54b8e638f16e065c68a5beab53e63cb7187a7467285fa42` |
| 2 | `def` | [proveAscFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/proveascfactorial--eb3ccf3fe934c2f59fa11076.md) | 37 | `declaration-track:eb3ccf3fe934c2f59fa11076d175031c4a3aadfa8866dfb0b58176ffb7f47d59` |
| 3 | `lemma` | [isNat_factorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/isnat-factorial--2cb27a061b97a973cb539768.md) | 64 | `result-track:2cb27a061b97a973cb539768697689dd65d49003d1991c01530d0b1199ae0a0c` |
| 4 | `def` | [evalNatFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/evalnatfactorial--b59480d248cc78192ba8aebe.md) | 71 | `declaration-track:b59480d248cc78192ba8aebebab1f892bc4370fb244aefeabf0cd39ab3009af7` |
| 5 | `lemma` | [isNat_ascFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/isnat-ascfactorial--31160f7802e83c7daea89f9b.md) | 79 | `result-track:31160f7802e83c7daea89f9bec6bb624b350bd62ab3bc441098f2d1b0d783fa7` |
| 6 | `def` | [evalNatAscFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/evalnatascfactorial--36734ba1b66b2578f4b16821.md) | 86 | `declaration-track:36734ba1b66b2578f4b16821c25918fb99110a14be6fb8067c25a7280f32cb71` |
| 7 | `lemma` | [isNat_descFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/isnat-descfactorial--e039db9d5f06b2c651419523.md) | 95 | `result-track:e039db9d5f06b2c65141952396e3b156a632d8cc52bcce1170ab4b6d6da54e5e` |
| 8 | `lemma` | [isNat_descFactorial_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/isnat-descfactorial-zero--3f90cacda913f98f03dbeb93.md) | 100 | `result-track:3f90cacda913f98f03dbeb93edf08a4295c05b67bdcb792524f72f5743c0db15` |
| 9 | `def` | [evalNatDescFactorialNotZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/evalnatdescfactorialnotzero--25747d4eae7d8b6f2e3906c4.md) | 105 | `declaration-track:25747d4eae7d8b6f2e3906c4aa2dae7fff0ed608adecd4fe670e91041ef8cb67` |
| 10 | `def` | [evalNatDescFactorialZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/evalnatdescfactorialzero--cf264262472eae920a8b712f.md) | 114 | `declaration-track:cf264262472eae920a8b712f4ca9cb943b962512fdacf1392ad0fd0c4d0d0cac` |
| 11 | `def` | [evalNatDescFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFactorial/Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5.lean/declarations/evalnatdescfactorial--5ad0f23dd6e9c4bd1a22cb77.md) | 122 | `declaration-track:5ad0f23dd6e9c4bd1a22cb775f7c877f9de96b679f57878f6c93064fb3d10ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
