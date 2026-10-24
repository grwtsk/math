# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5fe2dc4f61f09ded0a5eaf521609ad7b9f8faf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5fe2dc4f61f09ded0a5eaf521609ad7b9f8faf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/mul-sup--445db062e492d42f77cbb45c.md) | 47 | `result-track:445db062e492d42f77cbb45cace4ed616d96a49a2c3b6b61b1c50ad5a6ca669b` |
| 2 | `lemma` | [sup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/sup-mul--2d83a6c12704d178af98e521.md) | 52 | `result-track:2d83a6c12704d178af98e5217a4be673a6a593882b48dbaed98f6e6ac8e2e19f` |
| 3 | `lemma` | [mul_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/mul-inf--36095e7891291d64115364bf.md) | 57 | `result-track:36095e7891291d64115364bf46ab225edd3bdb5ab3de60403df25b715c47e748` |
| 4 | `lemma` | [inf_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/inf-mul--8f39e3c0d484122bd5c5c0ee.md) | 62 | `result-track:8f39e3c0d484122bd5c5c0eee7b43512382703370100e1ab8e71f42321825f25` |
| 5 | `lemma` | [sup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/sup-div--1893b344aad055c02b8cc1c6.md) | 67 | `result-track:1893b344aad055c02b8cc1c636fcd7912ff833e10704a36c4a20c7cc25e944ad` |
| 6 | `lemma` | [inf_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/inf-div--5fb321080e60babb681cd5c7.md) | 72 | `result-track:5fb321080e60babb681cd5c707de2ae17dca90969d77e9e35d0002960f2a5c26` |
| 7 | `lemma` | [inv_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/inv-sup--ac397bd7ce32e06673f242ef.md) | 79 | `result-track:ac397bd7ce32e06673f242ef26067aa4d2bf742e28d28ccdcfe27f52742cd8e5` |
| 8 | `lemma` | [inv_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/inv-inf--fcb2dc2cb018833291c6637e.md) | 81 | `result-track:fcb2dc2cb018833291c6637eebdd666ab6ba257662e14a7cbde58d8ff2ecff98` |
| 9 | `lemma` | [div_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/div-sup--e3e689d75233c3f9f73c20b5.md) | 84 | `result-track:e3e689d75233c3f9f73c20b5a309668aa3b4d7501b0be0222eab32010a546719` |
| 10 | `lemma` | [div_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/div-inf--462658ea073c83bca1260f80.md) | 87 | `result-track:462658ea073c83bca1260f805df694cad5dd6a4817831de23927f13ae2accb12` |
| 11 | `lemma` | [pow_two_semiclosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/pow-two-semiclosed--24dc3d16d009880a888f66d4.md) | 93 | `result-track:24dc3d16d009880a888f66d43a90244d6159db228a654054b95e40d622a61878` |
| 12 | `lemma` | [inf_mul_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/inf-mul-sup--a6e8a4f97b49a04506c5041b.md) | 109 | `result-track:a6e8a4f97b49a04506c5041b28320b0099e8f425e245f0f0736102b93c417a9a` |
| 13 | `def` | [CommGroup.toDistribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantc394065230ca74a7c7511585129802618cf01e29ca2d810bd6c6d2f077a20343.lean/declarations/commgroup-todistriblattice--f2d59764cf0ff40eb1207f22.md) | 119 | `declaration-track:f2d59764cf0ff40eb1207f224afc6820c720071e432ccdbcd711603eaa6a742b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
