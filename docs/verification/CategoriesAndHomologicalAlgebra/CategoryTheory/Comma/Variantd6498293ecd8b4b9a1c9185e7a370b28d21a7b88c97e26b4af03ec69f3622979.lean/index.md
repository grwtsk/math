# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5830679e2e5490bd298c17423cfbb292cd459c00",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5830679e2e5490bd298c17423cfbb292cd459c00`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftAdjointOfStructuredArrowInitialsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/leftadjointofstructuredarrowinitialsaux--ebc492cd57e1b77c1fd677df.md) | 52 | `declaration-track:ebc492cd57e1b77c1fd677df30fe1fd0b4687e8fed676116384c134e80093fbb` |
| 2 | `def` | [leftAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/leftadjointofstructuredarrowinitials--65970b9fb9bd14de6d147f88.md) | 71 | `declaration-track:65970b9fb9bd14de6d147f8810a3bed84b8821529eea0831443db8f589353c6e` |
| 3 | `def` | [adjunctionOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/adjunctionofstructuredarrowinitials--0446e9e5514d9d87dc40c5f8.md) | 78 | `declaration-track:0446e9e5514d9d87dc40c5f837fb5c13fc6d42bb14cd32bdc633cb0559af3f7e` |
| 4 | `lemma` | [isRightAdjointOfStructuredArrowInitials](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/isrightadjointofstructuredarrowinitials--012658446b03c831cfcb811e.md) | 82 | `result-track:012658446b03c831cfcb811e01d66590eda4fe349ea28f88d634d58065f3c521` |
| 5 | `def` | [rightAdjointOfCostructuredArrowTerminalsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/rightadjointofcostructuredarrowterminalsaux--3ddd90ba304dda0728702fa5.md) | 96 | `declaration-track:3ddd90ba304dda0728702fa5bce3e08292048585dd34256f14c3fefa8549e509` |
| 6 | `def` | [rightAdjointOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/rightadjointofcostructuredarrowterminals--bf2aa0cf1b639178909ed3b8.md) | 114 | `declaration-track:bf2aa0cf1b639178909ed3b8627f3b95e32d9b603e49203215ce513c6d905c75` |
| 7 | `def` | [adjunctionOfCostructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/adjunctionofcostructuredarrowterminals--05ec81213ef2fa0203713d46.md) | 123 | `declaration-track:05ec81213ef2fa0203713d468ec7ef0bed03ed7cb8fa401a4c7e509368cbe389` |
| 8 | `lemma` | [isLeftAdjoint_of_costructuredArrowTerminals](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/isleftadjoint-of-costructuredarrowterminals--dd9e9f7bcb15cef16eba4a5b.md) | 127 | `result-track:dd9e9f7bcb15cef16eba4a5b5297310af5b050f81b2a5d1e5ce4d4791441e91b` |
| 9 | `def` | [mkInitialOfLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/mkinitialofleftadjoint--8b6916e09b1080206a095bf5.md) | 141 | `declaration-track:8b6916e09b1080206a095bf5b53b4d8be8ba489b4365cc6749a6773fb39af493` |
| 10 | `def` | [mkTerminalOfRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/mkterminalofrightadjoint--fbcbeb1b35c30ac2069a0fec.md) | 150 | `declaration-track:fbcbeb1b35c30ac2069a0feca956c150870488d3695dd006d607a968958f1be4` |
| 11 | `theorem` | [isRightAdjoint_iff_hasInitial_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/isrightadjoint-iff-hasinitial-structuredarrow--35c03384cbd4b9fcad24da7b.md) | 159 | `result-track:35c03384cbd4b9fcad24da7b8fb92e27b0670d561a96f059784a124e310bbc49` |
| 12 | `theorem` | [isLeftAdjoint_iff_hasTerminal_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantd6498293ecd8b4b9a1c9185e7a370b28d21a7b88c97e26b4af03ec69f3622979.lean/declarations/isleftadjoint-iff-hasterminal-costructuredarrow--85b39dc1bb25909c5a9bec08.md) | 164 | `result-track:85b39dc1bb25909c5a9bec0875087b8e5fdae5dc43f5b48d271a82228c0cca1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
