# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa2d585efbca9f4f01fb95cfc30a01ec2457b40",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa2d585efbca9f4f01fb95cfc30a01ec2457b40`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset--0ba25986caa1729728f65b8a.md) | 36 | `declaration-track:0ba25986caa1729728f65b8a3654533c298349ae5c425dbf46929d3a1c279921` |
| 2 | `theorem` | [mem_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/mem-pifinset--c386951db2c58f8f3ec57fdc.md) | 42 | `result-track:c386951db2c58f8f3ec57fdc11307cefb02e008fb70d75dff6f98aaeb9e66ffb` |
| 3 | `theorem` | [coe_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/coe-pifinset--19f7ae3444e1f4dd2dcc6614.md) | 54 | `result-track:19f7ae3444e1f4dd2dcc66141f21d48a2045f012e590d6a858ace70f1a7a924f` |
| 4 | `theorem` | [piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset-subset--9ff6e00388f268471022e64b.md) | 61 | `result-track:9ff6e00388f268471022e64b21a80e45881ab8def0f3c8be54e2327cda4827e5` |
| 5 | `theorem` | [piFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset-empty--cf47187a026ba564d562475c.md) | 66 | `result-track:cf47187a026ba564d562475cdac7d7f44dac60b6653a31072bfb3c578b383dcf` |
| 6 | `theorem` | [piFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset-singleton--613de2f7fb4a5f2dbdff3bab.md) | 71 | `result-track:613de2f7fb4a5f2dbdff3bab7a85889618c17468aaac710ddc2851f85289cc3a` |
| 7 | `theorem` | [piFinset_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset-subsingleton--eae4a81e46eb5827f1ea45f0.md) | 75 | `result-track:eae4a81e46eb5827f1ea45f06bf110647d28554103c9bff9b055626be078bdaa` |
| 8 | `theorem` | [piFinset_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pifinset-disjoint-of-disjoint--70ff45b0d70e2816b430dd94.md) | 80 | `result-track:70ff45b0d70e2816b430dd94873157c941c99d488f990d9776252d69cd9f3dd9` |
| 9 | `instance` | [Pi.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/pi-fintype--1960e3bc4679881923e3322f.md) | 92 | `declaration-track:1960e3bc4679881923e3322ff3f5177941e16133da28c6aeaaf7fc16b51d9257` |
| 10 | `theorem` | [Fintype.piFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/fintype-pifinset-univ--ad39f84ca21ad7952e10dccc.md) | 98 | `result-track:ad39f84ca21ad7952e10dcccd47f82bdb5a15375be44505a9b662c4c9bdd3299` |
| 11 | `instance` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.PiFinset.Variant52ed97c3b21d282351ea57d0f349f182a1f1ffd550251fbbe0948304695b5c60.Function.Embedding.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-pifinset-variant52ed97c3--28dc678850aa608d6050a226.md) | 109 | `declaration-track:28dc678850aa608d6050a22631fcc274d1da5c3c2ea7ab182238d10d0351e6ce` |
| 12 | `theorem` | [Finset.univ_pi_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant6344c97bc20cca03e7f1d8ededa07c515297502102f33812e2ca2a893165fde4.lean/declarations/finset-univ-pi-univ--f92140e3003547f04fc0a215.md) | 115 | `result-track:f92140e3003547f04fc0a215377e629edaefb3e20b670038981d9ee62909a557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
