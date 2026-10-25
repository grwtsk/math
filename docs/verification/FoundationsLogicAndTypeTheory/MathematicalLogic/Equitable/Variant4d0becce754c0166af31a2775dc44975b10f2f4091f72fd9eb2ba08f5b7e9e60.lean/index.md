# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equitable.Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abd08c138f935dcd139223f69ada4d9a694cbeed",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abd08c138f935dcd139223f69ada4d9a694cbeed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon--a0e3de1fdc7f303c84d5b150.md) | 37 | `declaration-track:a0e3de1fdc7f303c84d5b1505c90ed5b64956bfe51e7dc1e19d8486e96f6a350` |
| 2 | `theorem` | [equitableOn_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-empty--818fabe7997638c982f7be5d.md) | 41 | `result-track:818fabe7997638c982f7be5d301bd0dd553650a8dd2ec7e06d94f3157de656ba` |
| 3 | `theorem` | [equitableOn_iff_exists_le_le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-iff-exists-le-le-add-one--5282356551278057f3d7bf8e.md) | 44 | `result-track:5282356551278057f3d7bf8e29a5a81cd817cd606964719d145f1791d85ea279` |
| 4 | `theorem` | [equitableOn_iff_exists_image_subset_icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-iff-exists-image-subset-icc--a7760e3a6aee626b7619576d.md) | 58 | `result-track:a7760e3a6aee626b7619576d7cb7512c5573d09fc5f96735cfa46e55d3ca66bf` |
| 5 | `theorem` | [equitableOn_iff_exists_eq_eq_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-iff-exists-eq-eq-add-one--ae629a6ce883acd05f05dd96.md) | 62 | `result-track:ae629a6ce883acd05f05dd96ecc602b95729d6e23857a335bef519927858243c` |
| 6 | `lemma` | [not_equitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/not-equitableon--1746782bcfc258f457fc424b.md) | 70 | `result-track:1746782bcfc258f457fc424bd7c1084d07c5264d1129a5c28f6cba028c172e9d` |
| 7 | `theorem` | [Subsingleton.equitableOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/subsingleton-equitableon--11773f2222da73a1a98d3458.md) | 79 | `result-track:11773f2222da73a1a98d3458c36d67134d285371ca7368ad7b659c9f9c8d7303` |
| 8 | `theorem` | [equitableOn_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-singleton--0d452cde72e2aa2233dfd857.md) | 84 | `result-track:0d452cde72e2aa2233dfd857bbf91ea2c8b03ff476a56a7900399db5845881e5` |
| 9 | `theorem` | [equitableOn_iff_le_le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-iff-le-le-add-one--7eb9a9e2a2862aa0ead131ea.md) | 97 | `result-track:7eb9a9e2a2862aa0ead131ea9b9a9a79939358e1f3eb1336f3185ea8ea190c68` |
| 10 | `theorem` | [EquitableOn.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-le--e964abc4650d6547c4e4f019.md) | 119 | `result-track:e964abc4650d6547c4e4f01984241ad06d3f489a85ab4c724cda8bc79dd9506f` |
| 11 | `theorem` | [EquitableOn.le_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-le-add-one--6eb1267f061abe78478c3aee.md) | 123 | `result-track:6eb1267f061abe78478c3aeec526ff3de6826565ffe04a3ab871d71bc025ce31` |
| 12 | `theorem` | [equitableOn_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Equitable/Variant4d0becce754c0166af31a2775dc44975b10f2f4091f72fd9eb2ba08f5b7e9e60.lean/declarations/equitableon-iff--1e07102200224e98b5f8b499.md) | 127 | `result-track:1e07102200224e98b5f8b499080163102131c35056abfdc20951683f1713f51c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
