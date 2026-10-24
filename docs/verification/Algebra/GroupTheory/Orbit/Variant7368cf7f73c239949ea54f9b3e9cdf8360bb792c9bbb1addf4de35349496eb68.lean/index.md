# Verification target: GRWTSK.Algebra.GroupTheory.Orbit.Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1289edb345726df9bde46c965b0b19d05249cb0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1289edb345726df9bde46c965b0b19d05249cb0`.

Source path: `GRWTSK/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean.json)

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
| 1 | `def` | [startsWith](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith--b9c365e13642718c4718c648.md) | 39 | `declaration-track:b9c365e13642718c4718c648618a25a9449c88430274cb46cda5848724e5757a` |
| 2 | `theorem` | [startsWith.ne_one](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith-ne-one--90274fdd5087bd9e18f8310c.md) | 44 | `result-track:90274fdd5087bd9e18f8310c370b9b87ec15a6af1e5a3c114c14a446bb47d7f8` |
| 3 | `lemma` | [startsWith.disjoint_iff_ne](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith-disjoint-iff-ne--f3952b99232fa4d59321b51b.md) | 48 | `result-track:f3952b99232fa4d59321b51bad09ff51c0646285c11d72dfaa24d5acc6a68cc1` |
| 4 | `lemma` | [startsWith.Injective](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith-injective--3e007eee01a68097d10289c7.md) | 54 | `result-track:3e007eee01a68097d10289c75c133337f840f953a869ad9a9cbd95f21870346e` |
| 5 | `theorem` | [startsWith_mk_mul](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith-mk-mul--6f61d215bc49a08ecb8bb495.md) | 58 | `result-track:6f61d215bc49a08ecb8bb495666fb0469728ab1b70365f0fcdbf638f88fc173d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/instance--22769f75927a9be9759d3f1e.md) | 70 | `declaration-track:22769f75927a9be9759d3f1ef79d3396a3fa36b06c5b581d43cb253e32a3382c` |
| 7 | `lemma` | [startsWith.smul_def](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/startswith-smul-def--163abdfe5e4e7a45eb171b29.md) | 74 | `result-track:163abdfe5e4e7a45eb171b29d6c1d0e4837cf3d7e514e65203f0b67d90e30683` |
| 8 | `theorem` | [Orbit.duplicate](../../../../../mathematics/Algebra/GroupTheory/Orbit/Variant7368cf7f73c239949ea54f9b3e9cdf8360bb792c9bbb1addf4de35349496eb68.lean/declarations/orbit-duplicate--46852e87dc9cd046ee79b972.md) | 82 | `result-track:46852e87dc9cd046ee79b972dd89dfe83984c5800f4ca8d7b2acf39ffa104c57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
