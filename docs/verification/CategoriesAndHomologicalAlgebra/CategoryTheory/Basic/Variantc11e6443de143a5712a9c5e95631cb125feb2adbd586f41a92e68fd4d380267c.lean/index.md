# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63ca844d310680e2708588ab8f6dd098fb99a0e8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63ca844d310680e2708588ab8f6dd098fb99a0e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Condensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/condensed--064e46a8b11616bf95ac1cc4.md) | 44 | `declaration-track:064e46a8b11616bf95ac1cc4842b1b8e427f4223d73d0772ef3424e969681dcd` |
| 2 | `abbrev` | [CondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/condensedset--2d2eaef963a50f347c36a7a8.md) | 51 | `declaration-track:2d2eaef963a50f347c36a7a8b03d5b85c2a243bb981bd83671237db514b7d16a` |
| 3 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/id-hom--095e376637b851f9ab34dcd7.md) | 58 | `result-track:095e376637b851f9ab34dcd72c9bb505a6fa4148c3c436143b201ef6990b1903` |
| 4 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/comp-hom--6adecc8c80dd75420b45d119.md) | 61 | `result-track:6adecc8c80dd75420b45d119352ff55d414e910a01dfae4d252176b3e3d273f6` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/hom-ext--1a2c2c6ed6d77d97f6252b26.md) | 68 | `result-track:1a2c2c6ed6d77d97f6252b26f208e7885bc4106b76698811387ec238d2b71213` |
| 6 | `lemma` | [hom_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc11e6443de143a5712a9c5e95631cb125feb2adbd586f41a92e68fd4d380267c.lean/declarations/hom-naturality-apply--3f23973c0c737d814dc276d4.md) | 78 | `result-track:3f23973c0c737d814dc276d45529f1cf89326845b3113dba749b443aba31aa8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
