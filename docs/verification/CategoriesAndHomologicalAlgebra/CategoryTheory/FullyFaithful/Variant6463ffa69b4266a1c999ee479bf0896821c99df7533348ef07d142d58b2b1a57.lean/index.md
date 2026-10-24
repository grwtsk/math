# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9050d4a6b33b47461d1eebdc4f29c532dae21fed",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9050d4a6b33b47461d1eebdc4f29c532dae21fed`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unit_isIso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/unit-isiso-of-l-fully-faithful--8d54432b3daa1747790c58a8.md) | 58 | `declaration-track:8d54432b3daa1747790c58a842c9d15f3f039e6637a0eca5e12ed8ca7668f5d4` |
| 2 | `instance` | [counit_isIso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/counit-isiso-of-r-fully-faithful--e382d60f5f7517b138659eba.md) | 79 | `declaration-track:e382d60f5f7517b138659ebaa00327d6d13c7e05da2e00aabff93437d66be2e5` |
| 3 | `theorem` | [inv_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/inv-map-unit--545f6bb29c71431b6d68f3c0.md) | 100 | `result-track:545f6bb29c71431b6d68f3c0f08f382fc3d03b6e6dec7223333f4c682faf1037` |
| 4 | `def` | [whiskerLeftLCounitIsoOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerleftlcounitisoofisisounit--498e9c137d012992b8652fb1.md) | 107 | `declaration-track:498e9c137d012992b8652fb1c58fd601b9e5a7dbca25cdd6ad6e78fb0d981e3f` |
| 5 | `theorem` | [inv_counit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/inv-counit-map--057c0fe847d4112719a72e90.md) | 115 | `result-track:057c0fe847d4112719a72e906a90c2ad175ad3d3e59ecfa83406fb35c7e40d6b` |
| 6 | `def` | [whiskerLeftRUnitIsoOfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerleftrunitisoofisisocounit--1ac0b47759b08576edce6b19.md) | 122 | `declaration-track:1ac0b47759b08576edce6b19cf28e1cc3efe5ed7f75802122624a308f5044efc` |
| 7 | `def` | [lFullOfUnitIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/lfullofunitisiso--c0b6e9b0b0683ea48b2be624.md) | 128 | `declaration-track:c0b6e9b0b0683ea48b2be62499c54c39935656c8d84123487211b8d4237d4124` |
| 8 | `theorem` | [L_faithful_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/l-faithful-of-unit-isiso--4ee63c49ccf8c43beb6ddcca.md) | 134 | `result-track:4ee63c49ccf8c43beb6ddccae082fa7b8ffff45fe2b2157a84ea110484abbdd8` |
| 9 | `def` | [rFullOfCounitIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/rfullofcounitisiso--d774f74b5f28a9b0b907c8c1.md) | 142 | `declaration-track:d774f74b5f28a9b0b907c8c1531505e89375b28dbe9ade64a3b991749243f753` |
| 10 | `theorem` | [R_faithful_of_counit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/r-faithful-of-counit-isiso--242820c3bd3a5caf9f5b6f56.md) | 148 | `result-track:242820c3bd3a5caf9f5b6f56f5983dd6f04b5420b4140e47509d946ecf65ad13` |
| 11 | `instance` | [whiskerLeft_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerleft-counit-iso-of-l-fully-faithful--28e7374548e4af038590051c.md) | 155 | `declaration-track:28e7374548e4af038590051caaf028432891611d803b2ad91b5ae01ee6c24faa` |
| 12 | `instance` | [whiskerRight_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerright-counit-iso-of-l-fully-faithful--e100999ea7abb52c443bbb9e.md) | 164 | `declaration-track:e100999ea7abb52c443bbb9e8f21cf67082c5fc05223c07c3c8f5a6e1f85ab3b` |
| 13 | `instance` | [whiskerLeft_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerleft-unit-iso-of-r-fully-faithful--298eb7f6c87251ac35b2125f.md) | 173 | `declaration-track:298eb7f6c87251ac35b2125f245045e310c1c563477e91b7820afc58f05860d5` |
| 14 | `instance` | [whiskerRight_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/whiskerright-unit-iso-of-r-fully-faithful--78b43e91f6ff0a6cad8d5eb7.md) | 182 | `declaration-track:78b43e91f6ff0a6cad8d5eb7a26dccf304ccc3fdaede18f0628416ae2c9d4bb1` |
| 15 | `def` | [Adjunction.restrictFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/declarations/adjunction-restrictfullyfaithful--dc6e25018a8744387b89f204.md) | 206 | `declaration-track:dc6e25018a8744387b89f2041feb459539fe8ea5ba3218e7323516a76b828f32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
