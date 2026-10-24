# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomCongr.Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9536a0d158544b47d516aeed575cca98444429db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9536a0d158544b47d516aeed575cca98444429db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHomCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr--847a2a4b83bf0adc0a871601.md) | 40 | `declaration-track:847a2a4b83bf0adc0a871601e285ce45693b69abc85f6e775720e60951ab9c68` |
| 2 | `lemma` | [eHomCongr_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr-refl--653efd10cc0a18855b196587.md) | 53 | `result-track:653efd10cc0a18855b1965874e45517d9c0ec5e85fb8ff58f746506f4004d74d` |
| 3 | `lemma` | [eHomCongr_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr-trans--e81e51314a9e1de28771e49a.md) | 56 | `result-track:e81e51314a9e1de28771e49a75c634671b05698b47787b24b13a32314f9bc424` |
| 4 | `lemma` | [eHomCongr_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr-symm--70cee10eb68874ca9d267b5f.md) | 62 | `result-track:70cee10eb68874ca9d267b5f3d124b85d919c32d7b7183ce9d098c9e464bb589` |
| 5 | `lemma` | [eHomCongr_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr-comp--9e27552a4a5e2c7c57aee1e6.md) | 72 | `result-track:9e27552a4a5e2c7c57aee1e6d5ee3396d1cf37b3efce6c9cb64b01ab06c1a2e4` |
| 6 | `lemma` | [eHomCongr_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomCongr/Varianta97269a0acba3a72d51b2e45c549cb0669c9150cfec9d1f3794aebe69dd9f4f5.lean/declarations/ehomcongr-inv-comp--6b51375afc7f1fccdbadc184.md) | 87 | `result-track:6b51375afc7f1fccdbadc184252c4dfeb2dec8c9514db4513f9bce61bb777263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
