# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Homotopy.Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1d0d9d5da01223327b017e5e0f86ad0a5ddf7e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1d0d9d5da01223327b017e5e0f86ad0a5ddf7e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/righthomotopy--4f0f137a920bb76fbb26dd1b.md) | 54 | `declaration-track:4f0f137a920bb76fbb26dd1b8958e16207e8e4ac7dbc3a0703e358cabb352f1d` |
| 2 | `lemma` | [rightHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/righthomotopyrel--6105b1ceeeb290ea793f8ea3.md) | 70 | `result-track:6105b1ceeeb290ea793f8ea30ab305a8681aee18445457f21777947958757aa3` |
| 3 | `def` | [leftHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopy--958b0c9443aed57e1dfe22f9.md) | 82 | `declaration-track:958b0c9443aed57e1dfe22f97560662e4435e29b2c12c10ffc0627ead7cb223a` |
| 4 | `lemma` | [leftHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyrel--657d45ed7ddc9b780ed1ed94.md) | 98 | `result-track:657d45ed7ddc9b780ed1ed94fb10baf2dab43dcdc1ad78ce080dc4e19c33d0a0` |
| 5 | `lemma` | [leftHomotopyRel_iff_rightHomotopyRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyrel-iff-righthomotopyrel--10c3652fe6f5fb979e612e9e.md) | 108 | `result-track:10c3652fe6f5fb979e612e9e1fa779e8510d9df26cb0ff3908f251fa0b3636f5` |
| 6 | `def` | [LeftHomotopyRel.leftHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyrel-lefthomotopy--a0316531ea2b98a6f27cee77.md) | 115 | `declaration-track:a0316531ea2b98a6f27cee77721ea2836965d3082ae0758effda22428e0e5094` |
| 7 | `def` | [RightHomotopyRel.rightHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/righthomotopyrel-righthomotopy--d8d4f269608df106755f2a23.md) | 123 | `declaration-track:d8d4f269608df106755f2a235b3a2600a2a8bf153a141e74de0c5e499ae145fb` |
| 8 | `lemma` | [postcomp_bijective_of_fibration_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/postcomp-bijective-of-fibration-of-weakequivalence--f41ee76c8ce4fd790cf010a0.md) | 134 | `result-track:f41ee76c8ce4fd790cf010a027bf2dbc1ee29141c479490b690f2e2609943097` |
| 9 | `lemma` | [postcomp_bijective_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/postcomp-bijective-of-weakequivalence--dbc4a9eb740911a2d39f668a.md) | 158 | `result-track:dbc4a9eb740911a2d39f668acf3aaed758f9e3dc96a9e1a671560b705fc808b3` |
| 10 | `lemma` | [precomp_bijective_of_cofibration_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/precomp-bijective-of-cofibration-of-weakequivalence--fd6c775a5086461987e8c5cf.md) | 180 | `result-track:fd6c775a5086461987e8c5cf2a630950577d41ebde76e9f6c1376b15cf619e97` |
| 11 | `lemma` | [precomp_bijective_of_weakEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/precomp-bijective-of-weakequivalence--887c3e7d0b2d149161f5c3ec.md) | 204 | `result-track:887c3e7d0b2d149161f5c3ec4fdb9076e8798654f9a0c2980806368d4061fc64` |
| 12 | `lemma` | [whitehead](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/whitehead--1aa51041af92faa3bf759e38.md) | 220 | `result-track:1aa51041af92faa3bf759e3806ef8c5762111ece127b5b69b69f49cf8cc2fb96` |
| 13 | `lemma` | [LeftHomotopyClass.whitehead](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyclass-whitehead--9d622b357130e636b4ea809b.md) | 235 | `result-track:9d622b357130e636b4ea809b6072c8fc4bbf8012677ae0f52cf6aa7ce6bd8eb7` |
| 14 | `def` | [leftHomotopyClassEquivRightHomotopyClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyclassequivrighthomotopyclass--7b1f106324c8be9ed82b4b8d.md) | 247 | `declaration-track:7b1f106324c8be9ed82b4b8d1fe4c439775e185540d30ac114e5068719441a83` |
| 15 | `lemma` | [leftHomotopyClassEquivRightHomotopyClass_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyclassequivrighthomotopyclass-mk--1dea82e7a895f288a583b1b1.md) | 259 | `result-track:1dea82e7a895f288a583b1b1bbea8a63c33f781ea58af8b83716ceebae80f02a` |
| 16 | `lemma` | [leftHomotopyClassEquivRightHomotopyClass_symm_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant8ef6b4d69b6a271ed74d68a4f1f0e615f010c4e4586da29099a0608b140cbb4b.lean/declarations/lefthomotopyclassequivrighthomotopyclass-symm-mk--8793c14aab30bdab090a1dca.md) | 263 | `result-track:8793c14aab30bdab090a1dca70997b3a536c8155808c51685adaf7649d1aa4dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
