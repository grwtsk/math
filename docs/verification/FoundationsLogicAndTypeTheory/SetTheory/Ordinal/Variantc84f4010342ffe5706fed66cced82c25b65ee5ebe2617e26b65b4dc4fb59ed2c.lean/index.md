# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "414b4e1631ec86f7f42b3c1b78bc44bef5c505a0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `414b4e1631ec86f7f42b3c1b78bc44bef5c505a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Principal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_iUnion_Ordinal_lift_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/mk-iunion-ordinal-lift-le-of-le--0043cd1011aacf71717e1f52.md) | 23 | `result-track:0043cd1011aacf71717e1f52fc730c0e3a5f63b8fd96c2ed2260914a6606042d` |
| 2 | `lemma` | [mk_iUnion_Ordinal_le_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/mk-iunion-ordinal-le-of-le--0a7bf2db11596b98403c6849.md) | 34 | `result-track:0a7bf2db11596b98403c6849742e9bca73f39ccaa848c2ce8cdce9e3a9cb649f` |
| 3 | `theorem` | [lift_card_iSup_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/lift-card-isup-le-sum-card--e8ccf3e15c09eb19fe59fd87.md) | 49 | `result-track:e8ccf3e15c09eb19fe59fd87c56cfd4d90bdb500f94af69dbaca7f6df977e0e6` |
| 4 | `theorem` | [card_iSup_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-isup-le-sum-card--b7c462dc691d49a6111cfd83.md) | 60 | `result-track:b7c462dc691d49a6111cfd831e5bc5cc707dcd5eeab607bcd0314c13d1393602` |
| 5 | `theorem` | [card_iSup_Iio_le_sum_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-isup-iio-le-sum-card--b327d5626ea0874b9bc3f6c9.md) | 65 | `result-track:b327d5626ea0874b9bc3f6c90485704bd74ecb51cbf65673065abfd99d3c3f4b` |
| 6 | `theorem` | [card_iSup_Iio_le_card_mul_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-isup-iio-le-card-mul-isup--352c21eae2d004da2714219a.md) | 70 | `result-track:352c21eae2d004da2714219a13c45518d9fcde14c827c5a6a66af25adeddcf17` |
| 7 | `theorem` | [card_opow_le_of_omega0_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-le-of-omega0-le-left--b1ca35ddd4202c4e4f4dbce8.md) | 77 | `result-track:b1ca35ddd4202c4e4f4dbce8972e4b9f5cb2cc3c1ceac4aa16d0db14a3a10137` |
| 8 | `theorem` | [card_opow_le_of_omega0_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-le-of-omega0-le-right--cc62697e41c1465edb6ba561.md) | 103 | `result-track:cc62697e41c1465edb6ba5617cdbe484cfe3047d4847fe8c8d5eb08b3b086df3` |
| 9 | `theorem` | [card_opow_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-le--9a189d5e84d26aea0a893c13.md) | 111 | `result-track:9a189d5e84d26aea0a893c13cec299fcdb43bdace92880867655ddabecff510f` |
| 10 | `theorem` | [card_opow_eq_of_omega0_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-eq-of-omega0-le-left--853d4a15b4ac5e366c103b2f.md) | 119 | `result-track:853d4a15b4ac5e366c103b2f8d1e52f052b206620b1f9a8389a4fb5fd4e5bd35` |
| 11 | `theorem` | [card_opow_eq_of_omega0_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-eq-of-omega0-le-right--aa22b5c01e9df6691c92ab97.md) | 125 | `result-track:aa22b5c01e9df6691c92ab97b2fbf80cc194c800f3f7a2735472f3fc51752d2d` |
| 12 | `theorem` | [card_omega0_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-omega0-opow--287957ca09e7957f0e9443d8.md) | 131 | `result-track:287957ca09e7957f0e9443d89cc0ccd736733e000d59c1a25974c7074bab45d9` |
| 13 | `theorem` | [card_opow_omega0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/card-opow-omega0--afb4dabf9e889dfb0abacaf3.md) | 134 | `result-track:afb4dabf9e889dfb0abacaf311aa0dd5f36b67b8248efb96dc4114912c8f262b` |
| 14 | `theorem` | [principal_opow_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-opow-omega--bf9be56497091b716bbe094b.md) | 137 | `result-track:bf9be56497091b716bbe094b34e4c06c56a77ec1b32d83dc4ff113dc6ed2039c` |
| 15 | `theorem` | [IsInitial.principal_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/isinitial-principal-opow--e254d454fe2ffb2ce7c5b2b1.md) | 146 | `result-track:e254d454fe2ffb2ce7c5b2b170c84dddd1a245251e8f85647f98c6861f644076` |
| 16 | `theorem` | [principal_opow_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-opow-ord--7df3e0eaaa45dd309beddc5d.md) | 151 | `result-track:7df3e0eaaa45dd309beddc5d0ca432de0450fe43e7f81a5a426b373d35e18e24` |
| 17 | `theorem` | [principal_add_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-add-ord--3b9bf2545d4e55313ee567dc.md) | 157 | `result-track:3b9bf2545d4e55313ee567dc90d4bdb467494215c129239d5f366ef40e6f05d3` |
| 18 | `theorem` | [IsInitial.principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/isinitial-principal-add--ac67ab9612b33ff8cec7d55f.md) | 162 | `result-track:ac67ab9612b33ff8cec7d55fffbfc0f66ab4849a1eff803a06ecf768b41ee9eb` |
| 19 | `theorem` | [principal_add_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-add-omega--17be59ebf0145486495cffb1.md) | 168 | `result-track:17be59ebf0145486495cffb1c19120b2e785d173929e56ad6c91b2e3190b59ee` |
| 20 | `theorem` | [principal_mul_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-mul-ord--1befb1e1e59e742cc9c92ebd.md) | 171 | `result-track:1befb1e1e59e742cc9c92ebd60a35499856ee7a81ee6a04fa87d807a00b608af` |
| 21 | `theorem` | [IsInitial.principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/isinitial-principal-mul--107ea40e14eacfab469f6566.md) | 176 | `result-track:107ea40e14eacfab469f6566a919643c6daa8e9a173696544a11d4c1a84b6e5c` |
| 22 | `theorem` | [principal_mul_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/principal-mul-omega--0e26e0c6601f059fcd04a18f.md) | 182 | `result-track:0e26e0c6601f059fcd04a18f00b428797a93c4a71bdc9781100e73efb00da886` |
| 23 | `theorem` | [_root_.Cardinal.principal_add_aleph](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variantc84f4010342ffe5706fed66cced82c25b65ee5ebe2617e26b65b4dc4fb59ed2c.lean/declarations/root-cardinal-principal-add-aleph--418feed4a0811d14aa57a6af.md) | 186 | `result-track:418feed4a0811d14aa57a6af2a5b2c1fbf2f016b37e11b3a4f89eb9a0c48f06e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
