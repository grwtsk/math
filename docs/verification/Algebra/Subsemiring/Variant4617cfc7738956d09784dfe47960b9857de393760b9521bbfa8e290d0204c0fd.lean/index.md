# Verification target: GRWTSK.Algebra.Subsemiring.Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb4b731770051deb03226f3e535ee20c6ca41594",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb4b731770051deb03226f3e535ee20c6ca41594`.

Source path: `GRWTSK/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.NonUnitalSubsemiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StarSubsemiring](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/starsubsemiring--ae92de0c62c7a7be230655df.md) | 27 | `declaration-track:ae92de0c62c7a7be230655df9a99a5390d5e8aef179eac885643304ffe794c39` |
| 2 | `instance` | [setLike](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/setlike--2d7bcbcb15b11cca5f866595.md) | 39 | `declaration-track:2d7bcbcb15b11cca5f866595040206574dbd965b42deb4e5a48a7eb60f2d4c5d` |
| 3 | `def` | [ofClass](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/ofclass--5f7c754bd82ee86ffc5a9c2d.md) | 50 | `declaration-track:5f7c754bd82ee86ffc5a9c2d06602df14cf03451f84a61b92c4f99c36cfdbe0a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/instance--1d0714fe4e60a5a9b14d5a03.md) | 59 | `declaration-track:1d0714fe4e60a5a9b14d5a035be6e2d996ad07542e6d197ee811d03258c397da` |
| 5 | `instance` | [starMemClass](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/starmemclass--d2c6dfe52b61b403e8a61d4f.md) | 71 | `declaration-track:d2c6dfe52b61b403e8a61d4fa45dc6343fba8ded791c3a94fe24b3bb9bad130a` |
| 6 | `instance` | [subsemiringClass](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/subsemiringclass--f1777eef5818f5624e5ed8fe.md) | 74 | `declaration-track:f1777eef5818f5624e5ed8fe016dedcb046c7c80926fdfe96697fde64956205c` |
| 7 | `instance` | [starRing](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/starring--c60191280ea9ad507759ae7d.md) | 81 | `declaration-track:c60191280ea9ad507759ae7da9687731dd01c061cee11c0dc71ea70041c39970` |
| 8 | `instance` | [semiring](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/semiring--41057de5a05e43227d313985.md) | 87 | `declaration-track:41057de5a05e43227d313985d0b277a05002b4e524e174af2da3b4a0e9c50064` |
| 9 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/mem-carrier--59ac4f701ad558ea28b971f4.md) | 90 | `result-track:59ac4f701ad558ea28b971f4a8f34f79b14eac8d833a70742f13b94a9f3c5b98` |
| 10 | `theorem` | [ext](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/ext--1493362ecf24d6334c4e7fe4.md) | 94 | `result-track:1493362ecf24d6334c4e7fe432b1de83dad9c43dcf9a7ba83b74eb2ccbff78fb` |
| 11 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/coe-mk--4e2b446fd9fe46c52675ace1.md) | 98 | `result-track:4e2b446fd9fe46c52675ace131a928477e72641a13b6da42de7db7ec7b2c28c3` |
| 12 | `theorem` | [mem_toSubsemiring](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/mem-tosubsemiring--5fd05a66eba665d88e257cf6.md) | 101 | `result-track:5fd05a66eba665d88e257cf66667f0ee65321b8fd5af2bd5c94a044625af3b88` |
| 13 | `theorem` | [coe_toSubsemiring](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/coe-tosubsemiring--8061086c4c0f89c9a48e53a1.md) | 105 | `result-track:8061086c4c0f89c9a48e53a11e06b0314146e25f87baed01045960096909ce49` |
| 14 | `theorem` | [toSubsemiring_injective](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/tosubsemiring-injective--349850a035c4de2330108576.md) | 108 | `result-track:349850a035c4de2330108576ecb794a66ba8b2f98fe18f6991dbcbcfefe5e296` |
| 15 | `theorem` | [toSubsemiring_inj](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/tosubsemiring-inj--04a98ad2dfc95e99aeb13eb5.md) | 112 | `result-track:04a98ad2dfc95e99aeb13eb5527e3eb47dd4019828f78b4d75cba42e6f9d52ec` |
| 16 | `theorem` | [toSubsemiring_le_iff](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/tosubsemiring-le-iff--9a6cc8ee1b03f0a30b24fd28.md) | 115 | `result-track:9a6cc8ee1b03f0a30b24fd2822eafb417badd6d20fb2e9f0852242a7617637e5` |
| 17 | `def` | [copy](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/copy--800c8914725bb71d0726c367.md) | 121 | `declaration-track:800c8914725bb71d0726c367a90515f20a423cd03fcbdd6e1b50efb3bb16d771` |
| 18 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/coe-copy--cbe416d8822f340be7390314.md) | 126 | `result-track:cbe416d8822f340be73903144f34f9ed9b9fd4354760f8fbac427107e3e6d9a3` |
| 19 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/copy-eq--ea680459a7d97cad952b5ed0.md) | 129 | `result-track:ea680459a7d97cad952b5ed018b39b5436b9238f4ba42fd756d10297e7213ccc` |
| 20 | `def` | [center](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/center--f2eadb8a8eb70072fe9017cb.md) | 138 | `declaration-track:f2eadb8a8eb70072fe9017cb92df62c52030e03cef3918cc3e35599c7e2a0361` |
| 21 | `def` | [center](../../../../mathematics/Algebra/Subsemiring/Variant4617cfc7738956d09784dfe47960b9857de393760b9521bbfa8e290d0204c0fd.lean/declarations/center--b78fd5bd085db1eb0fb3a7d4.md) | 155 | `declaration-track:b78fd5bd085db1eb0fb3a7d4ceee16da57e14769e025b112cfb8a9d3df132c68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
