# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61d2f181ba5fc24d6dd09b727a8a93f91227b123",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61d2f181ba5fc24d6dd09b727a8a93f91227b123`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.FilteredColimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/m--4183bc4eb0ed47eb9bd24418.md) | 57 | `declaration-track:4183bc4eb0ed47eb9bd2441894c02e9065c5d14cfc2a6e31fd6543812aabc363` |
| 2 | `abbrev` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/m-mk--d5a0ce2b96e2968a6f0b5916.md) | 64 | `declaration-track:d5a0ce2b96e2968a6f0b59167c344c323e97fa5c06117768b55ee8b86bac3980` |
| 3 | `theorem` | [M.mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/m-mk-eq--309b1dc36edc967a7c6ba56e.md) | 69 | `result-track:309b1dc36edc967a7c6ba56e749977ddfdf859a1cf2c4a08161a2504af46915c` |
| 4 | `def` | [colimitSMulAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitsmulaux--38845c206dcabdee5b3fe216.md) | 76 | `declaration-track:38845c206dcabdee5b3fe216b7b0c3f6ad0a2dc5c54d2a71394206187db41c79` |
| 5 | `theorem` | [colimitSMulAux_eq_of_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitsmulaux-eq-of-rel--1e6dca7ce756598626bc4fb9.md) | 81 | `result-track:1e6dca7ce756598626bc4fb9d9c57161f99921513f3680e8cab914882e69de7a` |
| 6 | `instance` | [colimitHasSmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimithassmul--2bae83e06bb3640095315260.md) | 93 | `declaration-track:2bae83e06bb364009531526086e886115bc4a7ded61ce083b5e1664e68598ad1` |
| 7 | `theorem` | [colimit_smul_mk_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimit-smul-mk-eq--dfd8e48e34e446ee5d097166.md) | 104 | `result-track:dfd8e48e34e446ee5d097166fc7bec40bc3be6cf79f4ff915f6a3b8c92e869d4` |
| 8 | `theorem` | [colimitModule.one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitmodule-one-smul--b4c7641f0d2d41a0843fd245.md) | 109 | `result-track:b4c7641f0d2d41a0843fd245a28137543a11deb5087bf79d551cc23e6e206a9d` |
| 9 | `instance` | [colimitMulAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitmulaction--95914f43247d9574d76ffda0.md) | 116 | `declaration-track:95914f43247d9574d76ffda02ae3b3bae5c5c7f833adb623bc987301cd4a66be` |
| 10 | `instance` | [colimitSMulWithZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitsmulwithzero--80ca7ebd2141a5fb42dde88c.md) | 126 | `declaration-track:80ca7ebd2141a5fb42dde88c64b7fcae7538f7aa5d5e45f1a97259da7a03b4cf` |
| 11 | `theorem` | [colimitModule.add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitmodule-add-smul--dcf423ee4db67704f191974a.md) | 136 | `result-track:dcf423ee4db67704f191974a65221f0f86ee81bb9437c06836fc683f15f263cd` |
| 12 | `instance` | [colimitModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitmodule--7846ca094f90ee611030a4d4.md) | 143 | `declaration-track:7846ca094f90ee611030a4d41de9699ff25d657f03e295ef3a0e1825f1b04c4f` |
| 13 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimit--4c7d14a124ceef6aebf581ae.md) | 159 | `declaration-track:4c7d14a124ceef6aebf581aecf8f97238da54e20752e541cacb276f81b81c082` |
| 14 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/coconemorphism--63141ff7102e3a39aecc938a.md) | 165 | `declaration-track:63141ff7102e3a39aecc938aa9cd5564d63304607e601336c8982c0f4e93c52f` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitcocone--f33a52790db4cb492b02c349.md) | 173 | `declaration-track:f33a52790db4cb492b02c3496fe690429b3484aee558a3e9a0a64e4dfbd0e9f9` |
| 16 | `def` | [colimitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitdesc--9b9cefb84626d149cb53ded2.md) | 186 | `declaration-track:9b9cefb84626d149cb53ded224b9ce8eeb7350ee1210f02026e02fa1a9326e50` |
| 17 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/colimitcoconeiscolimit--fbbc743a61dc61912bd8b7f2.md) | 198 | `declaration-track:fbbc743a61dc61912bd8b7f2674177d45c19ed87b31a081451b8a6db276103a1` |
| 18 | `instance` | [forget₂AddCommGroupPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/forget-addcommgrouppreservesfilteredcolimits--116f5f492ac271a532a36696.md) | 211 | `declaration-track:116f5f492ac271a532a36696b2639ed750576bac9d7f57e0bc328680de420ff5` |
| 19 | `instance` | [forgetPreservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant4d0481626d2d45a9d269c1eaa233d494ff8be7e65fab59bbb8c4bb91807a4c45.lean/declarations/forgetpreservesfilteredcolimits--646f9ecc7f2f9b87e146bee9.md) | 223 | `declaration-track:646f9ecc7f2f9b87e146bee9c3f131f1c9897f3aed40785ab576df540537d227` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
