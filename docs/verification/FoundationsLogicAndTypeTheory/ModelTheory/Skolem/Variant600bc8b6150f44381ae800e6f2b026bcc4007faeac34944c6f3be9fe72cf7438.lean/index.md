# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Skolem.Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2910278fb18bb039a8b870dba203cf079fa837`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementaryMaps` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/skolem--7e18daf274b458e4a43fe8f1.md) | 43 | `declaration-track:7e18daf274b458e4a43fe8f1864605d59fc5871279e7872a73e2b5f249414da8` |
| 2 | `theorem` | [card_functions_sum_skolem₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/card-functions-sum-skolem--d44c82a4d32b0ef4342974ed.md) | 50 | `result-track:d44c82a4d32b0ef4342974ed562b0c46bb5cba785d910c5982a3adbd9a79f398` |
| 3 | `theorem` | [card_functions_sum_skolem₁_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/card-functions-sum-skolem-le--97a23ce8a3c77a8dd1820ca0.md) | 65 | `result-track:97a23ce8a3c77a8dd1820ca0f7a1502539573b682c4ddafa6082c98ccfb6506e` |
| 4 | `instance` | [skolem₁Structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/skolem-structure--70cfa2bb7ae53373b6c874be.md) | 78 | `declaration-track:70cfa2bb7ae53373b6c874bed05304a9b8b283699421e422612f74795522770f` |
| 5 | `theorem` | [skolem₁_reduct_isElementary](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/skolem-reduct-iselementary--177f192c9a4e2492ae18778a.md) | 86 | `result-track:177f192c9a4e2492ae18778a070085797ad4ed179d6956228e0b1db20b4124b1` |
| 6 | `def` | [elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/elementaryskolem-reduct--e4f74141d736509cda913d7f.md) | 99 | `declaration-track:e4f74141d736509cda913d7fcc2857454f9e3732b7396a04288af57f65d2398c` |
| 7 | `theorem` | [coeSort_elementarySkolem₁Reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/coesort-elementaryskolem-reduct--96135aceac4f11029ed53084.md) | 104 | `result-track:96135aceac4f11029ed5308472d6880f61233fab8dbb0bbc46d38b7b9239d587` |
| 8 | `instance` | [Substructure.elementarySkolem₁Reduct.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/substructure-elementaryskolem-reduct-instsmall--842716c9fd96ae4407051642.md) | 115 | `declaration-track:842716c9fd96ae440705164275db50a88ee10e1082286bb908e5da7510641516` |
| 9 | `theorem` | [exists_small_elementarySubstructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/exists-small-elementarysubstructure--3c77ecfe270cc9d8b75d1352.md) | 121 | `result-track:3c77ecfe270cc9d8b75d135291db68765a072f5332aeaff3f2850c7c4b3f74a9` |
| 10 | `theorem` | [exists_elementarySubstructure_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/declarations/exists-elementarysubstructure-card-eq--c16f8c2f40668d26af4ee299.md) | 131 | `result-track:c16f8c2f40668d26af4ee299ecbf9ea1823f849bfbb0c2d10487fc3e819a1318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
