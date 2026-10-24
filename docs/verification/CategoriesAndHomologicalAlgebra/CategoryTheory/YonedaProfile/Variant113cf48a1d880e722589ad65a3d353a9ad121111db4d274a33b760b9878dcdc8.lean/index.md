# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.YonedaProfile.Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d37bc138901b5f0199d7fccf2281e3e78d3ea11",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d37bc138901b5f0199d7fccf2281e3e78d3ea11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Yoneda` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompleteMorphismProfile](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/declarations/completemorphismprofile--32d83829264f4281be3d6ad6.md) | 20 | `declaration-track:32d83829264f4281be3d6ad69e9f6b06b074a1229fac48ffbbe5531c4343dd64` |
| 2 | `def` | [profileIsoOfObjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/declarations/profileisoofobjectiso--ea157acca384e2c482afc1b6.md) | 24 | `declaration-track:ea157acca384e2c482afc1b6381bc0f34a8c08b0bfc547d543db42f862af4d3b` |
| 3 | `def` | [reconstructIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/declarations/reconstructiso--e673f3db564eaf479b2cef92.md) | 32 | `declaration-track:e673f3db564eaf479b2cef92086dc1e6418939912767b2bcd465aa0a06f5c204` |
| 4 | `theorem` | [reconstructIso_profileIsoOfObjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/declarations/reconstructiso-profileisoofobjectiso--d3a7a53e733e13335fb6d455.md) | 41 | `result-track:d3a7a53e733e13335fb6d4557dd16edd6bb62debaa4b87fd459760433335e239` |
| 5 | `theorem` | [profileIso_nonempty_iff_objectIso_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/YonedaProfile/Variant113cf48a1d880e722589ad65a3d353a9ad121111db4d274a33b760b9878dcdc8.lean/declarations/profileiso-nonempty-iff-objectiso-nonempty--fe08ee55d2a8c62494b35e8d.md) | 51 | `result-track:fe08ee55d2a8c62494b35e8dd551b13ad8768f87bc0d52a056c69e17e8a732c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
