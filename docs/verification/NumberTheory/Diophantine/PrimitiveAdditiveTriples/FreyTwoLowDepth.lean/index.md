# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoLowDepth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48082171ee298a814e358a5ca850f1662f5deb2a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48082171ee298a814e358a5ca850f1662f5deb2a`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/index.md) — import line 13; pinned internal source present.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [local_maximalIdeal_eq_span](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/local-maximalideal-eq-span--fbcfdfee1e72c06fbfcd33e5.md) | 28 | `result-track:fbcfdfee1e72c06fbfcd33e5cb518c1b4383d24bd25ca8fcac2eabeb7eba5773` |
| 2 | `theorem` | [localVal_prime](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/localval-prime--6610a9e0a1fbde82a4054a17.md) | 39 | `result-track:6610a9e0a1fbde82a4054a17f9eb84a584d6bc9434db84631770b70ba9a010ca` |
| 3 | `theorem` | [localVal_int_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/localval-int-unit--b7f40aeef08df669dccd07e7.md) | 56 | `result-track:b7f40aeef08df669dccd07e7926b411415717e08b51ede743c9b22aa4ce641db` |
| 4 | `theorem` | [localVal_nat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/localval-nat--01c41f05a43add41dfdf6822.md) | 64 | `result-track:01c41f05a43add41dfdf6822808c716a22f11cc6c2a8a150f34e0f9d86270479` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/instance--74402b2e346ae9fa77aef8f3.md) | 79 | `declaration-track:74402b2e346ae9fa77aef8f323b7d57fb198c87185e2e6e879db28a43585c19f` |
| 6 | `theorem` | [source_product_even](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/source-product-even--d0c4ce10ce12c70c1d29b734.md) | 82 | `result-track:d0c4ce10ce12c70c1d29b7346cc73d818e9d5c7bb3c4e9e6f1a1245319673651` |
| 7 | `theorem` | [source_depth_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/source-depth-pos--17ce4b9fdf9468652643c809.md) | 92 | `result-track:17ce4b9fdf9468652643c80931922ad07ebd4f4aa6499335fedc2f863f0888d7` |
| 8 | `theorem` | [low_depth_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/low-depth-iff--1958585dafec6e2a38a9b848.md) | 98 | `result-track:1958585dafec6e2a38a9b848c78b875f0fd355f0b6bc368a35eddcb3aaec968b` |
| 9 | `theorem` | [raw_delta_value](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/raw-delta-value--d9930a1b5334eb0a39861fc5.md) | 105 | `result-track:d9930a1b5334eb0a39861fc5aafb22fb299c681886ecacba72725e21b9ff8be3` |
| 10 | `theorem` | [raw_delta_exponent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/raw-delta-exponent--d3c3035d6547270aece9f688.md) | 121 | `result-track:d3c3035d6547270aece9f688ac382bd68e28f28a1e7ed2b916b09b29b4c3a7f5` |
| 11 | `theorem` | [minimal_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/minimal-at-two--dade6f7a6e99f780f6ffb62a.md) | 127 | `result-track:dade6f7a6e99f780f6ffb62a6ceed53d59fccede98dfdb1b0a6e2fbea3d53db6` |
| 12 | `theorem` | [additive_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/additive-at-two--636a09585c4b992aa1dc42f6.md) | 136 | `result-track:636a09585c4b992aa1dc42f6ba3cec6a3641889e943cf506abf3b479ad721223` |
| 13 | `theorem` | [not_good_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/not-good-at-two--a07ef1fb5f30a25d9d530a8d.md) | 150 | `result-track:a07ef1fb5f30a25d9d530a8d649a92a2777ac2316b1a05120c83c2cad6ed0876` |
| 14 | `theorem` | [not_multiplicative_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/not-multiplicative-at-two--ebe8a602511e89d365f0eaa9.md) | 154 | `result-track:ebe8a602511e89d365f0eaa97186b4ce35fae90638fd60db5edf9be7dce320e5` |
| 15 | `theorem` | [minimal_exponent_cases](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/minimal-exponent-cases--e05f110aff965b6e5a1a3748.md) | 160 | `result-track:e05f110aff965b6e5a1a37484f563e83c9206d95b55da7d2b4e1da5683695c7f` |
| 16 | `def` | [lowSource](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/lowsource--501da7911371498fd3b78642.md) | 170 | `declaration-track:501da7911371498fd3b7864267a2f4cff50efb87c6073b28e87acbadb8778c46` |
| 17 | `theorem` | [lowSource_guard](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/lowsource-guard--bfe3aa188bd172b8f837fd19.md) | 173 | `result-track:bfe3aa188bd172b8f837fd19a346f364b980d6e221da9cbc1789a4d923364689` |
| 18 | `theorem` | [lowSource_additive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/declarations/lowsource-additive--878198fae1a06ba140f620c0.md) | 180 | `result-track:878198fae1a06ba140f620c0b22529abdaf255e5af3a202a178eece3156ea94b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
