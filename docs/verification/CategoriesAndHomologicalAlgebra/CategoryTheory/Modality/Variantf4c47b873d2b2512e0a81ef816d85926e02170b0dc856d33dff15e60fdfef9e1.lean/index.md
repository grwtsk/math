# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Modality.Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb89bb67e091d185c9367fc930c16d583c3e3b23",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb89bb67e091d185c9367fc930c16d583c3e3b23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.AffineTopos.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AffineModality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/declarations/affinemodality--8ce527f86119d1bcc614c503.md) | 7 | `declaration-track:8ce527f86119d1bcc614c50384f705f84695195491b7a851b4bf9213578f2d32` |
| 2 | `def` | [AffineModality.irreversible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/declarations/affinemodality-irreversible--ec6c0e10dd2b3e2e21e653ed.md) | 20 | `declaration-track:ec6c0e10dd2b3e2e21e653ede99923a02c7ca717073ca9d3d1d7a326bbfeafa2` |
| 3 | `structure` | [ModalityBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/declarations/modalityboundary--211ed546c86c430e4ef2e67e.md) | 24 | `declaration-track:211ed546c86c430e4ef2e67eb35cfe8996bb02ff93a718f084ff5f6e1fb324a3` |
| 4 | `theorem` | [irreversible_modality_visible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/declarations/irreversible-modality-visible--9318cc0cc78248bb9ed57625.md) | 29 | `result-track:9318cc0cc78248bb9ed576257443a29ffe8a4086edab22124e586992da987d75` |
| 5 | `theorem` | [reversibleFlow_modality_not_irreversible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1.lean/declarations/reversibleflow-modality-not-irreversible--140056eec5154ba15a909197.md) | 34 | `result-track:140056eec5154ba15a909197eab8e3bbb0452f8f3403de41b9bf1fd2f08a50d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
