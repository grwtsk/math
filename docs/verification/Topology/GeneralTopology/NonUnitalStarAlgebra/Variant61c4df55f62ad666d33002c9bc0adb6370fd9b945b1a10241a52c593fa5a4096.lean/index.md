# Verification target: GRWTSK.Topology.GeneralTopology.NonUnitalStarAlgebra.Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54114b5e3372047fdb0d82d3fe8af2906fc1e107",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54114b5e3372047fdb0d82d3fe8af2906fc1e107`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.NonUnitalSubalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.NonUnitalAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsTopologicalSemiring](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/instistopologicalsemiring--356da209d038da2fefbf87d3.md) | 41 | `declaration-track:356da209d038da2fefbf87d3f2bd4b94fb9efa9a43fb57a95811af26e83f4819` |
| 2 | `def` | [topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/topologicalclosure--8832d7249344569cc41d152e.md) | 46 | `declaration-track:8832d7249344569cc41d152e4937086d6da2944e8df12b7fbb1f6e0c82ef8aa3` |
| 3 | `theorem` | [le_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/le-topologicalclosure--fb39fae771ad13d32308c1d7.md) | 51 | `result-track:fb39fae771ad13d32308c1d7fbff4da02e1cedead4d16c676b7782bb8e5fed64` |
| 4 | `theorem` | [isClosed_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/isclosed-topologicalclosure--125125216abfed899a8860bc.md) | 54 | `result-track:125125216abfed899a8860bcbcbbd00ad735af28acdebafd0330a32590f9c8ab` |
| 5 | `theorem` | [topologicalClosure_minimal](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/topologicalclosure-minimal--90749f002b88bd5c8de8e57f.md) | 57 | `result-track:90749f002b88bd5c8de8e57fbc549d13d33fc3c758bb8d3a6fa567aea714534e` |
| 6 | `abbrev` | [nonUnitalCommSemiringTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/nonunitalcommsemiringtopologicalclosure--d4e89cf8994421d89e88d6e8.md) | 66 | `declaration-track:d4e89cf8994421d89e88d6e8f7e826979b5e44679983fdbd477b3dc4582f9fa3` |
| 7 | `instance` | [instIsTopologicalRing](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/instistopologicalring--187c81304e82343cbc5c4b34.md) | 78 | `declaration-track:187c81304e82343cbc5c4b34cafd6cbca94d9394d07698fd7c91b5b27b4d494b` |
| 8 | `abbrev` | [nonUnitalCommRingTopologicalClosure](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/nonunitalcommringtopologicalclosure--6e7299e4238860d19635a69d.md) | 85 | `declaration-track:6e7299e4238860d19635a69dcffbee8ab9a1e462857cb194221fff5275e1cc74` |
| 9 | `def` | [elemental](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/elemental--91d91c0f116027a76289918f.md) | 102 | `declaration-track:91d91c0f116027a76289918f9fcf555625c3385b948e8ba4fbb84d89d1c7fadc` |
| 10 | `theorem` | [self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/self-mem--189b8ab8e59445b32ec9c6d3.md) | 108 | `result-track:189b8ab8e59445b32ec9c6d3f4c004192c2b36743bf00e39a0c26cb5f30445b6` |
| 11 | `theorem` | [star_self_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/star-self-mem--cebdb97db29802efec5d9ba5.md) | 112 | `result-track:cebdb97db29802efec5d9ba51f8e0d92c847928983f989794bd3ec33a0ccbcd1` |
| 12 | `theorem` | [le_of_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/le-of-mem--6fb179293a42815427dd1a14.md) | 116 | `result-track:6fb179293a42815427dd1a14afc8fd9aa32ce5891a373cecc49607b852fec0f3` |
| 13 | `theorem` | [le_iff_mem](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/le-iff-mem--007f3e5ad86fad069eeb127a.md) | 121 | `result-track:007f3e5ad86fad069eeb127a4e0d14c92297518886094dc3d49af481f9fc6088` |
| 14 | `instance` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/isclosed--84c82adaa2158aca2931200b.md) | 125 | `declaration-track:84c82adaa2158aca2931200b0447e4dfeb725872e703a36fc81a6bf297d363bf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/instance--ac63759605ffee2daa777b40.md) | 128 | `declaration-track:ac63759605ffee2daa777b406c00a9ab11f8ab7226bbd3a5a7cdf3b37af504a8` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/instance--18fbf1732d7c74e69aa21cc1.md) | 139 | `declaration-track:18fbf1732d7c74e69aa21cc19bad4cbc935db5d4bc1b8b34ecaae16b3b694e7f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/instance--fea3e7b66d1c6b8036b25dd0.md) | 145 | `declaration-track:fea3e7b66d1c6b8036b25dd0f3224b503183a462c8e268a1f214a1621ccecd90` |
| 18 | `theorem` | [isClosedEmbedding_coe](../../../../../mathematics/Topology/GeneralTopology/NonUnitalStarAlgebra/Variant61c4df55f62ad666d33002c9bc0adb6370fd9b945b1a10241a52c593fa5a4096.lean/declarations/isclosedembedding-coe--e1eab5170880b847f2cf23b0.md) | 152 | `result-track:e1eab5170880b847f2cf23b0c89a635e3e7d0505383bd51a6e63882b832420bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
