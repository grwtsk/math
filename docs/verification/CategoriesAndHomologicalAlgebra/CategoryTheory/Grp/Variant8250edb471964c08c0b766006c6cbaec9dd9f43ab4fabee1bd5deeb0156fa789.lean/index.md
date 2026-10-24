# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d79d9181f92a663290f5feab6ee01b38dfac444",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d79d9181f92a663290f5feab6ee01b38dfac444`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grp_Class.ofRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/grp-class-ofrepresentableby--79bfaf093af8895dc8e75efe.md) | 25 | `declaration-track:79bfaf093af8895dc8e75efe4f52254900aad7a99c0729f9f19d27138ea57d6d` |
| 2 | `abbrev` | [Hom.group](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/hom-group--ef79e9b1581eb954f6ab9032.md) | 49 | `declaration-track:ef79e9b1581eb954f6ab9032f97c43fd381f1934ee8f17ac1d7f8050aa3d7d6f` |
| 3 | `lemma` | [Hom.inv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/hom-inv-def--8aa07284154e58480dd515e3.md) | 59 | `result-track:8aa07284154e58480dd515e36d22166538777b74506c2d0c9e442f3de914c4d6` |
| 4 | `def` | [yonedaGrpObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrpobj--89a3ae925e84726e6dbe869f.md) | 64 | `declaration-track:89a3ae925e84726e6dbe869fc7d6e25a323f667a6a68ce4de02d47d6e3ab159e` |
| 5 | `def` | [yonedaGrpObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrpobjrepresentableby--ccf4ce9de4066b83bc1299fe.md) | 70 | `declaration-track:ccf4ce9de4066b83bc1299fe6df4ce2514a3a778626eddafe72c963366c0bbe9` |
| 6 | `lemma` | [Grp_Class.ofRepresentableBy_yonedaGrpObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/grp-class-ofrepresentableby-yonedagrpobjrepresentableby--7b442f4c9518436d3e38e5d7.md) | 74 | `result-track:7b442f4c9518436d3e38e5d7c7de79f2499c188e68227b4cc52f0a941829ce62` |
| 7 | `def` | [yonedaGrpObjIsoOfRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrpobjisoofrepresentableby--76503826b3b9f1a6a4edda58.md) | 82 | `declaration-track:76503826b3b9f1a6a4edda5866616c5f4466d38f917f7ab3c02b51ce25172eb9` |
| 8 | `def` | [yonedaGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrp--7e82280172f385d993de2a48.md) | 94 | `declaration-track:7e82280172f385d993de2a48dc9343018236ca6d176e56bb6bb258f20f5fafba` |
| 9 | `lemma` | [yonedaGrp_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrp-naturality--af4afeba637543cec5500cdc.md) | 99 | `result-track:af4afeba637543cec5500cdca3af6754cc50f8b82d3ad8c5694e01e2dba38af8` |
| 10 | `def` | [yonedaGrpFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/yonedagrpfullyfaithful--92f80ad5031503572337df42.md) | 103 | `declaration-track:92f80ad5031503572337df42f60e99a8166435a1b6dee4f3ceac4bd198565a45` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/instance--d7d9f1a515b3411c56a97790.md) | 111 | `declaration-track:d7d9f1a515b3411c56a97790b91b4eac2c7ec2a3e34ac23bfc6e97a6c1c7fb95` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/instance--3b6082fdf6f8123355f9fc3d.md) | 112 | `declaration-track:3b6082fdf6f8123355f9fc3d63c42776d649a8352085ae283aab355120212f80` |
| 13 | `lemma` | [essImage_yonedaGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/essimage-yonedagrp--ec179f818cbc4371b96ec0f9.md) | 114 | `result-track:ec179f818cbc4371b96ec0f94bede3d96b10fb6bc1ed07ebfd595bd4230070af` |
| 14 | `lemma` | [Grp_Class.comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/grp-class-comp-inv--146e77698d07dd138d3e8399.md) | 125 | `result-track:146e77698d07dd138d3e83992950627f27f3e243c87e49067650b066ee328560` |
| 15 | `lemma` | [Grp_Class.inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/grp-class-inv-comp--bbbc77a445559af3d133c74f.md) | 129 | `result-track:bbbc77a445559af3d133c74fb55ccc45d464b89fc830049972bc412b9c39eaaa` |
| 16 | `lemma` | [Grp_Class.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/declarations/grp-class-inv-eq-inv--aee5b8cfc7fb51028648c8af.md) | 132 | `result-track:aee5b8cfc7fb51028648c8af7c2f79c622d17477d422d44838501a779b47668c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
