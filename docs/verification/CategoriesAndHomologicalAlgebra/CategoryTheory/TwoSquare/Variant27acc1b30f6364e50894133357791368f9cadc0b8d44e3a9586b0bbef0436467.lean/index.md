# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TwoSquare.Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6fc86ba66f47d1552982efb289a63d28b98855",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6fc86ba66f47d1552982efb289a63d28b98855`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Slice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/twosquare--cc0520ca8d06f9cd87dfa7ec.md) | 46 | `declaration-track:cc0520ca8d06f9cd87dfa7ecceab5f6fe1461083998031d1a1327d2c57d838c6` |
| 2 | `abbrev` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/mk--2f21cf3de0827a518a9586ea.md) | 51 | `declaration-track:2f21cf3de0827a518a9586ea62907c823bff03ad73e956cb678faed6e34d3912` |
| 3 | `abbrev` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/nattrans--4adfbac2417b7503a61775cf.md) | 55 | `declaration-track:4adfbac2417b7503a61775cfb1e9a9ab66471f386f632f96fa3eccda52bb7a13` |
| 4 | `def` | [equivNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/equivnattrans--b149d369fa01cdad860009ba.md) | 60 | `declaration-track:b149d369fa01cdad860009ba0ebd571aa7a306ca7de2cf0899fa5dc4e5df0262` |
| 5 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/op--c2c6ce00db3e7d096c2c4721.md) | 69 | `declaration-track:c2c6ce00db3e7d096c2c472147ac717fee766349300a80f4d1c8c01fbcd2a1b6` |
| 6 | `lemma` | [natTrans_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/nattrans-op--3f6f8f35f749fb82ddee3083.md) | 72 | `result-track:3f6f8f35f749fb82ddee3083b5447179889aaecbb46106caab1417c56ed5c52e` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/ext--f4a2cdd3c328918a10c6c049.md) | 76 | `result-track:f4a2cdd3c328918a10c6c04960c2a809978f29f7ae4c4790a6632fbc87426ce8` |
| 8 | `def` | [hId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/hid--adc53d8f65582052529f5eaf.md) | 82 | `declaration-track:adc53d8f65582052529f5eaf7b2316f532f59eff31449e1c47929f9f4c404080` |
| 9 | `def` | [vId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/vid--39fe594cbfd9a98fabf33a6f.md) | 90 | `declaration-track:39fe594cbfd9a98fabf33a6ffbb11a30cad7e61c99855fee0b25a06ba7501695` |
| 10 | `def` | [whiskerTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/whiskertop--cc8ab305af7e1509a72f0326.md) | 98 | `declaration-track:cc8ab305af7e1509a72f03265678119fd42f01753b13799128246d063d8e0ab8` |
| 11 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/whiskerleft--330ff9c98fc4f739c31067e6.md) | 103 | `declaration-track:330ff9c98fc4f739c31067e6e28547b02a0a585716d1f699b791547b1137534b` |
| 12 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/whiskerright--69a6a6c2f7842228cddb1cc1.md) | 109 | `declaration-track:69a6a6c2f7842228cddb1cc1fb480065860338ffc67c8a590c22266d697718fd` |
| 13 | `def` | [whiskerBottom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/whiskerbottom--06c321bed0ab10b431d36a52.md) | 115 | `declaration-track:06c321bed0ab10b431d36a52591f109e1e2a18e85873997ffc3532110c22d96f` |
| 14 | `def` | [hComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/hcomp--f29db9e256697406a6fd3316.md) | 125 | `declaration-track:f29db9e256697406a6fd33165492b04964372157fc8a974e2157460087c9ba5b` |
| 15 | `def` | [vComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/vcomp--57a851739994fb8b8eda3534.md) | 135 | `declaration-track:57a851739994fb8b8eda3534cd383fb542144dfacca473bdc67bb25aad5577a2` |
| 16 | `lemma` | [hCompVCompHComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TwoSquare/Variant27acc1b30f6364e50894133357791368f9cadc0b8d44e3a9586b0bbef0436467.lean/declarations/hcompvcomphcomp--b1579cea35c3bf8b80c6fff9.md) | 149 | `result-track:b1579cea35c3bf8b80c6fff959199b37fd635b3ce8e61debd5e822d6bb357aa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
