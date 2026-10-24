# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Monad.Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f31ed2077014c0cda8d028ac5c8ad8bd769860cd",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f31ed2077014c0cda8d028ac5c8ad8bd769860cd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure--105f0228a64fcd4a847d8336.md) | 46 | `declaration-track:105f0228a64fcd4a847d833612b933785fd5ad438a3c121eb2f4f485546f2c42` |
| 2 | `theorem` | [pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure-apply--e63b046101cd74202d002ad0.md) | 53 | `result-track:e63b046101cd74202d002ad0da0ce52fbf69f5acbcd3897a46806ca43062ca93` |
| 3 | `theorem` | [support_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/support-pure--6b8d6e1df32a97fe0d505af4.md) | 57 | `result-track:6b8d6e1df32a97fe0d505af4030431a20a85cfbc2a50ae993ff667ceed69a7de` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/mem-support-pure-iff--a9696eb1733cfb3d6c2843d1.md) | 61 | `result-track:a9696eb1733cfb3d6c2843d149d77b2500789364989f9900cc2c3f02b3cb163c` |
| 5 | `theorem` | [pure_apply_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure-apply-self--930d0a63f52197bddea1ef66.md) | 65 | `result-track:930d0a63f52197bddea1ef66dbc196ce03e612a11f570221e7afba9e730d2325` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure-apply-of-ne--54f4b74669eeb1247f0a4e1b.md) | 69 | `result-track:54f4b74669eeb1247f0a4e1b768822db3ab92ebff09cbfb6ca8350a420e58915` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/instance--ee95faaa8c76aa7fe3483143.md) | 73 | `declaration-track:ee95faaa8c76aa7fe3483143b420a606016bb6869f3c8bb08ccff35153ce2d7e` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tooutermeasure-pure-apply--a024b4b616f0ddf7d9bff28b.md) | 81 | `result-track:a024b4b616f0ddf7d9bff28b1c6a86d4b18d3a6613dba1d1afbe5484bee98227` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tomeasure-pure-apply--b09b6e84edff82b981fc23ea.md) | 94 | `result-track:b09b6e84edff82b981fc23ea7f417d28b624444ce51bb9659279d357aec96561` |
| 10 | `theorem` | [toMeasure_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tomeasure-pure--a05b48e2e5d1fc69ce333a2d.md) | 99 | `result-track:a05b48e2e5d1fc69ce333a2df827a7f795a1c1f51ce8a6a10d17bdc38703f609` |
| 11 | `theorem` | [toPmf_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/topmf-dirac--6cadb87b76f08dc06a928625.md) | 104 | `result-track:6cadb87b76f08dc06a92862516df82cb421b8ca78d11615ad6f4b5cc961c4602` |
| 12 | `def` | [bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind--5e7610238ac00838cc47b417.md) | 116 | `declaration-track:5e7610238ac00838cc47b4176f44df9e3630cc3addbf70e44f49b00c24510bcf` |
| 13 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind-apply--d46e3702543b2cb3dcec5c19.md) | 125 | `result-track:d46e3702543b2cb3dcec5c197359ab357937926a3974aa36b935d89bb6f22d2e` |
| 14 | `theorem` | [support_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/support-bind--1ab95b7735f1bdaebc1939b7.md) | 129 | `result-track:1ab95b7735f1bdaebc1939b74158fd32e34f16c691f6d010354850a65c919df8` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/mem-support-bind-iff--ea8f7aeaa1463620962e2f31.md) | 133 | `result-track:ea8f7aeaa1463620962e2f31f76051bfcbed95244c8f56598e3730ee7d268c32` |
| 16 | `theorem` | [pure_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure-bind--1008a6ede684db6ce582071c.md) | 139 | `result-track:1008a6ede684db6ce582071c802693f697e9aa0508982a29e68f60891350ba2a` |
| 17 | `theorem` | [bind_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind-pure--bb0f77f9f45b1dbbf0bafc30.md) | 147 | `result-track:bb0f77f9f45b1dbbf0bafc3039b61cad6d627d125977f09893a7a098169d97f6` |
| 18 | `theorem` | [bind_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind-const--a19fa4efb7cf229bda992617.md) | 154 | `result-track:a19fa4efb7cf229bda992617479f0adaacb6108d80b851b53b09dab66668293b` |
| 19 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind-bind--681c11a875b224c4d01684f7.md) | 159 | `result-track:681c11a875b224c4d01684f72edeee7c7bead46c76d63224f7aada671963a24d` |
| 20 | `theorem` | [bind_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bind-comm--69f6a6fec874881f46c4ba36.md) | 165 | `result-track:69f6a6fec874881f46c4ba36ace401214508ebdc300f0b6f89d511d473baf21b` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tooutermeasure-bind-apply--f87ecad2c46231a03cd0361e.md) | 177 | `result-track:f87ecad2c46231a03cd0361e99dd978a9edad1b59767456049db1bdda2aecab2` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tomeasure-bind-apply--5343bf740a9ee31a34e3f942.md) | 195 | `result-track:5343bf740a9ee31a34e3f942edcf2d3ba325791af96788fcf14b55d69431ee7c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/instance--2d104bb57cbe15f9ded6cb4c.md) | 207 | `declaration-track:2d104bb57cbe15f9ded6cb4cafd10ffadd1987baebdadbdfbd03e901edb2eeaa` |
| 24 | `def` | [bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport--b6e3debb63734bcf19655de0.md) | 215 | `declaration-track:b6e3debb63734bcf19655de0699b25c6ea113803d15ddd94fc6866b09c9f4114` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-apply--bf1f26372cf347d514924f1b.md) | 227 | `result-track:bf1f26372cf347d514924f1b52739febd3b9f849b01889d84055c3918b67debe` |
| 26 | `theorem` | [support_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/support-bindonsupport--850b84f14cffad9df0d10349.md) | 232 | `result-track:850b84f14cffad9df0d103498e4e580d726b108356a99925ba7f2fa07c6b3b89` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/mem-support-bindonsupport-iff--cf9c9ca7b71273b79ef742eb.md) | 246 | `result-track:cf9c9ca7b71273b79ef742ebbf1ffc62bdbe7e1a8a0d35bc3dfaaacc26ec28a4` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-eq-bind--17126ef3dfb7a12ee9521bad.md) | 253 | `result-track:17126ef3dfb7a12ee9521bad3544b19ff4dd0e714d0b0eaeacb7fd0a662e8cbe` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-eq-zero-iff--bdc8f822e12dbd540c529986.md) | 262 | `result-track:bdc8f822e12dbd540c52998610dbbe99f52a5c9abfde01a7706b656f63ec05f4` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/pure-bindonsupport--de89615946f572a7b62dd849.md) | 270 | `result-track:de89615946f572a7b62dd8490a690be9c347bc872b53fc30d076184e8dd25508` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-pure--a84c78a4fa3d0322875c7e05.md) | 278 | `result-track:a84c78a4fa3d0322875c7e05b8c683da322366c54ee52bd2525342481143e17e` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-bindonsupport--7284a0593233e8b70f3c89d3.md) | 283 | `result-track:7284a0593233e8b70f3c89d30ecb58b8c005c980811c4ac8aef69b693164a2ae` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/bindonsupport-comm--789c6b8f4bf0a1b4d4be0f4b.md) | 302 | `result-track:789c6b8f4bf0a1b4d4be0f4b7bc69c8f171b1fb57a79213ec2f05726f9a29f7c` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tooutermeasure-bindonsupport-apply--9f83d9abc3ecce9a369a8093.md) | 317 | `result-track:9f83d9abc3ecce9a369a80932a0bd4f9d7ddaed7da08955ef13308c018a6b502` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/declarations/tomeasure-bindonsupport-apply--8539e9cd7bac3008d082e3ae.md) | 337 | `result-track:8539e9cd7bac3008d082e3aec5b85b1e1fb3fd5a2b129b620a3a96bb230c373a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
