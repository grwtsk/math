# Verification target: GRWTSK.Algebra.Tower.Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c20d6c5b9a2bea6bf48efe13fdcb82b631e3e644",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c20d6c5b9a2bea6bf48efe13fdcb82b631e3e644`.

Source path: `GRWTSK/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lmul_algebraMap](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/lmul-algebramap--306596dce34875a9154f35c8.md) | 54 | `result-track:306596dce34875a9154f35c8c2466bd9d67dee9c152f9eb46e1d07ccdd4c4457` |
| 2 | `instance` | [subalgebra](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/subalgebra--f6f8617b3ef00659bbfaa83e.md) | 66 | `declaration-track:f6f8617b3ef00659bbfaa83eed0de82a44d9bad9b39b8e9217b231cc761598ce` |
| 3 | `instance` | [subalgebra'](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/subalgebra--cfe9e4fa472623f2c1550f23.md) | 71 | `declaration-track:cfe9e4fa472623f2c1550f231419bdb262c50ba45436d0378a1ee81248343dc7` |
| 4 | `def` | [restrictScalars](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/restrictscalars--50b59028fb79a1eeddf5b3ea.md) | 91 | `declaration-track:50b59028fb79a1eeddf5b3eadccd8faa1f271829db219ba88ef8b46b38424d4e` |
| 5 | `theorem` | [coe_restrictScalars](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/coe-restrictscalars--51ba2d3dff31645a3ba98dfb.md) | 98 | `result-track:51ba2d3dff31645a3ba98dfbb41cce39377a569f4d71e50d95607bf3718e3d0d` |
| 6 | `theorem` | [restrictScalars_top](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/restrictscalars-top--91146835215225607c88f44a.md) | 102 | `result-track:91146835215225607c88f44a2af3cc2a0197171450c9a5b032440c685ddc56bd` |
| 7 | `theorem` | [restrictScalars_toSubmodule](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/restrictscalars-tosubmodule--e8312fe233816390de92c5b1.md) | 108 | `result-track:e8312fe233816390de92c5b174c350bdfadb1f09e073938b393f6082a5ecb532` |
| 8 | `theorem` | [mem_restrictScalars](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/mem-restrictscalars--7bef32f4c01036d67b1cdae7.md) | 113 | `result-track:7bef32f4c01036d67b1cdae757de2db8e882cbe363dfd8a565dc12533c953618` |
| 9 | `theorem` | [restrictScalars_injective](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/restrictscalars-injective--66fca5dd3648bf0d175f29e3.md) | 116 | `result-track:66fca5dd3648bf0d175f29e3412997173e51ed1e68b9794ec1beca2ccf7ac2db` |
| 10 | `def` | [ofRestrictScalars](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/ofrestrictscalars--9eb7adadc0d8495bc6e6c6e7.md) | 124 | `declaration-track:9eb7adadc0d8495bc6e6c6e77b44397c950621703d85b830fca793bd6ac2adc9` |
| 11 | `theorem` | [restrictScalars_one](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/restrictscalars-one--6b4e459a6a3648c5983e63cb.md) | 134 | `result-track:6b4e459a6a3648c5983e63cbac071e269214ffdbcce36b1b4bbba42f283323de` |
| 12 | `theorem` | [codisjoint_one_iff](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/codisjoint-one-iff--0da19ac496ce95fffb30c5ea.md) | 138 | `result-track:0da19ac496ce95fffb30c5ea635cb5964671141623aa67837ea1e439c940e073` |
| 13 | `theorem` | [disjoint_one_iff](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/disjoint-one-iff--7835a200660e8119006513b4.md) | 143 | `result-track:7835a200660e8119006513b4923feb262e19e41f622dffafd6d59ef4f88966cf` |
| 14 | `lemma` | [range_isScalarTower_toAlgHom](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/range-isscalartower-toalghom--095ee1253917ed5a29dbf0eb.md) | 149 | `result-track:095ee1253917ed5a29dbf0ebbf93e71f1ad9adaf8dd7456fb12124a5c92f8b7d` |
| 15 | `theorem` | [adjoin_range_toAlgHom](../../../../mathematics/Algebra/Tower/Variant6c975bf4f2ac889a3aa7bcb9b8d24bc08dbb92b1d6b683c902618ebfd61268b6.lean/declarations/adjoin-range-toalghom--da7237db09ce52a5f7214c61.md) | 165 | `result-track:da7237db09ce52a5f7214c61f5ef8b666fa3440b96d5b20006d9214c4d0d5509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
