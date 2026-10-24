# Verification target: GRWTSK.Algebra.Nullstellensatz.Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301e933c464eb7361c16ce68bc6fe1083c09de85",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301e933c464eb7361c16ce68bc6fe1083c09de85`.

Source path: `GRWTSK/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus--f0baa5c33445f6c0e44287eb.md) | 34 | `declaration-track:f0baa5c33445f6c0e44287ebc1ef4574536bc5ecae79d8fa75b06adf7672c4fe` |
| 2 | `theorem` | [mem_zeroLocus_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/mem-zerolocus-iff--cf4111baf5e9e87c7f0ce98e.md) | 38 | `result-track:cf4111baf5e9e87c7f0ce98e6a318138e278851bf9c669910c13b3db4a457d1d` |
| 3 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-anti-mono--516ead0cf79096a18fa710d4.md) | 42 | `result-track:516ead0cf79096a18fa710d4fd11eca98df7677cd5bcff1ab52362fa670bf112` |
| 4 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-bot--d4f33f29e4ff1378757821cb.md) | 46 | `result-track:d4f33f29e4ff1378757821cb38cbbd942ed2c985c705e41ace4d19f785d8cdb7` |
| 5 | `theorem` | [zeroLocus_top](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-top--9641865359a0a3f0ee348b43.md) | 50 | `result-track:9641865359a0a3f0ee348b43450c294b7a222b7d1cecb89c59ce7c1a44337e5f` |
| 6 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal--96c567cb09a04bdf1ee0adc0.md) | 54 | `declaration-track:96c567cb09a04bdf1ee0adc04ed11d652a2ad962b8d09e55e040325b6271dc5a` |
| 7 | `theorem` | [mem_vanishingIdeal_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/mem-vanishingideal-iff--601d1d4b63fd261679e5c8cd.md) | 62 | `result-track:601d1d4b63fd261679e5c8cdd4b72f7fe0611f25aab8c39b4578fa1bbc51f974` |
| 8 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal-anti-mono--7d0fb21293ca693a8216ca80.md) | 66 | `result-track:7d0fb21293ca693a8216ca80ea4f174e2fd02a0eebeb763f64e464d6ec2427ed` |
| 9 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal-empty--9c946e7d11d21aa6699fde35.md) | 69 | `result-track:9c946e7d11d21aa6699fde35744295f77db36e0c738fb7c214a8113ead44526e` |
| 10 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/le-vanishingideal-zerolocus--239a48a9197b7c53d0dc9cfc.md) | 72 | `result-track:239a48a9197b7c53d0dc9cfc62d9c0461084b43fde92bddc7a1424b9695c4809` |
| 11 | `theorem` | [zeroLocus_vanishingIdeal_le](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-vanishingideal-le--afff629b03375ebcc158dc95.md) | 75 | `result-track:afff629b03375ebcc158dc95e996b434347a046f9b6b240e84f3934985a101f5` |
| 12 | `theorem` | [zeroLocus_vanishingIdeal_galoisConnection](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-vanishingideal-galoisconnection--3c08c100dd58485309a39f74.md) | 78 | `result-track:3c08c100dd58485309a39f7482344f31fd2601438144aa46fe0451b5d062ed52` |
| 13 | `theorem` | [le_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/le-zerolocus-iff-le-vanishingideal--f0f82c9cf8d7a0c740cd6d88.md) | 83 | `result-track:f0f82c9cf8d7a0c740cd6d881528112bc427550d920880ea838a8b4b2074af26` |
| 14 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/zerolocus-span--e3abee7b6e3de45ffec91ca8.md) | 87 | `result-track:e3abee7b6e3de45ffec91ca85e538841b5886be65044491922f537eff30bb496` |
| 15 | `theorem` | [mem_vanishingIdeal_singleton_iff](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/mem-vanishingideal-singleton-iff--c40bf4f191c0db6ea29468e4.md) | 92 | `result-track:c40bf4f191c0db6ea29468e483d3c6e15f4d8d3de780d89cc7df26f673d63ad5` |
| 16 | `instance` | [vanishingIdeal_singleton_isMaximal](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal-singleton-ismaximal--db0a724a984bff813027ff0c.md) | 96 | `declaration-track:db0a724a984bff813027ff0c3b487b569a49c532ac256135beea71c9fad20490` |
| 17 | `theorem` | [radical_le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/radical-le-vanishingideal-zerolocus--924eaa2112836d58801ad4cb.md) | 108 | `result-track:924eaa2112836d58801ad4cb861ad9fa603e96967963068b43d7a33f9dd29948` |
| 18 | `def` | [pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/pointtopoint--652611849d4666c3b676fffe.md) | 120 | `declaration-track:652611849d4666c3b676fffef35a179c76803cd99a844ab3ac8dea72539c243d` |
| 19 | `theorem` | [vanishingIdeal_pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal-pointtopoint--35fd6292195610093e1afd93.md) | 124 | `result-track:35fd6292195610093e1afd934d855a56a3f214ecb668a8a954dbfa54fa24e2f3` |
| 20 | `theorem` | [pointToPoint_zeroLocus_le](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/pointtopoint-zerolocus-le--c314837f4e24b34d8b781594.md) | 136 | `result-track:c314837f4e24b34d8b7815941de6dcee49af3ca933a35bc8348ce5dab76ce17c` |
| 21 | `theorem` | [isMaximal_iff_eq_vanishingIdeal_singleton](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/ismaximal-iff-eq-vanishingideal-singleton--169d1e56b719125dfcb0f235.md) | 145 | `result-track:169d1e56b719125dfcb0f235623052734b60ee3d1ae4639da64e994186bb6de3` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/vanishingideal-zerolocus-eq-radical--a4f77e9b765f1feab053c585.md) | 170 | `result-track:a4f77e9b765f1feab053c585ad39f119306dde154509c10b8eebf54e258bcc3b` |
| 23 | `theorem` | [IsPrime.vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variantc9d5523b9cb93cd66113ac4d968d7375e53987a00070d5c74e23b29c951176f9.lean/declarations/isprime-vanishingideal-zerolocus--6b03c8dc85be5f98584a8008.md) | 186 | `result-track:6b03c8dc85be5f98584a8008f6dc5f86927140a63e7889a62cbc66931e7891ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
