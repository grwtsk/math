# Verification target: GRWTSK.Topology.GeneralTopology.ENNReal.Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "070e1fd7e0c7026414aae3dcf182d9517ca6e6b5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `070e1fd7e0c7026414aae3dcf182d9517ca6e6b5`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/eventually-le-limsup--8703c8459158549179c321a5.md) | 31 | `result-track:8703c8459158549179c321a568fdc2430b4b535d8db96eed392731eca1856fbd` |
| 2 | `theorem` | [limsup_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-eq-zero-iff--3071a49e36bfd439f97cb49d.md) | 36 | `result-track:3071a49e36bfd439f97cb49d004b1e99d5a9eecccba983433acb6cb706cbc39c` |
| 3 | `theorem` | [limsup_const_mul_of_ne_top](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-const-mul-of-ne-top--56528d7c33337448c4a80757.md) | 41 | `result-track:56528d7c33337448c4a80757b2482e13bcd847c9920ad56d9a997579a0bb74a9` |
| 4 | `theorem` | [limsup_const_mul](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-const-mul--7b457de960cf32091ef83445.md) | 58 | `result-track:7b457de960cf32091ef8344520df0a18dc5ee36d6260734642b35524cd2108eb` |
| 5 | `theorem` | [limsup_mul_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-mul-le--f54c01f1932143db9a9c260a.md) | 79 | `result-track:f54c01f1932143db9a9c260ac2ad3b2d141b3d2c595fdd090009dbe9b34a9ac4` |
| 6 | `theorem` | [limsup_add_le](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-add-le--62808dbf4d747558fd2cd8f3.md) | 88 | `result-track:62808dbf4d747558fd2cd8f3eda2defdcc29e9d5b043a771bb0dda458de0a934` |
| 7 | `theorem` | [limsup_liminf_le_liminf_limsup](../../../../../mathematics/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/declarations/limsup-liminf-le-liminf-limsup--a4e32f70ca6e7bfff4811fb2.md) | 94 | `result-track:a4e32f70ca6e7bfff4811fb216f91eb10cb34466c258940e5cbf69fe7dd4b43e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
