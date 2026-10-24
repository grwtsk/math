# Verification target: GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43c4ff2671478493c2d3c27cc7070f999ee0ac4d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/HigherGenusHeisenbergWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43c4ff2671478493c2d3c27cc7070f999ee0ac4d`.

Source path: `GRWTSK/GroupTheory/Words/HigherGenusHeisenbergWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/HigherGenusHeisenbergWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.GenusTwoHeisenbergWitness`](../../../../../mathematics/Algebra/GroupTheory/Words/GenusTwoHeisenbergWitness.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GenusLetter](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/genusletter--5e06b2746c61031bbd342ccf.md) | 48 | `declaration-track:5e06b2746c61031bbd342ccfe44b4e797020eeecb21c4e6078484d3f3eaeb5b5` |
| 2 | `def` | [baseLetter](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/baseletter--e8dab3e26db127596937f93d.md) | 52 | `declaration-track:e8dab3e26db127596937f93d349c16205473d859abf50b4fd1c1e3af984d99bf` |
| 3 | `def` | [extraLetter](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extraletter--02e1433be915edfd289f8a67.md) | 56 | `declaration-track:02e1433be915edfd289f8a67e617e1825b50b4858d53481aaa72f7b4775a7ff9` |
| 4 | `def` | [firstTwoRelator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsttworelator--21efe36ba5ccd2b7edd9218c.md) | 60 | `declaration-track:21efe36ba5ccd2b7edd9218c47a8514393928f90ef9562876d7854f8b539d9a8` |
| 5 | `def` | [extraHandleRelator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrahandlerelator--77ec37681db46c0b7eb2c68c.md) | 67 | `declaration-track:77ec37681db46c0b7eb2c68c2f300ca53e02df6fc9f6aae96fc87a6205b1cb44` |
| 6 | `def` | [extraRelatorList](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrarelatorlist--cccee77759c86f113ad6499d.md) | 75 | `declaration-track:cccee77759c86f113ad6499dec501797d51f052efd6119dd8b76740c2ae28286` |
| 7 | `def` | [higherGenusRelator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/highergenusrelator--024ea55d3241897af9ce2197.md) | 81 | `declaration-track:024ea55d3241897af9ce2197f08823268f0176b8af26bd4414fd5f766b62e3c7` |
| 8 | `abbrev` | [HigherGenusPresentedGroup](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/highergenuspresentedgroup--ae97d57f6a8ec029dfc539b1.md) | 86 | `declaration-track:ae97d57f6a8ec029dfc539b13b46f163b7417136ecdf890273c877c92ff855f2` |
| 9 | `def` | [generator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/generator--f9ec050c0bd50fb4881512f4.md) | 91 | `declaration-track:f9ec050c0bd50fb4881512f48080c6df365940d8a168c5fbeb8c4b2c50895e56` |
| 10 | `def` | [heisenbergLetter](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/heisenbergletter--b41b34ab80ef13798700d33f.md) | 100 | `declaration-track:b41b34ab80ef13798700d33f5d7be377c749d5432f8a88c74fa153a11e2d26cc` |
| 11 | `theorem` | [firstTwoRelator_evaluation](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsttworelator-evaluation--7b33ac6d41fa84d1154495b8.md) | 106 | `result-track:7b33ac6d41fa84d1154495b89a775459ebe99ad6656a5dbc14631f601d1c0d3b` |
| 12 | `theorem` | [extraHandleRelator_evaluation](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrahandlerelator-evaluation--9d579aac0a13d6d33556787e.md) | 117 | `result-track:9d579aac0a13d6d33556787ed271229eec730da75d8de0dc0a20fc7d12f34a2b` |
| 13 | `theorem` | [extraRelatorList_evaluation](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrarelatorlist-evaluation--68d7600631da66fb772ac5db.md) | 127 | `result-track:68d7600631da66fb772ac5dbbf8d97a2fd590d6e93dfff6aa4090f603022a128` |
| 14 | `theorem` | [higherGenusRelator_evaluation](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/highergenusrelator-evaluation--b7c1a49729db477fb1de10fe.md) | 145 | `result-track:b7c1a49729db477fb1de10fe91823a406a92444048145f8cae6f016701736caf` |
| 15 | `def` | [toHeisenberg](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/toheisenberg--8ed36e633cc51963f585c7c1.md) | 155 | `declaration-track:8ed36e633cc51963f585c7c158e5cece78901f7c05eb8304a9676bd3aa583a41` |
| 16 | `theorem` | [toHeisenberg_generator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/toheisenberg-generator--37f6663f46101d9032301b32.md) | 168 | `result-track:37f6663f46101d9032301b324de78d7ca3b7d4fa49d732764c981f6e6bf816d3` |
| 17 | `def` | [firstHandleCommutator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsthandlecommutator--574878c6afcd56726971ba12.md) | 174 | `declaration-track:574878c6afcd56726971ba1245055c612430fbf060f939e287258dc11961bb93` |
| 18 | `theorem` | [toHeisenberg_firstHandleCommutator](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/toheisenberg-firsthandlecommutator--cf1a91e7ffdbe22a7fd55721.md) | 181 | `result-track:cf1a91e7ffdbe22a7fd557215271cfd24f05db3349a28c0dc9e47505a15550df` |
| 19 | `theorem` | [firstHandleCommutator_primitive](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsthandlecommutator-primitive--f1351d66b4ff8034301dbe73.md) | 194 | `result-track:f1351d66b4ff8034301dbe7372e6eccc8e1712e62bedbc1ceed93b8249f507d7` |
| 20 | `theorem` | [firstHandleCommutator_abelianization_eq_one](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsthandlecommutator-abelianization-eq-one--ae7658581d9479f5713f1f2d.md) | 202 | `result-track:ae7658581d9479f5713f1f2d38ed708a27bbd984fc378e67938f081158c85eaa` |
| 21 | `theorem` | [firstHandleCommutator_integerCharacter_zero](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/firsthandlecommutator-integercharacter-zero--c686567f428bab2193156257.md) | 210 | `result-track:c686567f428bab2193156257ed1a0dc150d366297b76ceb325e260fed87fe50d` |
| 22 | `def` | [familyWitness](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/familywitness--b032a1d55524ff82fd59abf4.md) | 227 | `declaration-track:b032a1d55524ff82fd59abf49cf4975f1cfd8abb44974989a3c53b5d9704aea1` |
| 23 | `theorem` | [primitive_and_homology_invisible](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/primitive-and-homology-invisible--fbbcf526a998b90f694c6894.md) | 235 | `result-track:fbbcf526a998b90f694c6894d0c86bc35e3fa244dbc48b7abeb073ed87d9be0a` |
| 24 | `theorem` | [no_integer_unit_certificate](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/no-integer-unit-certificate--cc1d024bdcf492d1bd7961ad.md) | 243 | `result-track:cc1d024bdcf492d1bd7961ad79ab3ed297789c4608623810047fca1c35e1d21f` |
| 25 | `theorem` | [extraRelatorList_zero](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrarelatorlist-zero--8232fe9ce419b2740d500295.md) | 250 | `result-track:8232fe9ce419b2740d5002957cc707cb715b80c85c91dc64ca30e205fac379a6` |
| 26 | `theorem` | [extraRelatorList_one](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/extrarelatorlist-one--fec384ebb7776c1940532e91.md) | 257 | `result-track:fec384ebb7776c1940532e9172d90ecf40a4821c21bfbd6687800a6b6d486927` |
| 27 | `theorem` | [genus_two_case](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/genus-two-case--45bea0e991517ac7950a91e5.md) | 262 | `result-track:45bea0e991517ac7950a91e5134bb0beb4d362601fbbfc3a965011c8dfe4fd10` |
| 28 | `theorem` | [genus_three_case](../../../../../mathematics/Algebra/GroupTheory/Words/HigherGenusHeisenbergWitness.lean/declarations/genus-three-case--b660535644569b8789b82c99.md) | 270 | `result-track:b660535644569b8789b82c998c9c6d45e927d222b64c2455a995a7f0e6528fab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
