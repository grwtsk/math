# Verification target: GRWTSK.Algebra.Inverse.Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5b8188d9812d13ca2692337def2b85e1e120193",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5b8188d9812d13ca2692337def2b85e1e120193`.

Source path: `GRWTSK/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/instance--02aebe955726df5670d186e7.md) | 46 | `declaration-track:02aebe955726df5670d186e7857cba37849c4b8071d8cae91fbff39065f54304` |
| 2 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/inv-eq--ab7e5317d58db838a292dbeb.md) | 48 | `result-track:ab7e5317d58db838a292dbeb09095d0133033fb92b979bc3aecba47e102658b4` |
| 3 | `theorem` | [inv_zero'](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/inv-zero--fdf8228c937fdde41f86ba42.md) | 50 | `result-track:fdf8228c937fdde41f86ba428e27a96dc39405824933351198d8fa346925aeec` |
| 4 | `theorem` | [inv_of_ne_zero](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/inv-of-ne-zero--5fc536d48602ab346a1c3890.md) | 52 | `result-track:5fc536d48602ab346a1c3890fa43b48507401ce091c17a9b8c18a038fd53c1dd` |
| 5 | `theorem` | [coe_inv_of_ne_zero](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/coe-inv-of-ne-zero--bb78cc815362933c911e7401.md) | 55 | `result-track:bb78cc815362933c911e7401ad3960c07eb7b3c7ffa97224217bcfd8ff28f6b1` |
| 6 | `theorem` | [mem_inv_iff](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/mem-inv-iff--b98a8f72ad880248ed1cc044.md) | 61 | `result-track:b98a8f72ad880248ed1cc044a3c25fd47ff43e0be93bb8da0f074b012ec2ae11` |
| 7 | `theorem` | [inv_anti_mono](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/inv-anti-mono--30cdb4e008e23c31b077aa8b.md) | 64 | `result-track:30cdb4e008e23c31b077aa8bfdf25c262cfe1e95af125be0927190812079f9e6` |
| 8 | `theorem` | [le_self_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/le-self-mul-inv--2244a513c5b58cdecfce6ede.md) | 69 | `result-track:2244a513c5b58cdecfce6eded1ff147eb65aadfd4c78c730b1652cf384f559d9` |
| 9 | `theorem` | [coe_ideal_le_self_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/coe-ideal-le-self-mul-inv--8010634d6d063a96dd8f590c.md) | 75 | `result-track:8010634d6d063a96dd8f590c37562efc1c5f0fb5a8f52f05d90968ed0032a2b1` |
| 10 | `theorem` | [right_inverse_eq](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/right-inverse-eq--b331b328402353b2547a01ce.md) | 80 | `result-track:b331b328402353b2547a01ce3a6717d461ec1ff1d795f0232be7c5fb0c84b6c4` |
| 11 | `theorem` | [mul_inv_cancel_iff](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/mul-inv-cancel-iff--7cf2f8f586ed0af0c14cbae7.md) | 83 | `result-track:7cf2f8f586ed0af0c14cbae7d776d2c8b6fcde8dbab1b2db988476b0c50a445a` |
| 12 | `theorem` | [mul_inv_cancel_iff_isUnit](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/mul-inv-cancel-iff-isunit--43ccfa8b5adb02e7265fa51b.md) | 86 | `result-track:43ccfa8b5adb02e7265fa51b58915161b82a33b48f7ee95a8b0274a133c6d24c` |
| 13 | `theorem` | [map_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/map-inv--90959924d7be0688ffb38ed0.md) | 92 | `result-track:90959924d7be0688ffb38ed0d782511c9694fc63e64cdf656c1c3213c5c68e69` |
| 14 | `theorem` | [spanSingleton_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/spansingleton-inv--cc4e4424f5ea6d8ff8db312a.md) | 99 | `result-track:cc4e4424f5ea6d8ff8db312a37d5ee5620ba6a865b0d5911b97c90859aa8ad27` |
| 15 | `theorem` | [spanSingleton_div_spanSingleton](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/spansingleton-div-spansingleton--c3b9d7f7c8e8516dc51d16a8.md) | 102 | `result-track:c3b9d7f7c8e8516dc51d16a8353f440cbc2bacb89f6af849dfd74158a73d9506` |
| 16 | `theorem` | [spanSingleton_div_self](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/spansingleton-div-self--83b88177a7d83acf02081192.md) | 106 | `result-track:83b88177a7d83acf02081192167629cb1fc7b4b911416ba587cbaaa5d7ac169f` |
| 17 | `theorem` | [coe_ideal_span_singleton_div_self](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/coe-ideal-span-singleton-div-self--1cc080b981b6c1cb0b020804.md) | 110 | `result-track:1cc080b981b6c1cb0b02080429efa9c5db1d62f482262ebfcbc8c669f810e2a4` |
| 18 | `theorem` | [spanSingleton_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/spansingleton-mul-inv--da6ca8326b645a5045726e52.md) | 116 | `result-track:da6ca8326b645a5045726e523efe3d3c97618d800a69b924e59396b52819360f` |
| 19 | `theorem` | [coe_ideal_span_singleton_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/coe-ideal-span-singleton-mul-inv--b9d42e4f13ded027ce365b3a.md) | 120 | `result-track:b9d42e4f13ded027ce365b3a3d58a7caa6165da14e9bb238d6d7c37989939145` |
| 20 | `theorem` | [spanSingleton_inv_mul](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/spansingleton-inv-mul--69c24b94c8060aff3282340b.md) | 127 | `result-track:69c24b94c8060aff3282340b188c4bdc68eeccdd3fa27f482ae34590d077cdaa` |
| 21 | `theorem` | [coe_ideal_span_singleton_inv_mul](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/coe-ideal-span-singleton-inv-mul--33825c44b9f69f5a4c31c04e.md) | 131 | `result-track:33825c44b9f69f5a4c31c04efe81988e561eeb3db103c56755cdf59fd9b69084` |
| 22 | `theorem` | [mul_generator_self_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/mul-generator-self-inv--a800843741a83996e503bbdb.md) | 135 | `result-track:a800843741a83996e503bbdb507051ab29f6dcf706e766961c352aadaa204818` |
| 23 | `theorem` | [invertible_of_principal](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/invertible-of-principal--5e883f443ddf8c24295eba8e.md) | 145 | `result-track:5e883f443ddf8c24295eba8eadfb8be7bc211e965c2eef0127847fc7712e639f` |
| 24 | `theorem` | [invertible_iff_generator_nonzero](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/invertible-iff-generator-nonzero--a96941bec1e58a61deae6e3b.md) | 150 | `result-track:a96941bec1e58a61deae6e3b696c3ca22fe1e22b0d9873e83697e8339d83a0b6` |
| 25 | `theorem` | [isPrincipal_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/isprincipal-inv--c60a8a9d01be204a15bc342b.md) | 165 | `result-track:c60a8a9d01be204a15bc342b972625cc24b136d1e91d9ef0949a30a8b3e611b3` |
| 26 | `lemma` | [den_mem_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/den-mem-inv--805e87186c72cf78ac14f010.md) | 175 | `result-track:805e87186c72cf78ac14f010b7290c8ab438dfbc88ebf2fead9cef708742ff7e` |
| 27 | `lemma` | [num_le_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/num-le-mul-inv--10a0b9ab2c643dc03d6aed1f.md) | 185 | `result-track:10a0b9ab2c643dc03d6aed1f6959d21f4f633d39c103d38e298d08b6c5a08cbb` |
| 28 | `lemma` | [bot_lt_mul_inv](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/bot-lt-mul-inv--05e62c2ef7c507da4e4253ce.md) | 193 | `result-track:05e62c2ef7c507da4e4253ce01f5b6f7ea3369a22dea7bf6f2f175fc8bb39526` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant2faf015ae79f3f7bb6ef69f0fcd7e32ce1d801df2266dc1e84ea8ff57a17a158.lean/declarations/instance--3c922e71acf61b315fd6c6c5.md) | 196 | `declaration-track:3c922e71acf61b315fd6c6c541011c185ccadb787d00f14a5f4da08cd94fe581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
