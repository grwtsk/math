# Verification target: GRWTSK.Algebra.UniversalAlgebra.Adjunctions.Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f932890603c8753a84b4bf004280154e1728b4c0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f932890603c8753a84b4bf004280154e1728b4c0`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Semigrp.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMulWithZero` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoinOne](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/adjoinone--1cf06675c1f920086da084d1.md) | 43 | `declaration-track:1cf06675c1f920086da084d1db7eec62a9b155c8c821941c6a3fe36a0b62ab56` |
| 2 | `instance` | [hasForgetToSemigroup](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/hasforgettosemigroup--2d563a6a2aa4283a7fe9827e.md) | 50 | `declaration-track:2d563a6a2aa4283a7fe9827ec6298784d90b52dc11634475f791414d9042ba8f` |
| 3 | `def` | [adjoinOneAdj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/adjoinoneadj--d4cb7909179868ec116d99d9.md) | 57 | `declaration-track:d4cb7909179868ec116d99d97ddd068455e737fd2b3b99b20cc1ac222094481a` |
| 4 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/free--da81dd0d2ee349bfbe492565.md) | 68 | `declaration-track:da81dd0d2ee349bfbe492565c7da5380804502bcc256b55755c04912a7c9b87e` |
| 5 | `def` | [adj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/adj--c28694c0c8260417aba72ca0.md) | 76 | `declaration-track:c28694c0c8260417aba72ca02189785b608cbdb7623f36e644a52e4b83f7480f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/instance--b3a53c232c98a00ffe07eb85.md) | 82 | `declaration-track:b3a53c232c98a00ffe07eb85814da82072b649df15f206d72ac7ce2868b2fc2c` |
| 7 | `def` | [free](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/free--a9c51964b3be11de41ef09ca.md) | 93 | `declaration-track:a9c51964b3be11de41ef09ca38ce916ade543ef94aba417b453d7c6563b07953` |
| 8 | `def` | [adj](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/adj--6fa28c63a35957f75b4525e3.md) | 99 | `declaration-track:6fa28c63a35957f75b4525e327399d0eab4b0170affe5c1f840a4a5f8933168a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/instance--1cd801be821340d13fba17e8.md) | 105 | `declaration-track:1cd801be821340d13fba17e8d66ded0baa89a60da06ba121010edb2fac5d41fe` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/instance--2b002e9dcb0cc2a64c581b53.md) | 107 | `declaration-track:2b002e9dcb0cc2a64c581b53284257d233c7755779cbc05b3149e640eafb0b9d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Adjunctions/Variant5353471df805a33b4dd28f426fa680a995e13e0d6b834e4678a511119c9768ba.lean/declarations/instance--739b95bc33ffa0460d3c614d.md) | 113 | `declaration-track:739b95bc33ffa0460d3c614d51b3923b1f0b44e9a88a7693673f7af82cd14884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
