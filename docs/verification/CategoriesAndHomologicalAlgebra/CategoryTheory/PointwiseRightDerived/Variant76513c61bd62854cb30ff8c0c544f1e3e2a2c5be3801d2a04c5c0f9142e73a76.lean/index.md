# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PointwiseRightDerived.Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b04dc5bde1a76583dd05bd6b4a02a6f11d7d749",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b04dc5bde1a76583dd05bd6b4a02a6f11d7d749`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean.json)

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
| 1 | `def` | [rightDerivedFunctorComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/rightderivedfunctorcomparison--86a875d4dd80a1d5e941c680.md) | 64 | `declaration-track:86a875d4dd80a1d5e941c680a11525e260c00aac70a6bb7997becc0e2e59d579` |
| 2 | `lemma` | [rightDerivedFunctorComparison_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/rightderivedfunctorcomparison-fac--0e87f0e983c43f9d03a70fa1.md) | 71 | `result-track:0e87f0e983c43f9d03a70fa12763188d233ced15dd81dfa81aafa23117b1b8aa` |
| 3 | `lemma` | [rightDerivedFunctorComparison_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/rightderivedfunctorcomparison-fac-app--d19695d7a130f00beb7b75be.md) | 80 | `result-track:d19695d7a130f00beb7b75befedb88bffa5fa99fd2eb915362be4158dc94959e` |
| 4 | `lemma` | [hasPointwiseRightDerivedFunctorAt_iff_of_isRightDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/haspointwiserightderivedfunctorat-iff-of-isrightderivabilitystructure--676b10aa5d366544e71de0d8.md) | 88 | `result-track:676b10aa5d366544e71de0d8d1cbbd402d6596edeced07fae88c5f5d60bf8b3c` |
| 5 | `lemma` | [hasPointwiseRightDerivedFunctor_iff_of_isRightDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/haspointwiserightderivedfunctor-iff-of-isrightderivabilitystructure--df22bf83e84cc798e00b4ba5.md) | 97 | `result-track:df22bf83e84cc798e00b4ba5425fc50c625376c0d52e0a1da3ad414e73cd89d2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/instance--d5b18e6a2ad5256d98f756a0.md) | 114 | `declaration-track:d5b18e6a2ad5256d98f756a0b8f1982e0704681400b06d8ec751125a92212f28` |
| 7 | `lemma` | [isIso_iff_of_isRightDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PointwiseRightDerived/Variant76513c61bd62854cb30ff8c0c544f1e3e2a2c5be3801d2a04c5c0f9142e73a76.lean/declarations/isiso-iff-of-isrightderivabilitystructure--ce835af4584477e00eab7931.md) | 124 | `result-track:ce835af4584477e00eab793162b851b60e6abeeafb44c3e1af5785abdd3f31b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
