# Verification target: GRWTSK.Topology.GeneralTopology.Algebra.Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f946209e2ff0630b7511fbbef1931dd14354ebf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f946209e2ff0630b7511fbbef1931dd14354ebf`.

Source path: `GRWTSK/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_algebraMap_iff_smul](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/continuous-algebramap-iff-smul--13286141daf2706421863daa.md) | 42 | `result-track:13286141daf2706421863daa205e03212e2e9027bc7b7e07430d93a5029b70fb` |
| 2 | `theorem` | [continuous_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/continuous-algebramap--391dfb3abd336aff57b0eaa7.md) | 52 | `result-track:391dfb3abd336aff57b0eaa7c389e3280d01bfd6d123288d4bdb14588e5ae10a` |
| 3 | `theorem` | [continuousSMul_of_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/continuoussmul-of-algebramap--b9c56c1c28d17e9c1e6bd2cc.md) | 56 | `result-track:b9c56c1c28d17e9c1e6bd2cc999a6f30c7dc3b1927a1455d7c6d487800a500f3` |
| 4 | `def` | [algebraMapClm](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/algebramapclm--1ef1e8e85f4e98e990dea1b8.md) | 64 | `declaration-track:1ef1e8e85f4e98e990dea1b8bff858c087ea8e9fe2d77c7bc193824fcfc577e3` |
| 5 | `theorem` | [algebraMapClm_coe](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/algebramapclm-coe--3793de3a7df4e8b5fa024689.md) | 70 | `result-track:3793de3a7df4e8b5fa0246895e49a329be592209bad8818578a78a1cb4826be3` |
| 6 | `theorem` | [algebraMapClm_toLinearMap](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/algebramapclm-tolinearmap--7c121d7373f730808d693088.md) | 74 | `result-track:7c121d7373f730808d693088653258aa52259473d25a8005ef962b7e39dc23da` |
| 7 | `instance` | [Subalgebra.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-continuoussmul--3f65942b4860fd678197186e.md) | 88 | `declaration-track:3f65942b4860fd678197186e7c54d01fd5d93697f8b0b331a906c4ba904b9a18` |
| 8 | `def` | [Subalgebra.topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-topologicalclosure--3dd9daca28cbd4a1f71c9ffe.md) | 96 | `declaration-track:3dd9daca28cbd4a1f71c9ffe66d8c3bb5cb7ed2f91a85ebb85288bdea95da982` |
| 9 | `theorem` | [Subalgebra.topologicalClosure_coe](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-topologicalclosure-coe--c6c9a07d1eeb6171526d8f5d.md) | 104 | `result-track:c6c9a07d1eeb6171526d8f5de11043537d1ea1f4f72cd3931c697c1e7029fbba` |
| 10 | `instance` | [Subalgebra.topologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-topologicalsemiring--013b4c3269c21ba68958fa1f.md) | 109 | `declaration-track:013b4c3269c21ba68958fa1fe8fe019f027a7d1d97240bc42800e4fbc6558e85` |
| 11 | `theorem` | [Subalgebra.le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-le-topologicalclosure--61a3c41f1d304dffa0e758ca.md) | 113 | `result-track:61a3c41f1d304dffa0e758cabf9aa620e6bdbe88153bc45a196984fddcdba619` |
| 12 | `theorem` | [Subalgebra.isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-isclosed-topologicalclosure--a9f1d7a81ef72e1e009c59df.md) | 117 | `result-track:a9f1d7a81ef72e1e009c59df696e555ff368e8fd9a5e30f0e2bdebd64172d245` |
| 13 | `theorem` | [Subalgebra.topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-topologicalclosure-minimal--93e4748095742894933594b4.md) | 121 | `result-track:93e4748095742894933594b40b308dae9780ed385d17d640e32b4689f416714b` |
| 14 | `def` | [Subalgebra.commSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-commsemiringtopologicalclosure--7cfbd9dd68a0603f69921ef5.md) | 127 | `declaration-track:7cfbd9dd68a0603f69921ef5c831f59765dae63a0f30c4aeb500c01819fe7134` |
| 15 | `theorem` | [Subalgebra.topologicalClosure_comap_homeomorph](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-topologicalclosure-comap-homeomorph--b8e7b501dc1ebf5df2d32c39.md) | 137 | `result-track:b8e7b501dc1ebf5df2d32c39bedf7d5104ac9ceb8774fb797e75bb2eaa2c6a77` |
| 16 | `def` | [Subalgebra.commRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/subalgebra-commringtopologicalclosure--f8026ced65f6cf6f82adbd7a.md) | 162 | `declaration-track:f8026ced65f6cf6f82adbd7a334f1a018b2477b93f2d856ccec48adb89766bea` |
| 17 | `def` | [Algebra.elementalAlgebra](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/algebra-elementalalgebra--b4598b780ffdbc3acbe3d8a1.md) | 170 | `declaration-track:b4598b780ffdbc3acbe3d8a173652c808d53c1c48a597440b9747b8a5365dc22` |
| 18 | `theorem` | [Algebra.self_mem_elementalAlgebra](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/algebra-self-mem-elementalalgebra--7e61c1bca90e29e5ce02ecc5.md) | 174 | `result-track:7e61c1bca90e29e5ce02ecc5fb20ae7e1ce26950752d88b02afc8e8ac6b526dd` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/instance--af97468139faa7941e5ee009.md) | 181 | `declaration-track:af97468139faa7941e5ee009a9c8eaa992e7292a72371d250ee1607bfa1dfa2a` |
| 20 | `instance` | [DivisionRing.continuousConstSMul_rat](../../../../../mathematics/Topology/GeneralTopology/Algebra/Variant2022394578bba4e782f7163ed854b27ec33ba26cadf160392b0d5f997c517f6d.lean/declarations/divisionring-continuousconstsmul-rat--bba5b5b3e4b9e69ec6344fee.md) | 194 | `declaration-track:bba5b5b3e4b9e69ec6344feea4fcd8034813645bdf9a6972769836ed7f03e176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
