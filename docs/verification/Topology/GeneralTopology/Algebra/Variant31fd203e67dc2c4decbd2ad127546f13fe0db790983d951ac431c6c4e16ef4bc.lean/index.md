# Verification target: GRWTSK.Topology.GeneralTopology.Algebra.Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb4348d1937f60dabc763c8876c06e1a070f6212",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb4348d1937f60dabc763c8876c06e1a070f6212`.

Source path: `GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_algebraMap_iff_smul](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/continuous-algebramap-iff-smul--aea99fb7b22412dc4484df66.md) | 50 | `result-track:aea99fb7b22412dc4484df66bd7619ab020eee960fa7609a31f70228ca0ba483` |
| 2 | `theorem` | [continuous_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/continuous-algebramap--1a2b7912ff9a9101447635d4.md) | 60 | `result-track:1a2b7912ff9a9101447635d4c6bb7d3baa45164d1b53ff1a978aa3f32744234e` |
| 3 | `theorem` | [continuousSMul_of_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/continuoussmul-of-algebramap--ac67cbc21d231a1b319f79b0.md) | 64 | `result-track:ac67cbc21d231a1b319f79b09fadd88d4252e040aef75460ec83163678786e6a` |
| 4 | `def` | [algebraMapClm](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/algebramapclm--6508dc8e5e7d9ec952fa251d.md) | 72 | `declaration-track:6508dc8e5e7d9ec952fa251d554d2a03adb58a91f0ae52ce7b1d9770f35f3365` |
| 5 | `theorem` | [algebraMapClm_coe](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/algebramapclm-coe--f9ae4b5b801473dd0a62934e.md) | 78 | `result-track:f9ae4b5b801473dd0a62934e1e186d1b42624e6c810ca6c200c3fbd26ca0ae8c` |
| 6 | `theorem` | [algebraMapClm_toLinearMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/algebramapclm-tolinearmap--fc1f8bc32ab675b3e8140496.md) | 82 | `result-track:fc1f8bc32ab675b3e8140496c1e8facd53e7020d72b45bfc538980d92793ae75` |
| 7 | `instance` | [Subalgebra.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-continuoussmul--549efb7a9cdf93c5ce68f7bf.md) | 96 | `declaration-track:549efb7a9cdf93c5ce68f7bf29eee39034c0a39db1bdcf497faff67d4fb5cd69` |
| 8 | `def` | [Subalgebra.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-topologicalclosure--52af466f744fd3bf518654df.md) | 104 | `declaration-track:52af466f744fd3bf518654df9b3a14d243b371e12e53847d8d152207f1c4ce6c` |
| 9 | `theorem` | [Subalgebra.topologicalClosure_coe](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-topologicalclosure-coe--6772f536d9836086c682a50d.md) | 112 | `result-track:6772f536d9836086c682a50d67d15de755a88066b0d694b1ee2787e14c84cd0b` |
| 10 | `instance` | [Subalgebra.topologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-topologicalsemiring--9392bdd0e7c275b7b704d102.md) | 117 | `declaration-track:9392bdd0e7c275b7b704d102ff9352e40135fae775002164ac104dac6aafab81` |
| 11 | `theorem` | [Subalgebra.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-le-topologicalclosure--308a8f997641116872e0e68c.md) | 121 | `result-track:308a8f997641116872e0e68c649d20ff9960b9130942cbc7378456be20419a03` |
| 12 | `theorem` | [Subalgebra.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-isclosed-topologicalclosure--73026193ac0430f06dadf8a0.md) | 125 | `result-track:73026193ac0430f06dadf8a0544cdbb76e758c0141e4ab60ef395f3c59888dc4` |
| 13 | `theorem` | [Subalgebra.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-topologicalclosure-minimal--a2ebd1381343a4a7934aea18.md) | 129 | `result-track:a2ebd1381343a4a7934aea18569f51c7e07b8ed58b78a06619848d223a9161a4` |
| 14 | `def` | [Subalgebra.commSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-commsemiringtopologicalclosure--9a0cafa8adc913cce6390d3e.md) | 135 | `declaration-track:9a0cafa8adc913cce6390d3ecb3ee6f4f25c933efc0c813c241f61d98d18e2a0` |
| 15 | `theorem` | [Subalgebra.topologicalClosure_comap_homeomorph](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-topologicalclosure-comap-homeomorph--40a431fa6e81b1f4f5053aa8.md) | 145 | `result-track:40a431fa6e81b1f4f5053aa8b244ccadccf7f85e8ea03a48982ab93b59e6f751` |
| 16 | `def` | [Subalgebra.commRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/subalgebra-commringtopologicalclosure--2e2d3656126cacd1ec861dd6.md) | 170 | `declaration-track:2e2d3656126cacd1ec861dd6eebb2e550c3686e90533472cafeb49ccbc72576e` |
| 17 | `def` | [Algebra.elementalAlgebra](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/algebra-elementalalgebra--2217c08153f5002c25020eaf.md) | 178 | `declaration-track:2217c08153f5002c25020eafe9eb622c1baf335d498aa366cf50ee23f9c8f2d9` |
| 18 | `theorem` | [Algebra.self_mem_elementalAlgebra](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/algebra-self-mem-elementalalgebra--d055100e3361d35c0fdd7c9b.md) | 182 | `result-track:d055100e3361d35c0fdd7c9b4e4b283675012a877f86c5bc8cc347c2f2746fcf` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/instance--aaa7032c195dbe2fed9616d5.md) | 189 | `declaration-track:aaa7032c195dbe2fed9616d5d0b5dc2f5214cf10b8818ea2a371c5fcbf0c86bd` |
| 20 | `instance` | [DivisionRing.continuousConstSMul_rat](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/declarations/divisionring-continuousconstsmul-rat--5a84ef052cf4db78591c64a9.md) | 202 | `declaration-track:5a84ef052cf4db78591c64a99f9b54b7335c3142528a51890f22676357871e74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
