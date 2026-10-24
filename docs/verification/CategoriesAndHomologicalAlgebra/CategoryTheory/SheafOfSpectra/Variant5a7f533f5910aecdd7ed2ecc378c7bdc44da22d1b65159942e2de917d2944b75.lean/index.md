# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfSpectra.Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1876205bf987f7ed66c489c2a104237b7b55593a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1876205bf987f7ed66c489c2a104237b7b55593a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.ResearchTopos.GrothendieckTopology` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.AdelicInfinityTopos.SpectrumObject` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfSpectra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/declarations/presheafofspectra--38f14b8761d0cb25ff991524.md) | 21 | `declaration-track:38f14b8761d0cb25ff9915242b585f3aa835f1da974c09b358a8dbe767501d4f` |
| 2 | `structure` | [SheafOfSpectra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/declarations/sheafofspectra--888a1d3f68bf3cd64faf741e.md) | 28 | `declaration-track:888a1d3f68bf3cd64faf741e6c10fb3da00bc8c19b0a63cac4197151a75a68e9` |
| 3 | `theorem` | [sheaf_of_spectra_has_descent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/declarations/sheaf-of-spectra-has-descent--b9685633d232d19c0156e91d.md) | 38 | `result-track:b9685633d232d19c0156e91d4e83f60906838a442278caa6ff1f52c727f6c1ca` |
| 4 | `theorem` | [sheaf_of_spectra_has_hyperdescent](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfSpectra/Variant5a7f533f5910aecdd7ed2ecc378c7bdc44da22d1b65159942e2de917d2944b75.lean/declarations/sheaf-of-spectra-has-hyperdescent--adcd72589e1ba7f803976f9f.md) | 45 | `result-track:adcd72589e1ba7f803976f9f7ffd9c0f2533b5e386cc85ccd367ae06258ca7e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
