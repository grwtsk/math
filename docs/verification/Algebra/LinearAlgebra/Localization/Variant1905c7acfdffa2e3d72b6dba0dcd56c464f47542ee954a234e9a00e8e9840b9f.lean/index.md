# Verification target: GRWTSK.Algebra.LinearAlgebra.Localization.Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a62a01a3892661223b1bda984d622c8fb2508a76",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a62a01a3892661223b1bda984d622c8fb2508a76`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Stability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Exactness` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/islocalization-flat--c1fa7ce1026e98633aa232bd.md) | 32 | `result-track:c1fa7ce1026e98633aa232bdbcf5ba96313bf01efc0d3516d43800b077cf5335` |
| 2 | `instance` | [Localization.flat](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/localization-flat--ce878c7c504ad757f7153b2f.md) | 40 | `declaration-track:ce878c7c504ad757f7153b2f1552dc44d288d04a0a0a562aa83b6cc53aa92058` |
| 3 | `theorem` | [flat_iff_of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/flat-iff-of-islocalization--0806c6cb200a291582652880.md) | 45 | `result-track:0806c6cb200a2915826528806226ec9d314dba42c390233dde0f07dcf1cd55df` |
| 4 | `theorem` | [flat_of_isLocalized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/flat-of-islocalized-maximal--e1664cb5530e841314cf6dfb.md) | 59 | `result-track:e1664cb5530e841314cf6dfbbcc7f7d0022a2b4e0fec408b7f2a28811452f9a9` |
| 5 | `theorem` | [flat_of_localized_maximal](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/flat-of-localized-maximal--9c9dc11114357e21945f7bfd.md) | 68 | `result-track:9c9dc11114357e21945f7bfdc40215d5b7323dd3e67436cad003107177d99d04` |
| 6 | `theorem` | [flat_of_isLocalized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/flat-of-islocalized-span--30b624b148d5c115f8bc495f.md) | 84 | `result-track:30b624b148d5c115f8bc495fc8fa4e0a8a3d50c7b52139053501c18eac16b328` |
| 7 | `theorem` | [flat_of_localized_span](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/flat-of-localized-span--e33190aaf59df0b08fe74eda.md) | 93 | `result-track:e33190aaf59df0b08fe74edaa977c25bcb00d1b982a9c04e7f032acb7d25ece0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/declarations/instance--7881a1f1c9c3e7ec64b60e6f.md) | 102 | `declaration-track:7881a1f1c9c3e7ec64b60e6fd1557a30fd101f2ede89348a568e6101bdc88df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
