# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizer.Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a477b1c954cda12981a597ca263e04c1b0fc4d7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a477b1c954cda12981a597ca263e04c1b0fc4d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer--8dd6ddd2ef025bcdc6ead9cd.md) | 31 | `declaration-track:8dd6ddd2ef025bcdc6ead9cda386d95d4eea825f0a77b51aacba5511f0b9cea6` |
| 2 | `lemma` | [equalizer_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-le--02fa51423661b02e4ffdb712.md) | 41 | `result-track:02fa51423661b02e4ffdb712e65cb313f5cdccc94f7a31e10fec3e6eebe8f6fc` |
| 3 | `lemma` | [equalizer_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-self--f8aad584ee8dafd86f5f332b.md) | 45 | `result-track:f8aad584ee8dafd86f5f332ba33976f187801aa2532cd7b5b989659b9f95870a` |
| 4 | `lemma` | [mem_equalizer_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/mem-equalizer-iff--a4fbd4256eb1ad66e73eb209.md) | 47 | `result-track:a4fbd4256eb1ad66e73eb2093d375f1f14162d60c34b6e0c4611c5152279a049` |
| 5 | `lemma` | [range_le_equalizer_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/range-le-equalizer-iff--7820fe424f64094a48cc7543.md) | 51 | `result-track:7820fe424f64094a48cc7543715efa4703c12610e873ab2b39232adcdc90f237` |
| 6 | `lemma` | [equalizer_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-eq-iff--a17fc49e64a1a7088a584094.md) | 56 | `result-track:a17fc49e64a1a7088a5840941654692ed463eda51d2eea162f177fe6175d207c` |
| 7 | `def` | [equalizer.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer--fe425fdcf5b1038638efd3f5.md) | 69 | `declaration-track:fe425fdcf5b1038638efd3f57500f1828afba5e576a30d04a2e19717000884dd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/instance--440e61cf24f180a7bec13db3.md) | 72 | `declaration-track:440e61cf24f180a7bec13db322ba85271632a8db1af72f28c73968a1085ef81e` |
| 9 | `lemma` | [equalizer.ι_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer--20c8d31b8fd90d285091a479.md) | 77 | `result-track:20c8d31b8fd90d285091a479e014cf1b9ed0af38c2ee67e0ee8726b15cf40f22` |
| 10 | `lemma` | [equalizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-condition--c522ffa6aa69d5e4ff2a5b03.md) | 80 | `result-track:c522ffa6aa69d5e4ff2a5b03b6cfc64f3a44a6de219bab84c3a61eb8f04d0780` |
| 11 | `def` | [equalizer.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-lift--2ca7fecb5f82358f89540099.md) | 88 | `declaration-track:2ca7fecb5f82358f895400994728bd8a5ab7b84bc52928a4770569b30eb62dd0` |
| 12 | `lemma` | [equalizer.lift_ι'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-lift--f1d5ccfbc339d955f5a39f1a.md) | 94 | `result-track:f1d5ccfbc339d955f5a39f1a23d06172cef3340a022d70bdada4db2cbc19275a` |
| 13 | `lemma` | [equalizer.lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-lift--598a8784b5a1e69f488fa764.md) | 100 | `result-track:598a8784b5a1e69f488fa76408e36a5ce1f1a437d748b11c810a2ff989c02dce` |
| 14 | `def` | [equalizer.fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-fork--68423401d31149c2e4deaca5.md) | 108 | `declaration-track:68423401d31149c2e4deaca5cdaa3e16c0c9d00547ffdbc3a6d2f8e18de16298` |
| 15 | `lemma` | [equalizer.fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-fork--ef4d19cff033430e4e462346.md) | 112 | `result-track:ef4d19cff033430e4e462346b70c4da90290cf9a75854b5cee85514af43d060c` |
| 16 | `def` | [equalizer.forkIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variant3064b49d1d0862d24979754601bcdb7619b0b590cd740f0f4fe47f3e5f14adca.lean/declarations/equalizer-forkislimit--08c6580bd4519662ea4b8904.md) | 116 | `declaration-track:08c6580bd4519662ea4b8904c07190bf3eb6814462293f2e5cb6a850f379a88f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
