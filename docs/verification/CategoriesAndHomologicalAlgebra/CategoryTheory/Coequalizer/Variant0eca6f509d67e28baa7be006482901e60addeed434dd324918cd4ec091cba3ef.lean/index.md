# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coequalizer.Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af539a9d3260db01559e4299562bbc7f567c5d5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af539a9d3260db01559e4299562bbc7f567c5d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitCoequalizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCoequalizer.topMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/freecoequalizer-topmap--6e1331d30fe975c7968fce29.md) | 45 | `declaration-track:6e1331d30fe975c7968fce295ec024dc1474ae2d2bf2387b7bb8278460bd3361` |
| 2 | `def` | [FreeCoequalizer.bottomMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/freecoequalizer-bottommap--4d3f86cdd15e9e71c75cda50.md) | 50 | `declaration-track:4d3f86cdd15e9e71c75cda50d37794970f6ad254afedad43bb128398e321dfbf` |
| 3 | `def` | [FreeCoequalizer.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/freecoequalizer--17ba9733ca6d6ed986643014.md) | 56 | `declaration-track:17ba9733ca6d6ed9866430143b58cc38696030f17fb0c2465fab763287d1a4cd` |
| 4 | `theorem` | [FreeCoequalizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/freecoequalizer-condition--29c2c18bed73d0fd88980db8.md) | 60 | `result-track:29c2c18bed73d0fd88980db838488eb8f8734cf95d5429bca5a76b51699043e9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/instance--aa71a81f95ce21f0cddcf0c6.md) | 65 | `declaration-track:aa71a81f95ce21f0cddcf0c66101ea08704e0070acfeda49e3cabea840128dcf` |
| 6 | `def` | [beckAlgebraCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckalgebracofork--a83c61980c4b1a0493d1df58.md) | 78 | `declaration-track:a83c61980c4b1a0493d1df58a384e8edca89bb7b3d396cc65aaa5c5f2c1ad8e5` |
| 7 | `def` | [beckAlgebraCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckalgebracoequalizer--d29ab7ed16828657acb66310.md) | 84 | `declaration-track:d29ab7ed16828657acb663108c8112679988574df05bd5e03d6b9eea60a6d66a` |
| 8 | `def` | [beckSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/becksplitcoequalizer--16998281336cb7a112437b03.md) | 102 | `declaration-track:16998281336cb7a112437b03ae05d0f48c74c0ebe44b0f73c1e9bda0a76cb062` |
| 9 | `def` | [beckCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckcofork--8132dfa34a15b89621d4dded.md) | 107 | `declaration-track:8132dfa34a15b89621d4dded279b380c8004796055ab6a09a480f3c25fa0b19f` |
| 10 | `theorem` | [beckCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckcofork--163dbbe09965d83cabeb7c37.md) | 111 | `result-track:163dbbe09965d83cabeb7c37fcae59a0193aad97cf887614a975e3c6221aa16c` |
| 11 | `def` | [beckCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckcoequalizer--6e7728f1854e520d65991317.md) | 115 | `declaration-track:6e7728f1854e520d659913178a08c369d2146e90922164c943207255b8bc9c7d` |
| 12 | `theorem` | [beckCoequalizer_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Variant0eca6f509d67e28baa7be006482901e60addeed434dd324918cd4ec091cba3ef.lean/declarations/beckcoequalizer-desc--f1d62ffb3aca54e42fdc1bab.md) | 119 | `result-track:f1d62ffb3aca54e42fdc1babfce1e139cfd387670fe419030b9b781fbeb07e99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
