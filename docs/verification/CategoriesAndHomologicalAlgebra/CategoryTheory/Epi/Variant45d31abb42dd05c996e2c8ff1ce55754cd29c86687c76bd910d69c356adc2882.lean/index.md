# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "113e16f54b2c8c316d7a37c39358414bf3796523",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `113e16f54b2c8c316d7a37c39358414bf3796523`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.LocallySurjective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Equivalence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Module` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-locallysurjective-on-comphaus--53b7b19e42975de966aaec16.md) | 40 | `result-track:53b7b19e42975de966aaec168d95710a45e137bf7a1ce2299e5c37dd50b2bc58` |
| 2 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-surjective-on-stonean--9e5cf43d51fbe8d4b25fe675.md) | 56 | `result-track:9e5cf43d51fbe8d4b25fe675ea19b45123359012290fd7aadad5401dda614ddf` |
| 3 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-locallysurjective-on-comphaus--fde6ce79d0026de7d64a884a.md) | 70 | `result-track:fde6ce79d0026de7d64a884a21f963fa1679a33332263ff84121559c73a2c6bc` |
| 4 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-surjective-on-stonean--cb5a21c822be5c8a839dd86a.md) | 77 | `result-track:cb5a21c822be5c8a839dd86ad438596928254ef00ee69dfda560a8be92a0304f` |
| 5 | `lemma` | [epi_iff_locallySurjective_on_compHaus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-locallysurjective-on-comphaus--73810901ecdb1ec58070eb53.md) | 88 | `result-track:73810901ecdb1ec58070eb53d84eedaf624ee1a0c350c2b9e00db4a5cd0c14b9` |
| 6 | `lemma` | [epi_iff_surjective_on_stonean](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant45d31abb42dd05c996e2c8ff1ce55754cd29c86687c76bd910d69c356adc2882.lean/declarations/epi-iff-surjective-on-stonean--bbcd055ac8d319e302821b11.md) | 95 | `result-track:bbcd055ac8d319e302821b1195545d6abe3ac68f7e2b4b782106bbcdafb2085c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
