# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Parity.Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41c94fba7f25d1a08e7159784bdf6e613e10039",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41c94fba7f25d1a08e7159784bdf6e613e10039`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [emod_two_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/emod-two-ne-one--d79f5cc290012851d73c315c.md) | 34 | `result-track:d79f5cc290012851d73c315c530c87503c81981e9eab261204c9e6d284d11f44` |
| 2 | `theorem` | [emod_two_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/emod-two-ne-zero--0f554fdff5ca72fb0bf56950.md) | 40 | `result-track:0f554fdff5ca72fb0bf569504e70984fc88ab3625ce40f1420108fdf3089a4a8` |
| 3 | `theorem` | [even_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-iff--3800eba3c4f10716412cb720.md) | 44 | `result-track:3800eba3c4f10716412cb720d0e9b98b190ed6ce3ced250392f49726fd8dca40` |
| 4 | `theorem` | [odd_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-iff--3d58286d0835c4a429aaf45e.md) | 49 | `result-track:3d58286d0835c4a429aaf45e32b10ab03590e220a735bc41a905d2cc84a9f381` |
| 5 | `theorem` | [not_even_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/not-even-iff--51b7ee3fe7359663087a6daa.md) | 54 | `result-track:51b7ee3fe7359663087a6daa1264387719daa1a8511416bcf49cb71c733cf2a7` |
| 6 | `theorem` | [not_odd_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/not-odd-iff--e9de78746e1ff09e32580aba.md) | 57 | `result-track:e9de78746e1ff09e32580aba8119b2d9b597c79775849f14544d78b1789fc537` |
| 7 | `theorem` | [even_iff_not_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-iff-not-odd--c6a89c7cd3a167605eecedce.md) | 60 | `result-track:c6a89c7cd3a167605eecedced712055f2fc9830d7602b415ba1bd6da2af03a66` |
| 8 | `theorem` | [odd_iff_not_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-iff-not-even--4ff6d3a6be9bf59afc5591a0.md) | 64 | `result-track:4ff6d3a6be9bf59afc5591a09cb9ab70c9a4e69be0fbf7993388ae9315621df7` |
| 9 | `theorem` | [isCompl_even_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/iscompl-even-odd--521c60a0e04d7a23ce7c2578.md) | 67 | `result-track:521c60a0e04d7a23ce7c25782bf645d488cb1d938e3fed8d92e8398cca1689a0` |
| 10 | `theorem` | [even_or_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-or-odd--6597e6f25ec5dbb6cc5b1ff9.md) | 71 | `result-track:6597e6f25ec5dbb6cc5b1ff91082c510070f8981abba72eedee9ac4c28d35183` |
| 11 | `theorem` | [even_or_odd'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-or-odd--3778e6846887dcedafc998dd.md) | 75 | `result-track:3778e6846887dcedafc998ddea347d79930cd65156548b1be743ad49ee587e70` |
| 12 | `theorem` | [even_xor'_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-xor-odd--5d8dbed76f6056693b8ad666.md) | 79 | `result-track:5d8dbed76f6056693b8ad666c9cc25a12251c0b777fcfbbecdb817569a32042a` |
| 13 | `theorem` | [even_xor'_odd'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-xor-odd--fefb98e40a4fb55c2e95c64a.md) | 85 | `result-track:fefb98e40a4fb55c2e95c64a91850a8e65710f79652d4f9a8b871998cb96bcc8` |
| 14 | `theorem` | [two_dvd_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/two-dvd-ne-zero--ca7c12cd08b1bef6631a9e74.md) | 94 | `result-track:ca7c12cd08b1bef6631a9e741f0a5b0e8ff77bd8a6ff2fe33c124912b6ffeddc` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/instance--b0ae134061a69f9dff18bc4f.md) | 98 | `declaration-track:b0ae134061a69f9dff18bc4f9ace723d506eff675531182df4dd041b838f5ee8` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/instance--7572029a4be2d9fc723c564b.md) | 100 | `declaration-track:7572029a4be2d9fc723c564b4ed54e49c4747a6fa1eddc1201c95a804ebf6f75` |
| 17 | `theorem` | [not_even_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/not-even-one--f65c98948d2ce58da8b991af.md) | 103 | `result-track:f65c98948d2ce58da8b991af0b353c3585b7a6ac8b242bf6344abbab111ae9e4` |
| 18 | `theorem` | [even_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-add--f7dde642538fce277d28acbe.md) | 109 | `result-track:f7dde642538fce277d28acbec77f8ac8a8e1278d0830c64757cca2921080bf9d` |
| 19 | `theorem` | [even_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-add--06f2059386cd29edd6728a45.md) | 115 | `result-track:06f2059386cd29edd6728a45e526436bc94cdbd520e6924e9b53646857c30549` |
| 20 | `theorem` | [not_even_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/not-even-bit1--2ca4e19db6f05e2ece67ef65.md) | 122 | `result-track:2ca4e19db6f05e2ece67ef65fec1be9c72bf0428c36a518a1913163b27b3b04c` |
| 21 | `theorem` | [two_not_dvd_two_mul_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/two-not-dvd-two-mul-add-one--91986788ed510347ef467c05.md) | 125 | `result-track:91986788ed510347ef467c0529a741d6f124a5bfb7e67141f0e519b34948f8b5` |
| 22 | `theorem` | [even_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-sub--44fa2289382c4f485f13c790.md) | 130 | `result-track:44fa2289382c4f485f13c79018e72c859927555e14bf0e42e42c2491cd423a9b` |
| 23 | `theorem` | [even_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-sub--93e74c8baf5e7f974a90846b.md) | 134 | `result-track:93e74c8baf5e7f974a90846bbed43e342127cc41fd64f1387a8048293b263bec` |
| 24 | `theorem` | [even_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-add-one--d186073611830202775494f5.md) | 139 | `result-track:d186073611830202775494f5363c6c12d2457d6ab6351185fc7f78dd8773f227` |
| 25 | `theorem` | [even_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-mul--9636ecfdb416baab8cb0d8b0.md) | 144 | `result-track:9636ecfdb416baab8cb0d8b0f83015ba096784315da8f8037fcedf0c087b4ac2` |
| 26 | `theorem` | [odd_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-mul--e49a60dd51920f640e021cd3.md) | 150 | `result-track:e49a60dd51920f640e021cd30f9a64c5eb97a6d283f3237791f9a039b11ea695` |
| 27 | `theorem` | [Odd.of_mul_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-of-mul-left--48b393fb65d1fc90b9ca4f8e.md) | 153 | `result-track:48b393fb65d1fc90b9ca4f8e28e4997d3610d862c22b1991a131272648c49c17` |
| 28 | `theorem` | [Odd.of_mul_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-of-mul-right--70f4d5230d35748b838c871f.md) | 157 | `result-track:70f4d5230d35748b838c871fef56c6845f9c11d9f40a40aefaefee5717d04f32` |
| 29 | `theorem` | [even_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-pow--5371c85f408718ba15e22179.md) | 162 | `result-track:5371c85f408718ba15e22179e91ac2d80c661ab66ed7c455f8e1597492ea6532` |
| 30 | `theorem` | [even_pow'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-pow--1e57770984b8d6f76ecffb94.md) | 167 | `result-track:1e57770984b8d6f76ecffb940781ab483bede6e9feb11a6c25a1aec2ecd357f5` |
| 31 | `theorem` | [odd_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-pow--f665911573085156376688df.md) | 172 | `result-track:f665911573085156376688df0fa0f5c2380ce6c6c59c9b1ad242e5690a559339` |
| 32 | `theorem` | [odd_pow'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-pow--4366bf450baf49aef5332ebb.md) | 175 | `result-track:4366bf450baf49aef5332ebbd937e53802cbe7c8ee0291c4c1de5658755faca8` |
| 33 | `theorem` | [odd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-add--77c5dc117d0ec62e10c5c3cc.md) | 179 | `result-track:77c5dc117d0ec62e10c5c3ccc08097d687fb0506db97cc028797b5a6aa441840` |
| 34 | `theorem` | [odd_add'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-add--fea58b50a9d8919e67e3ea5a.md) | 183 | `result-track:fea58b50a9d8919e67e3ea5a1c803de37a2c285fdb2324cf3fdc3c80e95366cc` |
| 35 | `theorem` | [ne_of_odd_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/ne-of-odd-add--3227f6b10d22d2cf195c77fd.md) | 187 | `result-track:3227f6b10d22d2cf195c77fdf4a48cfd23e2a831fda03228d68e445dca13f1da` |
| 36 | `theorem` | [odd_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-sub--34a22b10e167e75b3e605d2c.md) | 192 | `result-track:34a22b10e167e75b3e605d2c1685e10bf7f75ce11953870fed1458a3d7941dbf` |
| 37 | `theorem` | [odd_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-sub--b95254ccc21bd737bf1db9a6.md) | 196 | `result-track:b95254ccc21bd737bf1db9a6f3d21392b26e73328332969c4a3901150daa4e29` |
| 38 | `theorem` | [even_mul_succ_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-mul-succ-self--63e103467996cd0c2d9aaf9e.md) | 200 | `result-track:63e103467996cd0c2d9aaf9ec9b4e8db7b4fc61b158c9290faa18ca260fd48f3` |
| 39 | `theorem` | [even_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/even-coe-nat--7f03ac10d9012f128fb8a68c.md) | 205 | `result-track:7f03ac10d9012f128fb8a68cd2be11ea2bb20dda415c4770afb9d3988a303eae` |
| 40 | `theorem` | [odd_coe_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/odd-coe-nat--7e2a8ed172611b1635c316c5.md) | 211 | `result-track:7e2a8ed172611b1635c316c538e0aab73b1d0e512f798da5d87c626acd469c83` |
| 41 | `theorem` | [natAbs_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/natabs-even--6d1dd87fbc0dfeeca86dbba3.md) | 216 | `result-track:6d1dd87fbc0dfeeca86dbba3d83ca5ecb4fee6e21511fe1fb20512e395f454a1` |
| 42 | `theorem` | [natAbs_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/natabs-odd--197600cb311752f6755ffe39.md) | 222 | `result-track:197600cb311752f6755ffe393da7a54a265fb5244de3faade02b3268c3e64231` |
| 43 | `theorem` | [four_dvd_add_or_sub_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/four-dvd-add-or-sub-of-odd--cb01069b573f437e7c0b28cb.md) | 236 | `result-track:cb01069b573f437e7c0b28cb3c8514a4834853c38521b0ec6897187db5e61563` |
| 44 | `theorem` | [two_mul_ediv_two_of_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/two-mul-ediv-two-of-even--07369adb513b48bba2a8c144.md) | 256 | `result-track:07369adb513b48bba2a8c1448dbe8db336348abfc1b193e19973bce68a1173ec` |
| 45 | `theorem` | [ediv_two_mul_two_of_even](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/ediv-two-mul-two-of-even--531412300e4b17ebf3cc1fe9.md) | 260 | `result-track:531412300e4b17ebf3cc1fe99ee4420196727031eac4189e6c680a718384dc5b` |
| 46 | `theorem` | [two_mul_ediv_two_add_one_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/two-mul-ediv-two-add-one-of-odd--b31e4378fbc6e6cb34410e7d.md) | 264 | `result-track:b31e4378fbc6e6cb34410e7d34cbb60bcba18aca665b2f13c84600798e5f87bb` |
| 47 | `theorem` | [ediv_two_mul_two_add_one_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/ediv-two-mul-two-add-one-of-odd--ebe3304db0d8c054c5b85418.md) | 271 | `result-track:ebe3304db0d8c054c5b854180609d40b9611d40e149a8152528b76e85963b213` |
| 48 | `theorem` | [add_one_ediv_two_mul_two_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/add-one-ediv-two-mul-two-of-odd--c5f3048f98de3db5314f502e.md) | 277 | `result-track:c5f3048f98de3db5314f502e447328de5908468241218c32b57e8aa0258e9c10` |
| 49 | `theorem` | [two_mul_ediv_two_of_odd](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/two-mul-ediv-two-of-odd--217696a0c167a8dafaa1ca24.md) | 284 | `result-track:217696a0c167a8dafaa1ca2407c7fb1e9bc462b196b281c159aa129e407ae631` |
| 50 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/example--80e4eed076577d09a21944a8.md) | 289 | `declaration-track:80e4eed076577d09a21944a826c129396d56fd50f04b3566c87cdcced63ef9d8` |
| 51 | `example` | [(anonymous)](../../../../mathematics/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/declarations/example--675eec49f76ce40f89dfa08e.md) | 292 | `declaration-track:675eec49f76ce40f89dfa08edc4b668738e13e8cbfe957bf5b388a85dfccbbc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
