# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Naturality.Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "823b5afc6434ca11870ab2e7d54f156f53097984",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `823b5afc6434ca11870ab2e7d54f156f53097984`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Construction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatTrans` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/declarations/natural--fe2fb2aecd19a5e329c8deb6.md) | 18 | `declaration-track:fe2fb2aecd19a5e329c8deb617c591a27f8309e00082d802a3b7465d146caede` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/declarations/id--ddb347345f76f4bff968e656.md) | 26 | `declaration-track:ddb347345f76f4bff968e6568abcb74e2edd1cc39cb03feef9297568713117eb` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/declarations/comp--17ad588ba35c6d75f9b6187e.md) | 32 | `declaration-track:17ad588ba35c6d75f9b6187e499515000bc3cd43dd1740b466972865d8d5ebe5` |
| 4 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/declarations/id-hom--bdce24256a025d5a5da77e99.md) | 40 | `result-track:bdce24256a025d5a5da77e99b4354eef5a6cb2aae9d755025ca634a53867c7bd` |
| 5 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variant5c533682d1389f99edbf7be114d2068d6b2ae59e518300fe968b29339f21c0b9.lean/declarations/comp-hom--42c5ee780f89ddef0301039d.md) | 47 | `result-track:42c5ee780f89ddef0301039d92cc7135dea69868fa2cb1feb307d8319df9a05a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
