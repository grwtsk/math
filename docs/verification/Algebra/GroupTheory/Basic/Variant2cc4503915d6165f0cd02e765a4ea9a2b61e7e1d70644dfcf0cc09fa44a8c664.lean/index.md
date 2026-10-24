# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afcb5e9125054425b80df98fa917aa7fa39fcbe7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afcb5e9125054425b80df98fa917aa7fa39fcbe7`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-sub--4fee7b96b3eb7feacc6ac9bf.md) | 40 | `result-track:4fee7b96b3eb7feacc6ac9bf2520c509d0fe863709bd94bfcd9b3061dc662597` |
| 2 | `theorem` | [cast_pred](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-pred--bc5d1a326beda84871a6797b.md) | 46 | `result-track:bc5d1a326beda84871a6797b485249ed4fc4dc7db2256869e7ad96899b2664ab` |
| 3 | `theorem` | [cast_negSucc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-negsucc--a8fb1c6a7fd65705a24f5bad.md) | 60 | `result-track:a8fb1c6a7fd65705a24f5badbe95b09f02b4fc2137f6d692102847678ddbba8d` |
| 4 | `theorem` | [cast_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-zero--a6458201be1ee9b775cbdb12.md) | 66 | `result-track:a6458201be1ee9b775cbdb12a24e6516df67b1278eb3e243cef216fc2180b8a9` |
| 5 | `theorem` | [cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-ofnat--4e1ba86640367a042b8a6abc.md) | 72 | `result-track:4e1ba86640367a042b8a6abc20eff99a89c33acabec141850f170a07ca3a97f7` |
| 6 | `theorem` | [int_cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/int-cast-ofnat--2d252c1c99d9acdf9dc5a4c8.md) | 79 | `result-track:2d252c1c99d9acdf9dc5a4c8c2edfc3b3d6719011b03ad2f985ecce45d440337` |
| 7 | `theorem` | [cast_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-one--3062e4ca80afcb45c962370b.md) | 84 | `result-track:3062e4ca80afcb45c962370ba0354c2e0ab7fee7a126389ea9dcf05cd7752f7d` |
| 8 | `theorem` | [cast_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-neg--ebe763cf8f434d57d55d70c1.md) | 90 | `result-track:ebe763cf8f434d57d55d70c1bb82682f7b4ff3beee146a07f24703803f929946` |
| 9 | `theorem` | [cast_subNatNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-subnatnat--830d1e866314c353d3456ee3.md) | 98 | `result-track:830d1e866314c353d3456ee34e0315d893f07ccb9183608f9d1de4a6383b4c06` |
| 10 | `theorem` | [cast_negOfNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-negofnat--0bc11bfb5ddc9cdd3e81cd1b.md) | 111 | `result-track:0bc11bfb5ddc9cdd3e81cd1b9943e20b5d74604ba6bab3bbfb8d6c74767a1f13` |
| 11 | `theorem` | [cast_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-add--b8f0cc2cd606c3a12e9456f5.md) | 115 | `result-track:b8f0cc2cd606c3a12e9456f5f322c65cba70913f4a31ec623614ba81fb61d2c0` |
| 12 | `theorem` | [cast_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-sub--972e96870a446318e4915005.md) | 129 | `result-track:972e96870a446318e4915005c42c1b05e8251b93516300b01791411fbe2bf62d` |
| 13 | `theorem` | [ofNat_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/ofnat-bit0--ebdf587c84b8ee21f65608a1.md) | 138 | `result-track:ebdf587c84b8ee21f65608a10d337bb94253a4c473b34969c7790541aac97b6a` |
| 14 | `theorem` | [ofNat_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/ofnat-bit1--ded7b86c7e75c1285357d5fb.md) | 143 | `result-track:ded7b86c7e75c1285357d5fbb73d44391da0aa013cb41bbf4720c7772c640495` |
| 15 | `theorem` | [cast_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-bit0--35c7abda1cd97ce976891bbd.md) | 148 | `result-track:35c7abda1cd97ce976891bbd74277d4d579d365f6d1a616376fd2c4d3d0fd1e9` |
| 16 | `theorem` | [cast_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-bit1--903eba56677e91143b4f1532.md) | 153 | `result-track:903eba56677e91143b4f15328e3885ca963b76a7984b50efacfa95fb2d9fe5f4` |
| 17 | `theorem` | [cast_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-two--972495602926136bdffc031c.md) | 159 | `result-track:972495602926136bdffc031c2030f7001a61b26b890b6f91e7120bbad9317c74` |
| 18 | `theorem` | [cast_three](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-three--a05a81902371a663b8290af4.md) | 163 | `result-track:a05a81902371a663b8290af49c421ffb4775f7a45740b2db46eab3ee6d3d29a4` |
| 19 | `theorem` | [cast_four](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/declarations/cast-four--07d9a9267491a1f365581655.md) | 167 | `result-track:07d9a9267491a1f365581655bed728504d7ddc19e2ba5859c4707dc8eb5b564f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
