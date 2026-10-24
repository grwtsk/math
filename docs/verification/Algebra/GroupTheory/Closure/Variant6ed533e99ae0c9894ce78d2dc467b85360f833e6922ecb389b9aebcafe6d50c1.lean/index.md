# Verification target: GRWTSK.Algebra.GroupTheory.Closure.Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f13cf24e402ba77affc3d8645c2afb6e6066ad3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f13cf24e402ba77affc3d8645c2afb6e6066ad3`.

Source path: `GRWTSK/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean.json)

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
| 1 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/closure--8f6ec61ba5e17917ee15f242.md) | 29 | `declaration-track:8f6ec61ba5e17917ee15f242a602280eb68a14eb63a501f0c79f889658c8604b` |
| 2 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/mem-closure--6c9dbc25318c8ab186967601.md) | 35 | `result-track:6c9dbc25318c8ab1869676011124b49d169a47cf1ed305a354a2fe1241409f7d` |
| 3 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/subset-closure--3e7f4ea8f780a44a622856a7.md) | 39 | `result-track:3e7f4ea8f780a44a622856a7b346b6a4dc2bbd89d631a418a5e3ba98bcec35be` |
| 4 | `theorem` | [mem_closure_of_mem](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/mem-closure-of-mem--df404e7c0f62d2cf9f8594eb.md) | 42 | `result-track:df404e7c0f62d2cf9f8594eba6f181e7efa3ca990fc7e96de27b9c07195715dc` |
| 5 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/closure-le--abdeb8128f6c4c6a657e1807.md) | 45 | `result-track:abdeb8128f6c4c6a657e1807b1dfe72a305c72a2d6aeb8d315d7f352017de28c` |
| 6 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/closure-mono--72502bc9c65dd33bab65ad98.md) | 49 | `result-track:72502bc9c65dd33bab65ad98e9b4996885ad8710a44064eb026c1de8c0207df4` |
| 7 | `def` | [FG](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/fg--40320785a89d76ae6ad64307.md) | 54 | `declaration-track:40320785a89d76ae6ad64307ae517507e6f93ceaf96019dd94316b1d55c88da0` |
| 8 | `theorem` | [fg_iff](../../../../../mathematics/Algebra/GroupTheory/Closure/Variant6ed533e99ae0c9894ce78d2dc467b85360f833e6922ecb389b9aebcafe6d50c1.lean/declarations/fg-iff--0fc000f975b2cc3a8d9c7acb.md) | 58 | `result-track:0fc000f975b2cc3a8d9c7acbc4b7bfc941bd07ab39175285520f0b0814d24665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
