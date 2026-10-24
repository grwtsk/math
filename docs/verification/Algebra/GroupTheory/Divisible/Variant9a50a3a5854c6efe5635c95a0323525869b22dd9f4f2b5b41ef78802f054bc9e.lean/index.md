# Verification target: GRWTSK.Algebra.GroupTheory.Divisible.Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8e3985f4c97faa4d687537bc9ea5149b7caf4e5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8e3985f4c97faa4d687537bc9ea5149b7caf4e5`.

Source path: `GRWTSK/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Eq` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DivisibleBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/divisibleby--90dbb993bef2afcf5205a45a.md) | 91 | `declaration-track:90dbb993bef2afcf5205a45a02ff0262fd6682d369f6e6baf02eb6cb8a031a43` |
| 2 | `class` | [RootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/rootableby--ceb05ea010af059221e934a8.md) | 109 | `declaration-track:ceb05ea010af059221e934a8f9a327a1541a043458a43b82cd71bfe0236bd1e2` |
| 3 | `theorem` | [pow_left_surj_of_rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/pow-left-surj-of-rootableby--b00e7de8927601cfbfce8317.md) | 116 | `result-track:b00e7de8927601cfbfce831751de1455b6d4209920fa3734dc2622e9cdcf1d34` |
| 4 | `def` | [rootableByOfPowLeftSurj](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/rootablebyofpowleftsurj--d5c95ebe8016c032d31c1161.md) | 127 | `declaration-track:d5c95ebe8016c032d31c11618eb480034eb9fd4c8eebe37ff3ed579f72d2926e` |
| 5 | `instance` | [Pi.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/pi-rootableby--0e97474819ba1b322554036c.md) | 142 | `declaration-track:0e97474819ba1b322554036cbf8dc2219b278808469ad877e65c545a8981467c` |
| 6 | `instance` | [Prod.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/prod-rootableby--92cd6b0a646fd5b53d1305a3.md) | 155 | `declaration-track:92cd6b0a646fd5b53d1305a33c2e21cff1c5913288b1fb50c92d0efb9c3bf538` |
| 7 | `instance` | [ULift.instRootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/ulift-instrootableby--56c0a8bfbffc48dfa2f0edfa.md) | 165 | `declaration-track:56c0a8bfbffc48dfa2f0edfaa052157044f835edca67d090576c5d6d1a8c7fb0` |
| 8 | `theorem` | [smul_top_eq_top_of_divisibleBy_int](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/smul-top-eq-top-of-divisibleby-int--a5215a74830cc975aabee232.md) | 178 | `result-track:a5215a74830cc975aabee232ca4751ffd41a07a9261e19fbdd3b12bc3c1f099f` |
| 9 | `def` | [divisibleByIntOfSMulTopEqTop](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/divisiblebyintofsmultopeqtop--efe3797e5af7758bc29cc3a0.md) | 184 | `declaration-track:efe3797e5af7758bc29cc3a0caa77d0976f00368c5f3f4100d209d4bb91df655` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/instance--e86eea16b4670fd717a3e567.md) | 196 | `declaration-track:e86eea16b4670fd717a3e567fb28111d5bd39cb9bce406644eff0a821c88ffbb` |
| 11 | `def` | [rootableByIntOfRootableByNat](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/rootablebyintofrootablebynat--58bc681be0920dccc3d54525.md) | 211 | `declaration-track:58bc681be0920dccc3d545259caf30961be1479299118126cb9727d3f22889da` |
| 12 | `def` | [rootableByNatOfRootableByInt](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/rootablebynatofrootablebyint--fb9522bf9525efbf3963fc88.md) | 226 | `declaration-track:fb9522bf9525efbf3963fc888bea7ce4dc3732cbe21546417e81a4a2543a89b3` |
| 13 | `def` | [Function.Surjective.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/function-surjective-rootableby--d8372938a76eb591d1c009cf.md) | 247 | `declaration-track:d8372938a76eb591d1c009cfdce9c38c8704044083f246528f9a8e2fbe7f85da` |
| 14 | `theorem` | [RootableBy.surjective_pow](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/rootableby-surjective-pow--1720aa2514883f830243281c.md) | 255 | `result-track:1720aa2514883f830243281ca1adbce16f10f794c5b74cb9fe41feabb837beed` |
| 15 | `instance` | [QuotientGroup.rootableBy](../../../../../mathematics/Algebra/GroupTheory/Divisible/Variant9a50a3a5854c6efe5635c95a0323525869b22dd9f4f2b5b41ef78802f054bc9e.lean/declarations/quotientgroup-rootableby--fa9ba596d98982b2eedb24f1.md) | 267 | `declaration-track:fa9ba596d98982b2eedb24f17c51a370ef548f772774dbad4e76d9ae1dd49792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
