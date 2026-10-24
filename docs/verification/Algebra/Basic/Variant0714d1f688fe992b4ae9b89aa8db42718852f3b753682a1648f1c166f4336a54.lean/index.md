# Verification target: GRWTSK.Algebra.Basic.Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e2fbb6450f3bf8ee7197bca10c3799b6a9e1cc2",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e2fbb6450f3bf8ee7197bca10c3799b6a9e1cc2`.

Source path: `GRWTSK/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventSet](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolventset--8d7c37ca647b3df656acb994.md) | 64 | `declaration-track:8d7c37ca647b3df656acb9940b430a2c2ce4aa217d291e1a772c96e37bef3d6e` |
| 2 | `def` | [spectrum](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/spectrum--94cc653e5a7cfd52cf51c66a.md) | 72 | `declaration-track:94cc653e5a7cfd52cf51c66aa95aaed7ec1e716caf674aa43fd24600adab04be` |
| 3 | `def` | [resolvent](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolvent--af01e335d1cd2111d627dbda.md) | 80 | `declaration-track:af01e335d1cd2111d627dbdad97e2a2e1007adf4ba4785cbf6c448572fc25806` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/isunit-subinvsmul--26a66b5385d556ecad39ed68.md) | 84 | `declaration-track:26a66b5385d556ecad39ed68690276d8edea9b8aa33cf6004522b11d6150e86c` |
| 5 | `theorem` | [mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/mem-iff--aa7b5cac7facf3a9998677b4.md) | 103 | `result-track:aa7b5cac7facf3a9998677b4e742cc35e80e34132fe5365ee49cee5cc28dbb15` |
| 6 | `theorem` | [resolvent_zero_of_mem_spectrum](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolvent-zero-of-mem-spectrum--28eb205b45f369b66011fff0.md) | 107 | `result-track:28eb205b45f369b66011fff062b5dd8e4033419ebfefb31cb6b12519f27d9e2d` |
| 7 | `theorem` | [mem_spectrum_iff_resolvent_zero](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/mem-spectrum-iff-resolvent-zero--66ec5a947c941fe06ea13f6b.md) | 110 | `result-track:66ec5a947c941fe06ea13f6beb2be065c6c059c1b21b9fffc1910e4b74ffcd7c` |
| 8 | `theorem` | [notMem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/notmem-iff--f5f5e08b0ddc9a008465dffe.md) | 115 | `result-track:f5f5e08b0ddc9a008465dffed102749374268265d0f4f6b74f3cc12440d153a1` |
| 9 | `theorem` | [zero_mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/zero-mem-iff--a03372ac931639a96cf1ff8d.md) | 120 | `result-track:a03372ac931639a96cf1ff8d737d744967f369d62fac6b9b5207d856ca53125d` |
| 10 | `theorem` | [zero_notMem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/zero-notmem-iff--c4761be7ef3287a7232e96ef.md) | 125 | `result-track:c4761be7ef3287a7232e96ef1b07dcce1f0a6dfdd250a318cf4dfe105c89c0f5` |
| 11 | `lemma` | [_root_.Units.zero_notMem_spectrum](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/root-units-zero-notmem-spectrum--d280a3d5c59cbcc138fca8f4.md) | 131 | `result-track:d280a3d5c59cbcc138fca8f4ab5577104f29b48cc7ea7bc21164ff2f13419651` |
| 12 | `lemma` | [subset_singleton_zero_compl](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/subset-singleton-zero-compl--fc04e7d86421a00d602c353a.md) | 134 | `result-track:fc04e7d86421a00d602c353a1c438090ac164c769bfe1d79a5f3211dba6a2e55` |
| 13 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/mem-resolventset-of-left-right-inverse--025374ef0a2ac2b5551e4ecf.md) | 139 | `result-track:025374ef0a2ac2b5551e4ecf116a9089b3c530ef398ce220c1703351950f797b` |
| 14 | `theorem` | [mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/mem-resolventset-iff--c5529781db92bee01709dbdf.md) | 143 | `result-track:c5529781db92bee01709dbdf51499285c8fdde091de79a7108d24a54c0f464b8` |
| 15 | `theorem` | [algebraMap_mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/algebramap-mem-iff--c5ac18f6ec8f48ebc474684f.md) | 147 | `result-track:c5ac18f6ec8f48ebc474684f18965f84e2a84b8a5ec4d1a6a9916fcfea66f5d2` |
| 16 | `theorem` | [preimage_algebraMap](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/preimage-algebramap--5a5eb07e134d541a7cdc4fcc.md) | 155 | `result-track:5a5eb07e134d541a7cdc4fcc02785af82162e6ddfcf03606640d627b69eb6508` |
| 17 | `theorem` | [resolventSet_of_subsingleton](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolventset-of-subsingleton--e135d22893ad7fb57b946146.md) | 161 | `result-track:e135d22893ad7fb57b9461460a9637530c9483a51bacb78d113defc334bed1f8` |
| 18 | `theorem` | [of_subsingleton](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/of-subsingleton--c6b7281c14c864d7a1fb0403.md) | 165 | `result-track:c6b7281c14c864d7a1fb04036cca2b916625423d757ddb554d7124ec14c7aed1` |
| 19 | `theorem` | [resolvent_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolvent-eq--82a13ba9dce05978f74f68fd.md) | 168 | `result-track:82a13ba9dce05978f74f68fd81c01e38818dfbb99d2748fd2bd6ccd66fce3d40` |
| 20 | `theorem` | [resolvent_sub_resolvent](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/resolvent-sub-resolvent--bc728c6b33054f01a4c7eed2.md) | 174 | `result-track:bc728c6b33054f01a4c7eed233533e5138bae32b65ba0e09fb110883c64052c4` |
| 21 | `theorem` | [units_smul_resolvent](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/units-smul-resolvent--066e3c82d622a15e8c6b15d1.md) | 182 | `result-track:066e3c82d622a15e8c6b15d18f53e95f80001f4139f422d8e9d785dbe5b76d47` |
| 22 | `theorem` | [units_smul_resolvent_self](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/units-smul-resolvent-self--f1902cd47efd854976a9b0d5.md) | 198 | `result-track:f1902cd47efd854976a9b0d54396fffd3447eaf7d492174bd6e7195c225dc505` |
| 23 | `theorem` | [isUnit_resolvent](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/isunit-resolvent--5f715d58642954d27f1b6cd0.md) | 204 | `result-track:5f715d58642954d27f1b6cd0b768a17b91ab30108d18b89fde823b62283b70de` |
| 24 | `theorem` | [inv_mem_resolventSet](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/inv-mem-resolventset--57d5a790aef6db8c0bdcc175.md) | 207 | `result-track:57d5a790aef6db8c0bdcc1756cd6cc1c7cb38bbf2278588343e4885f1a494e81` |
| 25 | `theorem` | [inv_mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/inv-mem-iff--b0b470712bb516c3fcc91cd6.md) | 218 | `result-track:b0b470712bb516c3fcc91cd6795ea89d2a8ae43685ca07998f5a185c36114602` |
| 26 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/zero-mem-resolventset-of-unit--24a9e13e99b940526510ea74.md) | 221 | `result-track:24a9e13e99b940526510ea741b641da079ea7dbccfcf0c7bc262feb9437d10d1` |
| 27 | `theorem` | [ne_zero_of_mem_of_unit](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/ne-zero-of-mem-of-unit--2c0426487199acdfa914d4cd.md) | 224 | `result-track:2c0426487199acdfa914d4cd8d52e4996f6008fedcc142f309d07af334160644` |
| 28 | `theorem` | [add_mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/add-mem-iff--6edda3f1f1b81a1d61e2f296.md) | 227 | `result-track:6edda3f1f1b81a1d61e2f29657913c43cef31633ffe0c646d0aea54b5d2c7d02` |
| 29 | `theorem` | [add_mem_add_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/add-mem-add-iff--96fb2f7f75ec040b0c26fe1b.md) | 230 | `result-track:96fb2f7f75ec040b0c26fe1bffe86b5132572007e5b5784fadd6a60ea0feaab8` |
| 30 | `theorem` | [smul_mem_smul_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/smul-mem-smul-iff--0599e6e4beda581c6ad01095.md) | 233 | `result-track:0599e6e4beda581c6ad01095d9dc02a96dbdc25c61248dae070c8331805cb42e` |
| 31 | `theorem` | [unit_smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/unit-smul-eq-smul--57d424da70902b38f62d8a6a.md) | 236 | `result-track:57d424da70902b38f62d8a6aa084aa554217ebfc6f00c6198214cd19c9c4bdee` |
| 32 | `theorem` | [unit_mem_mul_comm](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/unit-mem-mul-comm--2f29d087a41514cb042d779d.md) | 247 | `result-track:2f29d087a41514cb042d779d5eaffc4b2af399c3e34196d63a14760c612a997c` |
| 33 | `theorem` | [preimage_units_mul_comm](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/preimage-units-mul-comm--1322ae0a3e6ba49aacb9d456.md) | 263 | `result-track:1322ae0a3e6ba49aacb9d4560b60298b4621be08da1893c33f43eeb649592147` |
| 34 | `theorem` | [setOfPred_isUnit_inter_mul_comm](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/setofpred-isunit-inter-mul-comm--8237a0f010679aa2facf113c.md) | 267 | `result-track:8237a0f010679aa2facf113ce0dfbefed5be9dad9dce9429acfc0681a8dbefa2` |
| 35 | `theorem` | [star_mem_resolventSet_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/star-mem-resolventset-iff--3add028a53e23a8a0e2902bd.md) | 279 | `result-track:3add028a53e23a8a0e2902bd93974cc61be9d3e340f0459c0ee40078fb604ed6` |
| 36 | `theorem` | [map_star](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/map-star--d632847f8e9e8c41af397e29.md) | 285 | `result-track:d632847f8e9e8c41af397e29066bad39e64ee2da9f7b1a4a63790f3343e8c4ed` |
| 37 | `theorem` | [subset_subalgebra](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/subset-subalgebra--69d57576b016ad28786ba9c3.md) | 302 | `result-track:69d57576b016ad28786ba9c3d45b4039c905e9f02d53260aec4a97258df9bbab` |
| 38 | `theorem` | [singleton_add_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/singleton-add-eq--8aa3748777fc21fa70cf0789.md) | 307 | `result-track:8aa3748777fc21fa70cf078948a7bf5f202ca06371f87d3fe1785efdabee87c1` |
| 39 | `theorem` | [add_singleton_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/add-singleton-eq--297d80d16aadda3c66143879.md) | 311 | `result-track:297d80d16aadda3c66143879c60d19e4a78a2229a1296fde477d85c72282b55f` |
| 40 | `theorem` | [vadd_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/vadd-eq--bd1ba685dd051ac9fc1c3ba6.md) | 314 | `result-track:bd1ba685dd051ac9fc1c3ba637ec127a3d2831ca59ad95c1642fcdcac52c623a` |
| 41 | `theorem` | [_root_.resolventSet_neg](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/root-resolventset-neg--709055e38baa2f97b4463fa4.md) | 317 | `result-track:709055e38baa2f97b4463fa48508b24e0c526bf9c21b91cd5f966690237f55f5` |
| 42 | `theorem` | [neg_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/neg-eq--4ee45c27664cd80024f9d435.md) | 321 | `result-track:4ee45c27664cd80024f9d43523cc1a00c630d8b22dddb51f706d31885f09e68a` |
| 43 | `theorem` | [singleton_sub_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/singleton-sub-eq--8992f89ca2ddc3fe4bf92455.md) | 324 | `result-track:8992f89ca2ddc3fe4bf9245509cb1d2ae954e8a7366e113a1fdf866f6bb73015` |
| 44 | `theorem` | [sub_singleton_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/sub-singleton-eq--c238811c2b77bfc25056e487.md) | 327 | `result-track:c238811c2b77bfc25056e4871135e3afd11407af1fed8195b24a15cac55cfcaa` |
| 45 | `lemma` | [inv₀_mem_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/inv-mem-iff--0e47a337bcd6c941df164f4b.md) | 337 | `result-track:0e47a337bcd6c941df164f4bd8f6ae2eebd233818cba4e472c2e15bab1528087` |
| 46 | `lemma` | [inv₀_mem_inv_iff](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/inv-mem-inv-iff--09f8a4ddbf20cfad6c144ec6.md) | 344 | `result-track:09f8a4ddbf20cfad6c144ec67eba1bc8d6af80ffccca2b30d96637b5e3f7460f` |
| 47 | `theorem` | [zero_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/zero-eq--4938817c1efc703a46e5bcb5.md) | 364 | `result-track:4938817c1efc703a46e5bcb53f3ec89cdfd34501d23696ea4ec08b54734ca6ad` |
| 48 | `theorem` | [scalar_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/scalar-eq--31f062e0d2343d60a85e98ab.md) | 369 | `result-track:31f062e0d2343d60a85e98ab3417332cb630bda423de1ba20a2f11063ff9153f` |
| 49 | `theorem` | [one_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/one-eq--faf2ac6c7e37969d4762278e.md) | 373 | `result-track:faf2ac6c7e37969d4762278ed2b164fe5728b04c7f92fafe6deb95cc8171918b` |
| 50 | `theorem` | [smul_eq_smul](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/smul-eq-smul--0814483875f7251ab568c5d8.md) | 380 | `result-track:0814483875f7251ab568c5d8d350082c1b873da0fd16e9b2db3b97fdc1ef5d83` |
| 51 | `theorem` | [nonzero_mul_comm](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/nonzero-mul-comm--d29c86b5a95bae89d01ffe04.md) | 386 | `result-track:d29c86b5a95bae89d01ffe04fd340e5ca66a857bea3125d432dfcbdb3e99e5f1` |
| 52 | `theorem` | [map_inv](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/map-inv--9e680734dd26133650e5797c.md) | 393 | `result-track:9e680734dd26133650e5797c411f91238644279fbe00be7853d92a8fa29e6419` |
| 53 | `theorem` | [mem_resolventSet_apply](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/mem-resolventset-apply--6d22ce3975a191f9a9e8bc29.md) | 412 | `result-track:6d22ce3975a191f9a9e8bc29f007e39406a5d204f34608d884a07e058fd51971` |
| 54 | `theorem` | [spectrum_apply_subset](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/spectrum-apply-subset--6395a0231aeba08c2902530b.md) | 416 | `result-track:6395a0231aeba08c2902530bca78e6e63ad24959c7e10c1db6b7e286db938c2c` |
| 55 | `theorem` | [apply_mem_spectrum](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/apply-mem-spectrum--58922bac9921ba478b35d0c1.md) | 430 | `result-track:58922bac9921ba478b35d0c181fe2105eb7a637012634f72a93b0d16365af460` |
| 56 | `theorem` | [AlgEquiv.spectrum_eq](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/algequiv-spectrum-eq--a530631c6f8c264248995ee0.md) | 442 | `result-track:a530631c6f8c264248995ee03b58ee187637ceaf484b536fa3cddae4419d265c` |
| 57 | `lemma` | [spectrum.units_conjugate](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/spectrum-units-conjugate--1faa38886c15f9fccf579d2d.md) | 455 | `result-track:1faa38886c15f9fccf579d2d5347e8dcea1aacf09494a862e8b6c67983fb2839` |
| 58 | `lemma` | [spectrum.units_conjugate'](../../../../mathematics/Algebra/Basic/Variant0714d1f688fe992b4ae9b89aa8db42718852f3b753682a1648f1c166f4336a54.lean/declarations/spectrum-units-conjugate--a99451abcba1ac7f4a0bf6d6.md) | 468 | `result-track:a99451abcba1ac7f4a0bf6d6d466d6eadfa3b29ff288bc34b16c104bcb9a331b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
