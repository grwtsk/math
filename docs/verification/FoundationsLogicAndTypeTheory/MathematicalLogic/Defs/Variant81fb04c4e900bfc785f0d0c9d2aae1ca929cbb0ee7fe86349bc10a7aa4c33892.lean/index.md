# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaea8bb689339eacfd040613ced00747473dad1b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaea8bb689339eacfd040613ced00747473dad1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/nontrivial--4e51f40581169d7778069332.md) | 33 | `declaration-track:4e51f40581169d777806933288ae2d8f4c885dd79aa0b235bfc869be8c17832b` |
| 2 | `theorem` | [nontrivial_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/nontrivial-iff--41c43b62e0ca486573d8b655.md) | 37 | `result-track:41c43b62e0ca486573d8b65581c269d7853c0f00869bf27aee720f1c93113287` |
| 3 | `theorem` | [exists_pair_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/exists-pair-ne--7bfa224938b7f1be9769e045.md) | 40 | `result-track:7bfa224938b7f1be9769e045e2d45758c540fc0936255ee9d39cb2f17c7b3fad` |
| 4 | `theorem` | [Decidable.exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/decidable-exists-ne--74b13a28b1ed359e84a24563.md) | 44 | `result-track:74b13a28b1ed359e84a24563de8842f3a1f918891bfe392424c33ea014dabc51` |
| 5 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/exists-ne--8484914b3d3b666928cba101.md) | 52 | `result-track:8484914b3d3b666928cba10139ec2812705785f15ce83a8210219454dc72b3af` |
| 6 | `theorem` | [nontrivial_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/nontrivial-of-ne--5863c2d83d865525b5886af7.md) | 55 | `result-track:5863c2d83d865525b5886af7c05059a80623c54d408fd27d8d38f8add226c9cd` |
| 7 | `theorem` | [nontrivial_iff_exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/nontrivial-iff-exists-ne--670cba4d87be88c856cce42c.md) | 58 | `result-track:670cba4d87be88c856cce42c7c3eebbca039ee2940f714a56b327068979f9420` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/instance--719b99bbe2545847b1a967e9.md) | 61 | `declaration-track:719b99bbe2545847b1a967e92dd3918b5f90ff3cb8ea4689b9cc64f23103b5aa` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/instance--6ea2142e3e8fd473d3867b0b.md) | 69 | `declaration-track:6ea2142e3e8fd473d3867b0b1ac6c597d322d010e0441934fd79c79bdc019836` |
| 10 | `theorem` | [subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/subsingleton-iff--bdd02bdb3a3c074c9d68a98a.md) | 73 | `result-track:bdd02bdb3a3c074c9d68a98aba7e273a5bf58cebdd9c5d4aff5c0ae506562f74` |
| 11 | `theorem` | [not_nontrivial_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/not-nontrivial-iff-subsingleton--a0d7b061909a4bc271dc3679.md) | 78 | `result-track:a0d7b061909a4bc271dc3679247fdd9ee2bca2b4b6a91660e4b21f0a4a78a5ac` |
| 12 | `theorem` | [not_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/not-nontrivial--222658e27a25ee9063d82304.md) | 81 | `result-track:222658e27a25ee9063d8230461ad5c580f867fe175a60ad834ba67db64ac8504` |
| 13 | `theorem` | [not_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/not-subsingleton--82ad18533435405c454693a3.md) | 84 | `result-track:82ad18533435405c454693a360b8d774bc6caaa4f8199f499f400a0f4e5c2662` |
| 14 | `lemma` | [not_subsingleton_iff_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/not-subsingleton-iff-nontrivial--a009fe886122bbd539579089.md) | 87 | `result-track:a009fe886122bbd539579089b630b4ed0069aebb5783d0f596fa8ea052e9ceda` |
| 15 | `theorem` | [subsingleton_or_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/subsingleton-or-nontrivial--621921a10a265ec4e60d9435.md) | 91 | `result-track:621921a10a265ec4e60d9435e65f2d8c5e4ede1821862b5e451bef43b7d17c04` |
| 16 | `theorem` | [false_of_nontrivial_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/false-of-nontrivial-of-subsingleton--9d3655fe22a9590320526435.md) | 95 | `result-track:9d3655fe22a9590320526435ea4e4b9a3b5d4225312a14545716cdced36eb38b` |
| 17 | `theorem` | [Function.Surjective.nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/function-surjective-nontrivial--be78ce6c88e1d76553096107.md) | 99 | `result-track:be78ce6c88e1d765530961074622ca6b2a5cd42f48b407a5de1024883cf1eb63` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant81fb04c4e900bfc785f0d0c9d2aae1ca929cbb0ee7fe86349bc10a7aa4c33892.lean/declarations/instance--bc70b6f3f66b4f6a04ec77d6.md) | 111 | `declaration-track:bc70b6f3f66b4f6a04ec77d61a394fb6d8926fc8c910f8d595e21d7366c659c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
