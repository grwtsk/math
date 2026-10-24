# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalAlgebra.Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4b379c7d98ee09a7b3e867dd18591fe9eb2cadd`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.NonUnitalSubalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/instistopologicalsemiring--1ec10003ab6d8335afe53eb3.md) | 39 | `declaration-track:1ec10003ab6d8335afe53eb392d47e6e5efefdc4d39b117bc72e1f5a754da6c0` |
| 2 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/topologicalclosure--f065187ff557587ad2a268f0.md) | 44 | `declaration-track:f065187ff557587ad2a268f030d5bad7b1ef467a321736773c4043766958f47a` |
| 3 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/le-topologicalclosure--7b9f19645ba40a57792c7c36.md) | 48 | `result-track:7b9f19645ba40a57792c7c366317f94a360062c3768a0b813af7eb1e98b8c973` |
| 4 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/isclosed-topologicalclosure--85144876c7f4c2319d3a548f.md) | 51 | `result-track:85144876c7f4c2319d3a548faf8ec898d4e06130d34fb00e0a0ca133a996b3e8` |
| 5 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/topologicalclosure-minimal--53882255fe9dd5845e5e47d1.md) | 54 | `result-track:53882255fe9dd5845e5e47d15852eb1d9a2219cd4736f712510324e5b65f3ed9` |
| 6 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/nonunitalcommsemiringtopologicalclosure--a20e99c969ddce7b27f48923.md) | 62 | `declaration-track:a20e99c969ddce7b27f4892374bb61eae9147103eb72a4035ed302aab25d9f43` |
| 7 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/instistopologicalring--b5b39d8ac9769198351cd9db.md) | 74 | `declaration-track:b5b39d8ac9769198351cd9dbad0ce64dc4b2bf5acb3b33f6b42a4492c9edd0fa` |
| 8 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/nonunitalcommringtopologicalclosure--510968326101272385a8dc2b.md) | 81 | `declaration-track:510968326101272385a8dc2bc462ff8cc542eba0b1b2f500b2c923bf255fae68` |
| 9 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/elemental--4ed63d091c65dd4d811c5cd7.md) | 98 | `declaration-track:4ed63d091c65dd4d811c5cd7362053e52ef9f1ddc6d8d0e51e50fbc13d4411d1` |
| 10 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/self-mem--108e1803e2c5e8e5a89503c9.md) | 104 | `result-track:108e1803e2c5e8e5a89503c94cfedd6ab23e1167431826cdf33a71ce5f0e72b2` |
| 11 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/le-of-mem--d7f2a155c961124ba2745acf.md) | 108 | `result-track:d7f2a155c961124ba2745acfbeb7c9f2bb0b1b733f56563eb797a413bacc7b28` |
| 12 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/le-iff-mem--ace0ceab2849f71cd4cb7f18.md) | 113 | `result-track:ace0ceab2849f71cd4cb7f18872dc243de00d716af855956a4bce0c1dac41711` |
| 13 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/isclosed--c515ee06f4adaf0612d68e76.md) | 117 | `declaration-track:c515ee06f4adaf0612d68e765fac70e33c3e8e8c4ea29288454e4834e29339ff` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/instance--23d7193c9d0196a5142a5c07.md) | 120 | `declaration-track:23d7193c9d0196a5142a5c073522417b1fff7ed89e00b90e71bd79b251cfa96f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/instance--24816c0d2d3e74cbb53ad856.md) | 128 | `declaration-track:24816c0d2d3e74cbb53ad856e215646121c03485ba9416e29822edb0a7ffb57b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/instance--a1cb5aca7cb32c2d1b869416.md) | 134 | `declaration-track:a1cb5aca7cb32c2d1b869416fd97924bfc68c863cfb00d7be1af7a5459211b38` |
| 17 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalAlgebra/Variantea9472b6c71b5cf9d06a4b6cffb3fb1d77e43c3f703721418e810c2f1f775123.lean/declarations/isclosedembedding-coe--d3daad6061391fe97b0844df.md) | 141 | `result-track:d3daad6061391fe97b0844dfd4e000a66c0a0862fe92b4a9c544bbcebc237ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
