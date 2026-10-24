# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PythagoreanTriples.Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73dd82173005f65fadd4e8f706d3a62c4d0956eb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73dd82173005f65fadd4e8f706d3a62c4d0956eb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.NatPrime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_ne_two_fin_zmod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/sq-ne-two-fin-zmod-four--f6977c8de9b1b67ed98ca064.md) | 35 | `result-track:f6977c8de9b1b67ed98ca0647eb99ac1131f22f52610061b2a6b88f4a2529312` |
| 2 | `theorem` | [Int.sq_ne_two_mod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/int-sq-ne-two-mod-four--c02d4d829a9259fe185e9569.md) | 39 | `result-track:c02d4d829a9259fe185e956921c48ba1653f808fccbeb3358fe9a8347906620e` |
| 3 | `def` | [PythagoreanTriple](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/pythagoreantriple--bf259692fe3b8a783db9f8e8.md) | 47 | `declaration-track:bf259692fe3b8a783db9f8e88c3f0370c7b95bc57ba5c6c7291021ce97e760b6` |
| 4 | `theorem` | [pythagoreanTriple_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/pythagoreantriple-comm--7442fa24277cf76fc408a1a2.md) | 52 | `result-track:7442fa24277cf76fc408a1a220cf41090e977766bb2d6508575f870432923461` |
| 5 | `theorem` | [PythagoreanTriple.zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/pythagoreantriple-zero--0d47a95d0c5d18f8967d80ba.md) | 57 | `result-track:0d47a95d0c5d18f8967d80bad62a015acd07e855ef0c061d3824c334d9d061df` |
| 6 | `theorem` | [eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/eq--33db88339312f4a0d01628e0.md) | 64 | `result-track:33db88339312f4a0d01628e03712ca87d36ec3b51f4a52efd7a9bc419588781f` |
| 7 | `theorem` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/symm--613cbafe8c9117a598f34466.md) | 68 | `result-track:613cbafe8c9117a598f3446654dc991b04556527da8f51d0911738bde838c605` |
| 8 | `theorem` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/mul--d986dac24bc080f3e877d7a3.md) | 73 | `result-track:d986dac24bc080f3e877d7a333cf54e10ac5bcfcdeb7b6079c00a17ee6c1ef50` |
| 9 | `theorem` | [mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/mul-iff--4ebf08c21032cfd4da19a656.md) | 81 | `result-track:4ebf08c21032cfd4da19a656ba7804588befd98d9dfd6cab3d1ebc099ccf409a` |
| 10 | `def` | [IsClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isclassified--30e9cce6da919c84abbce2f4.md) | 94 | `declaration-track:30e9cce6da919c84abbce2f45839ab59fc1f91cd17dfc6c78481b3bca2399e44` |
| 11 | `def` | [IsPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified--5b021fa2a0c36b17725c6155.md) | 106 | `declaration-track:5b021fa2a0c36b17725c615586ab9f561a228835371bd22be876fcfa0781f14a` |
| 12 | `theorem` | [mul_isClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/mul-isclassified--d2f2ccd98aecb9ceebf69264.md) | 114 | `result-track:d2f2ccd98aecb9ceebf6926456c596172d22e839101471d24fb3a7e78c1c214f` |
| 13 | `theorem` | [even_odd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/even-odd-of-coprime--b01ae854f67befc26115e3b3.md) | 125 | `result-track:b01ae854f67befc26115e3b3fa31a39b28b8d95532afb057af6a320eb0b93870` |
| 14 | `theorem` | [gcd_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/gcd-dvd--b7149936c4075dc7d9de1d55.md) | 156 | `result-track:b7149936c4075dc7d9de1d554a0916a175ef83ded10d28d8d3a8b5fcd04e9f23` |
| 15 | `theorem` | [normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/normalize--6421fadaadd7d49e693ac363.md) | 176 | `result-track:6421fadaadd7d49e693ac36360b6e3dbea857ccd7eabea0464c787e4442299dc` |
| 16 | `theorem` | [isClassified_of_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isclassified-of-isprimitiveclassified--cc8596e1d73f20b3ec2b9d66.md) | 200 | `result-track:cc8596e1d73f20b3ec2b9d668319e7f82a70a97aeb7bfd9128af7fe443cb330b` |
| 17 | `theorem` | [isClassified_of_normalize_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isclassified-of-normalize-isprimitiveclassified--178e5efe533c4aacd988a487.md) | 205 | `result-track:178e5efe533c4aacd988a4878fde7c233e9c83251171f72b83b8b3878ea0c00e` |
| 18 | `theorem` | [ne_zero_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/ne-zero-of-coprime--4280b18b4fd58fe2cc8a2776.md) | 214 | `result-track:4280b18b4fd58fe2cc8a27765f73a3fa0f62d644d318749796d84500c2f1db4a` |
| 19 | `theorem` | [isPrimitiveClassified_of_coprime_of_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified-of-coprime-of-zero-left--9674a927dfb38b16562e253f.md) | 226 | `result-track:9674a927dfb38b16562e253f93630d9344de2a4e18be4d2191c111d72ceab262` |
| 20 | `theorem` | [coprime_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-of-coprime--427760408ed1d4f7ddb097a2.md) | 239 | `result-track:427760408ed1d4f7ddb097a275754e2a93fd5faa708a65a02699f110e24a813d` |
| 21 | `def` | [circleEquivGen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/circleequivgen--26d1a1989f00e67b316f1904.md) | 264 | `declaration-track:26d1a1989f00e67b316f19041cfcc010b0e74673ec3f6090c470c71694e88129` |
| 22 | `theorem` | [circleEquivGen_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/circleequivgen-apply--fee598642de8ff9791c2207c.md) | 298 | `result-track:fee598642de8ff9791c2207cea4f7add3e3f3fbbcf4220ce6c0ed4c856db35f9` |
| 23 | `theorem` | [circleEquivGen_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/circleequivgen-symm-apply--4836c08656f6e290a262889f.md) | 303 | `result-track:4836c08656f6e290a262889f9ae3f92ae9b406881fe44203e6bdd5c7950d0ea9` |
| 24 | `theorem` | [coprime_sq_sub_sq_add_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-sq-add-of-even-odd--ade67173323373f051e4a787.md) | 310 | `result-track:ade67173323373f051e4a787ccb8a9b6a8be407dcf2b1cfbc9930fc510e94ee2` |
| 25 | `theorem` | [coprime_sq_sub_sq_add_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-sq-add-of-odd-even--f6d0bb7b00bd6e129e1b274a.md) | 336 | `result-track:f6d0bb7b00bd6e129e1b274aec473c06bc67c75d68ba4d4a5b169dc86a57ba94` |
| 26 | `theorem` | [coprime_sq_sub_mul_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-mul-of-even-odd--4917d203d81e9b0359dc9017.md) | 342 | `result-track:4917d203d81e9b0359dc9017fcac6692c96cd9d53da8ba9e8aee73ddafdcef22` |
| 27 | `theorem` | [coprime_sq_sub_mul_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-mul-of-odd-even--51b5e3b3d7757be3e9df5fa3.md) | 374 | `result-track:51b5e3b3d7757be3e9df5fa365a62f048c1925e1bf9268facb133fb95ee27662` |
| 28 | `theorem` | [coprime_sq_sub_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-mul--3e09f0f5a930ccf4d6921c3d.md) | 380 | `result-track:3e09f0f5a930ccf4d6921c3d363afbf67c4c2adea1b198bf56fcef162c9ff36d` |
| 29 | `theorem` | [coprime_sq_sub_sq_sum_of_odd_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-sq-sub-sq-sum-of-odd-odd--0e73e5698f2a85932dd6f987.md) | 387 | `result-track:0e73e5698f2a85932dd6f987f812bf5c05c4c10c74e6ae83705e98e9c5b76296` |
| 30 | `theorem` | [isPrimitiveClassified_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified-aux--d5041ae54745964c99373d9b.md) | 423 | `result-track:d5041ae54745964c99373d9b464aabd03bba797caa08262e959ebc0e3006bf30` |
| 31 | `theorem` | [isPrimitiveClassified_of_coprime_of_odd_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified-of-coprime-of-odd-of-pos--c777be2ec5ecea80036caa51.md) | 440 | `result-track:c777be2ec5ecea80036caa5113efb061558f41a8369317501e98513b2de5807f` |
| 32 | `theorem` | [isPrimitiveClassified_of_coprime_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified-of-coprime-of-pos--bd6ce49ff35ea7f6a4029f05.md) | 536 | `result-track:bd6ce49ff35ea7f6a4029f05b556619c91fe62db12c16e2db7cf18045dbc475f` |
| 33 | `theorem` | [isPrimitiveClassified_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/isprimitiveclassified-of-coprime--e3b635221b242c50e80586c1.md) | 544 | `result-track:e3b635221b242c50e80586c1a3aa6e4cb66fcb626072fc2e94df4e99d5f19072` |
| 34 | `theorem` | [classified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/classified--1019f2ff833edfc1d27dc1f8.md) | 552 | `result-track:1019f2ff833edfc1d27dc1f8e6709c6154c8f2e1c15af3e3881aa34c9b6d60b3` |
| 35 | `theorem` | [coprime_classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-classification--03ddfa9f45dd7077382ee2a0.md) | 566 | `result-track:03ddfa9f45dd7077382ee2a00c06f779725c32807d9760721faa50fa301de8d5` |
| 36 | `theorem` | [coprime_classification'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/coprime-classification--fcadc652add901d7ad7b0419.md) | 595 | `result-track:fcadc652add901d7ad7b0419e75aa4f80ee51f4a35b97b22a47b57e04400b0ef` |
| 37 | `theorem` | [classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant9685a579793802ac9f876072cbcc0db6ca18e5b0d60662747fe9247a4156f4ba.lean/declarations/classification--4dcc26495ff1f1fde0c98d32.md) | 646 | `result-track:4dcc26495ff1f1fde0c98d327e859a46abba8454562fc7b06eb4e15c949ed685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
