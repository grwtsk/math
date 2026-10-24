# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coherence.Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e81f48665a804e4f727be265fa7053e245286a0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e81f48665a804e4f727be265fa7053e245286a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DiscreteCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NormalMonoidalObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalmonoidalobject--7b343b082fa3e64605e8a302.md) | 65 | `declaration-track:7b343b082fa3e64605e8a302976443de2d31e02f0054f01c48f6645641d7dfc7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/instance--0fa34dfb0345ed2fa5101926.md) | 79 | `declaration-track:0fa34dfb0345ed2fa5101926b92e3698a4d6eeb588afe07c6419d2490a7e0836` |
| 3 | `def` | [inclusionObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/inclusionobj--001671c7408180d472e7b83e.md) | 83 | `declaration-track:001671c7408180d472e7b83e894738142914c958a43ed439959a41491f5aa91a` |
| 4 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/inclusion--cdae8375545a596b2c12ffa0.md) | 90 | `declaration-track:cdae8375545a596b2c12ffa005744ae0839fcf9f5bca33029958e913e2b1ce7c` |
| 5 | `def` | [normalizeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeobj--c43998c756b75956d88d53d4.md) | 96 | `declaration-track:c43998c756b75956d88d53d4b3c316c48114e74af4f14e0aa52b5eb91c7175de` |
| 6 | `theorem` | [normalizeObj_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeobj-unitor--6118309e89ac30852c0d717d.md) | 103 | `result-track:6118309e89ac30852c0d717d5192c84ade39ef4da0a725e50fc7a885126be5cd` |
| 7 | `theorem` | [normalizeObj_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeobj-tensor--1ad6289ba360bcc232c27c46.md) | 108 | `result-track:1ad6289ba360bcc232c27c46919c7f0d6f31d2f0fb0b404615af60f0b654473e` |
| 8 | `def` | [normalizeMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizemapaux--e5d9b94ca22e650ac68859e6.md) | 123 | `declaration-track:e5d9b94ca22e650ac68859e6c3e51f9bbf5e50ad258df219eb77ec7f4a92530c` |
| 9 | `def` | [normalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalize--3708c1690cdbd40c0e74f956.md) | 150 | `declaration-track:3708c1690cdbd40c0e74f956957829942d7dbddf4e106e90e7ecd006d7b1435c` |
| 10 | `def` | [normalize'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalize--fe2187880c1eaff22899cda7.md) | 159 | `declaration-track:fe2187880c1eaff22899cda78f1ba0127691a3e772cb9e17ae3665eb3365edf9` |
| 11 | `def` | [fullNormalize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/fullnormalize--418ab6f78bd9ad80a44e4fc6.md) | 164 | `declaration-track:418ab6f78bd9ad80a44e4fc68e07066f88caa60b2264e0514ffd7986996ff541` |
| 12 | `def` | [tensorFunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/tensorfunc--7c5c114bc42059b59fe9664f.md) | 172 | `declaration-track:7c5c114bc42059b59fe9664f59fcc5c5518506b03481dae0d4ef8f91a940607c` |
| 13 | `theorem` | [tensorFunc_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/tensorfunc-map-app--6ecc190a7a5b40cc380bce7e.md) | 177 | `result-track:6ecc190a7a5b40cc380bce7e78f5cfc259a62cc2999787fc1a61f0e9b535d0fb` |
| 14 | `theorem` | [tensorFunc_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/tensorfunc-obj-map--f015dc1f9993894bad91d908.md) | 181 | `result-track:f015dc1f9993894bad91d90846bdc3605f7e6e7af0a086230765c2bd57c5defa` |
| 15 | `def` | [normalizeIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeisoapp--f382727479ead97e9d0ca0fe.md) | 195 | `declaration-track:f382727479ead97e9d0ca0fe1d6a4cc9c3644fc37777b242961fb59fc851ac5e` |
| 16 | `theorem` | [normalizeIsoApp_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeisoapp-tensor--e497223d6bd719722431f626.md) | 204 | `result-track:e497223d6bd719722431f6268c42a51048fbcf62d78051ecd64058c98194650d` |
| 17 | `theorem` | [normalizeIsoApp_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeisoapp-unitor--5521b6ba2ab842bd6cda7272.md) | 211 | `result-track:5521b6ba2ab842bd6cda7272737cb5b9aa1916dd099e2d21b8a7c74475f3ccc2` |
| 18 | `def` | [normalizeIsoAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeisoaux--2f58f5913a077d95ab01c10a.md) | 217 | `declaration-track:2f58f5913a077d95ab01c10ab43eac298db2229067fd003778445587f1cf0cbf` |
| 19 | `theorem` | [discrete_functor_obj_eq_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/discrete-functor-obj-eq-as--8b8fdd296f1de0d588b69529.md) | 233 | `result-track:8b8fdd296f1de0d588b695290c3bde20894c275a8fda6ee7abd423855fae11b8` |
| 20 | `theorem` | [discrete_functor_map_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/discrete-functor-map-eq-id--351121af1631590801410f20.md) | 239 | `result-track:351121af1631590801410f201d8d08ca23bcfbd210edba06bf004509a5d2aeb0` |
| 21 | `def` | [normalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/normalizeiso--d9442ff64da6331fc0fdead1.md) | 247 | `declaration-track:d9442ff64da6331fc0fdead1f90857e81557dd2de69fda591ab0f2b149095726` |
| 22 | `def` | [fullNormalizeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/fullnormalizeiso--476b9771f2f336800c9133be.md) | 323 | `declaration-track:476b9771f2f336800c9133be95dbecc506c13a04c1a3306447157311c2ade0de` |
| 23 | `instance` | [subsingleton_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/subsingleton-hom--e03f8a77edc7bc3f361d0b9c.md) | 338 | `declaration-track:e03f8a77edc7bc3f361d0b9ce567d076a4d68dba0e0c899f60eee49f30cd7e89` |
| 24 | `def` | [inverseAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/inverseaux--da45c2a2249e1d6a73888972.md) | 354 | `declaration-track:da45c2a2249e1d6a738889726330ff9653957c43db59ca01b9a218d1760cf11c` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3ad1d59d3769d2040fd289fdcc774343dda9b612e54cfe6aa46bfdcec116e8ae.lean/declarations/instance--dc93229455b77c987cf03a35.md) | 368 | `declaration-track:dc93229455b77c987cf03a35c5d50a470aaa6d316a97a779dc6a8f45cebeb2b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
