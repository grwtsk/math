# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorOfCocone.Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a472da9cbf939437306651eaf5d0df118619195",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a472da9cbf939437306651eaf5d0df118619195`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean.json)

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
| 1 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/obj--01bb7fbfcdbefcab7a9909f3.md) | 38 | `declaration-track:01bb7fbfcdbefcab7a9909f31effd593a5b59fada805febd01c1d90b074e9fcf` |
| 2 | `def` | [objIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/objiso--80b7453bd13594f7bdd80038.md) | 44 | `declaration-track:80b7453bd13594f7bdd80038431cb6c99d6a4d3201bc97e35b8aae0e1757fe2c` |
| 3 | `def` | [objIsoPt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/objisopt--1adee68e1e1ba3c64eb5a898.md) | 49 | `declaration-track:1adee68e1e1ba3c64eb5a898e50ac93e8e0abf33d18ee37b6e5a68026f89c159` |
| 4 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/map--630d6ccce891c7544444b3b9.md) | 54 | `declaration-track:630d6ccce891c7544444b3b964239206e8259d627975714834788f3b83b2d0dc` |
| 5 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/map-id--7ea3e97e3f56afd0ca99a5e3.md) | 66 | `result-track:7ea3e97e3f56afd0ca99a5e3206cdd88adf540f266abe0011de3190b791d6c4a` |
| 6 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/map-comp--04affc8c6a19a744c711fe08.md) | 72 | `result-track:04affc8c6a19a744c711fe082ab80cb6f0ecc47e5a3b1efa4da91d0acb83429a` |
| 7 | `def` | [ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcocone--26080ed03c12123fa78f95f8.md) | 93 | `declaration-track:26080ed03c12123fa78f95f8c9185314d9218e0931eec31d86812547e9e3f115` |
| 8 | `lemma` | [ofCocone_obj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcocone-obj-eq--c5c113eef7af414e422af555.md) | 99 | `result-track:c5c113eef7af414e422af555d7bb20d2e0a7f4402d309fed76aa0d1528b021dd` |
| 9 | `def` | [ofCoconeObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcoconeobjiso--a6036b04ad2ce355c1d9a14b.md) | 104 | `declaration-track:a6036b04ad2ce355c1d9a14b2d2abe43be9a80b8640d51d46ef556bfd7c9d42f` |
| 10 | `lemma` | [ofCocone_obj_eq_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcocone-obj-eq-pt--e136679ee5a6f789aa5c839b.md) | 108 | `result-track:e136679ee5a6f789aa5c839b6e8818b2764daa6a8c59b12714f157466fff3f5f` |
| 11 | `def` | [ofCoconeObjIsoPt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcoconeobjisopt--aecbfaeaad43e276281a0431.md) | 113 | `declaration-track:aecbfaeaad43e276281a04316715b28181b8166f60e1a4f2e1fc362294be48c7` |
| 12 | `lemma` | [ofCocone_map_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcocone-map-to-top--fb80f3b4473b45601e234ebb.md) | 117 | `result-track:fb80f3b4473b45601e234ebb726c1fa302099b5687c89f1887ed4a3e04b97393` |
| 13 | `lemma` | [ofCocone_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcocone-map--a7ff52cfc3c2a8de5b8d1f60.md) | 124 | `result-track:a7ff52cfc3c2a8de5b8d1f60af9ebd8e7a9b460bf5e9731c62df614b09de6773` |
| 14 | `lemma` | [ofCoconeObjIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/ofcoconeobjiso-hom-naturality--d1e201155d33a7b882dc110a.md) | 132 | `result-track:d1e201155d33a7b882dc110a776f2054fc3ce29735a7e87c9b6763df25d9f79e` |
| 15 | `def` | [restrictionLTOfCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/restrictionltofcoconeiso--601028adba7edc57353635ea.md) | 141 | `declaration-track:601028adba7edc57353635ea560a707b444ddfff6e5939d2af7aae5d764925be` |
| 16 | `def` | [isColimitCoconeOfLEOfCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/iscolimitcoconeofleofcocone--1f046cdc4357a4f2a2b19a25.md) | 150 | `declaration-track:1f046cdc4357a4f2a2b19a25408653df77f7fc5b197778b6074a21a3a1e950d8` |
| 17 | `lemma` | [arrowMap_ofCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/arrowmap-ofcocone--aeeb827f9b749e13efab406c.md) | 158 | `result-track:aeeb827f9b749e13efab406cc767f8e298419f6ee850cae592cc403f8bd13800` |
| 18 | `lemma` | [arrowMap_ofCocone_to_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/declarations/arrowmap-ofcocone-to-top--f4ef5aa1f7ff34431d2b586d.md) | 163 | `result-track:f4ef5aa1f7ff34431d2b586d69d7bd09df624436e0bedbc76747626df249a198` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
