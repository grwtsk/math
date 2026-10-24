# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da4df98687771b8031e52a5746ad2be94f15fd93",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da4df98687771b8031e52a5746ad2be94f15fd93`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.GroupCohomology.Resolution` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [linearYonedaObjResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/linearyonedaobjresolution--f7fbd97bceca68db28612475.md) | 90 | `declaration-track:f7fbd97bceca68db28612475b7dafcf63fc449b6e25977aca6229bbc386b3f0c` |
| 2 | `theorem` | [linearYonedaObjResolution_d_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/linearyonedaobjresolution-d-apply--3c156f18416a61c6c22c7353.md) | 95 | `result-track:3c156f18416a61c6c22c7353ace96d35eda1069318107b297455d11b0b4c4f4c` |
| 3 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/d--c823e1ae72ec91924006d63d.md) | 109 | `declaration-track:c823e1ae72ec91924006d63d85a41e8f2fa2ac431ddebe6c1edb18b707f752d8` |
| 4 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/d-eq--841348f2cb35c8591c94fab4.md) | 132 | `result-track:841348f2cb35c8591c94fab4893f40bbb7166f3bf68052401f7fddfa876b3cf6` |
| 5 | `abbrev` | [inhomogeneousCochains](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/inhomogeneouscochains--5db49e87e914f4959fa9cec4.md) | 187 | `declaration-track:5db49e87e914f4959fa9cec4a11428c373fb5b3819b02796975fbf7cfac9a04c` |
| 6 | `def` | [inhomogeneousCochainsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/inhomogeneouscochainsiso--e7d7e7f724a1b2ea5a139520.md) | 213 | `declaration-track:e7d7e7f724a1b2ea5a13952035edab6ba8e10c375c3db6518ad7ce7bc7a8d56a` |
| 7 | `def` | [groupCohomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/groupcohomology--4f5f927bf5a642d900b7ee42.md) | 229 | `declaration-track:4f5f927bf5a642d900b7ee42d1c2de4aac35720e75b4661b1197d55daca7141b` |
| 8 | `def` | [groupCohomologyIsoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantb0fb68a5e5d972d2cb77c462db9e1d60539e25bfb8bdbb698f36f2b8b459d174.lean/declarations/groupcohomologyisoext--80bbfae1a787440c13642bf0.md) | 236 | `declaration-track:80bbfae1a787440c13642bf0ef867e8e9df4a428d289ccc91e48116f796262ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
