# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dc0f775361ae196ba17d54d7f7ddbb1599cb240",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dc0f775361ae196ba17d54d7f7ddbb1599cb240`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NthRewrite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular--6c59ccff28c426d5a6982fd0.md) | 49 | `declaration-track:6c59ccff28c426d5a6982fd0b10b7cf338a1e84c3c0fdf00bbc16e345d3dc317` |
| 2 | `def` | [IsRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular--302ca0284bca156248b6ab0c.md) | 56 | `declaration-track:302ca0284bca156248b6ab0caf0aa1cf56a5428427d61f06eac1a2597ee665aa` |
| 3 | `structure` | [IsAddRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isaddregular--f3adf20837780089021ba433.md) | 61 | `declaration-track:f3adf20837780089021ba43356a017ee7d954768993ef39e8530d64e235ea84e` |
| 4 | `structure` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular--7342e28c549ec26b96f43cd8.md) | 69 | `declaration-track:7342e28c549ec26b96f43cd8c836abbbf8fb39322bf08640d9e3416461c1beb7` |
| 5 | `theorem` | [isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-iff--8ef1dce625c5df839359df1c.md) | 80 | `result-track:8ef1dce625c5df839359df1cfbc45c4ffb2d236f371ae96fd5943b5c792c4055` |
| 6 | `theorem` | [MulLECancellable.isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/mullecancellable-isleftregular--d839e33de8648a43e25f91e8.md) | 84 | `result-track:d839e33de8648a43e25f91e8dcf951ea90febb374e2dc83339d7324f4beeff0c` |
| 7 | `theorem` | [IsLeftRegular.right_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-right-of-commute--3f3b3b9a96b168b8a0c8742b.md) | 88 | `result-track:3f3b3b9a96b168b8a0c8742b37c39a4bc341881bb4d3ebfe4a07629a70587045` |
| 8 | `theorem` | [IsRightRegular.left_of_commute](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-left-of-commute--3467980b2d884a7997c459ce.md) | 92 | `result-track:3467980b2d884a7997c459ce8958d45dfcd1cd31dcb5fc0ad8bf45db984f4363` |
| 9 | `theorem` | [Commute.isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/commute-isrightregular-iff--3b5c42a656a76f5e87c2a3be.md) | 97 | `result-track:3b5c42a656a76f5e87c2a3beb6f9e50aad0d9132c5c7f1d6293ad9eca4472174` |
| 10 | `theorem` | [Commute.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/commute-isregular-iff--72fc8bdb27df257d1eee52f7.md) | 101 | `result-track:72fc8bdb27df257d1eee52f767446946eb0296837f071c8250c70e16c92d3f88` |
| 11 | `theorem` | [IsLeftRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-mul--ae70aa9934327e893d90dfc7.md) | 112 | `result-track:ae70aa9934327e893d90dfc75fe5a42f6c7d04c0eca6271f0afedf1e20b9f174` |
| 12 | `theorem` | [IsRightRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-mul--42296b8c829d0d09652fe7ee.md) | 118 | `result-track:42296b8c829d0d09652fe7ee789a6bcd08572c21cd027452db222a8062577587` |
| 13 | `theorem` | [IsRegular.mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-mul--c76e11f532371fe809dd87cd.md) | 124 | `result-track:c76e11f532371fe809dd87cd62c93844de28ee612574347deb63429a7810569c` |
| 14 | `theorem` | [IsLeftRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-of-mul--de65f16c4f1e7d842633d941.md) | 132 | `result-track:de65f16c4f1e7d842633d941949bd288b39701382bef362cb4024a455503f77d` |
| 15 | `theorem` | [mul_isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/mul-isleftregular-iff--af8827512f9e22bde35d9de8.md) | 139 | `result-track:af8827512f9e22bde35d9de8700e48f3eb9f44aa9c83a1e1cdf06037f975e1f0` |
| 16 | `theorem` | [IsRightRegular.of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-of-mul--d2903d4142ae431e5fe32b05.md) | 147 | `result-track:d2903d4142ae431e5fe32b05792cca28e8c81ef09013157319ce6586ee265fd4` |
| 17 | `theorem` | [mul_isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/mul-isrightregular-iff--17f73b20167ca688c9c867f9.md) | 157 | `result-track:17f73b20167ca688c9c867f9c08eff1ff2f1b8cd60497df8b3438d50b5dd3ed9` |
| 18 | `theorem` | [isRegular_mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-mul-and-mul-iff--44178a77b2ce1c00ae9d0f57.md) | 165 | `result-track:44178a77b2ce1c00ae9d0f57e650ae8263834529654b1f0c3592f5930b079a19` |
| 19 | `theorem` | [IsRegular.and_of_mul_of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-and-of-mul-of-mul--650d2a72e6eaaad9606d4bc1.md) | 178 | `result-track:650d2a72e6eaaad9606d4bc11bf464825883b4296386ec27d0de610fe40f6385` |
| 20 | `theorem` | [IsLeftRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-subsingleton--c53d483c6951adee8cda66f2.md) | 189 | `result-track:c53d483c6951adee8cda66f2dfcd80180d20df521524a832909d49085ff42872` |
| 21 | `theorem` | [IsRightRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-subsingleton--8485aa01fb95003f20dd5c6d.md) | 193 | `result-track:8485aa01fb95003f20dd5c6d3ccfaa5b0c4ae8f0fcbf57462d568282d18d1cbb` |
| 22 | `theorem` | [IsRegular.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-subsingleton--497ef1ad45191b9660d97951.md) | 197 | `result-track:497ef1ad45191b9660d9795164ad920090e05a2366894cd6a3c116f89713aad8` |
| 23 | `theorem` | [isLeftRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-zero-iff-subsingleton--cf029b1199127f86d5763228.md) | 201 | `result-track:cf029b1199127f86d5763228725559402deddb00e4af70213a3dea84da3b8772` |
| 24 | `theorem` | [not_isLeftRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/not-isleftregular-zero-iff--ec0507025acad4fa26272432.md) | 205 | `result-track:ec0507025acad4fa262724324ce34acdebfd2bd87087b8017df28915996b91e9` |
| 25 | `theorem` | [isRightRegular_zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-zero-iff-subsingleton--ac6c11171f7e8910fe112e02.md) | 211 | `result-track:ac6c11171f7e8910fe112e02a3dd59f085b0a323e0a2a6d0616c66812631bcd3` |
| 26 | `theorem` | [not_isRightRegular_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/not-isrightregular-zero-iff--947d3c79efd005054168b3eb.md) | 215 | `result-track:947d3c79efd005054168b3ebec0f19069ef3eed82193735e4114e27fca498359` |
| 27 | `theorem` | [isRegular_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-iff-subsingleton--baf948366c38eeb29fc38cc0.md) | 221 | `result-track:baf948366c38eeb29fc38cc04b46e8e49ba26418293b01a02211db72580cdb52` |
| 28 | `theorem` | [IsLeftRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-ne-zero--d77a93ae24e84873da0b84af.md) | 226 | `result-track:d77a93ae24e84873da0b84aff3d46fc93f19dc10d866abd6c868e3bc97ed7a80` |
| 29 | `theorem` | [IsRightRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-ne-zero--cc01950438fa81748b2ebcc7.md) | 233 | `result-track:cc01950438fa81748b2ebcc7d196da69fd8bfb76cf1d99cd8caff78a1016ad03` |
| 30 | `theorem` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-ne-zero--732364118de195f2fc687b3e.md) | 240 | `result-track:732364118de195f2fc687b3eb85485f9ecc600916d643912297a8685c325e23f` |
| 31 | `theorem` | [not_isLeftRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/not-isleftregular-zero--3008d4e047dd82ed37baf23f.md) | 244 | `result-track:3008d4e047dd82ed37baf23f23352de5db541df8c04c88b6f7fac8e9749224c0` |
| 32 | `theorem` | [not_isRightRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/not-isrightregular-zero--7dfcdc15cd9e6f107fd71c66.md) | 248 | `result-track:7dfcdc15cd9e6f107fd71c662e03c58159552ddae08cad42d118c10f6e40c1d4` |
| 33 | `theorem` | [not_isRegular_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/not-isregular-zero--549ca7bd69acfd82bd5eeaf2.md) | 252 | `result-track:549ca7bd69acfd82bd5eeaf227c1cd415d3d3a7aa2966b022c7b96dd3c281d3f` |
| 34 | `lemma` | [IsLeftRegular.mul_left_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-mul-left-eq-zero-iff--02c30a3c36166ccd734c9b1c.md) | 254 | `result-track:02c30a3c36166ccd734c9b1cce83bcc69eb22033529d31ef871091ce1559f893` |
| 35 | `lemma` | [IsRightRegular.mul_right_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-mul-right-eq-zero-iff--1334c9e332e2123a40e1103b.md) | 258 | `result-track:1334c9e332e2123a40e1103bd39853f0cb546a88f93472f7a6bee2764564d110` |
| 36 | `theorem` | [isRegular_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-one--ba7cf19ce2142a37eb174558.md) | 270 | `result-track:ba7cf19ce2142a37eb1745583969393049c92fd283e8287bd6abed52d075dd69` |
| 37 | `theorem` | [isRegular_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-mul-iff--1216a9e2c495378cac35d636.md) | 282 | `result-track:1216a9e2c495378cac35d6361567ad7a5dec2166bad91a050d59a9366d61916b` |
| 38 | `theorem` | [isLeftRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-of-mul-eq-one--52e69ad16573ae4a1b0742ac.md) | 294 | `result-track:52e69ad16573ae4a1b0742acd9e0286b8fd7b365d60883df2b8e7106ae17696d` |
| 39 | `theorem` | [isRightRegular_of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-of-mul-eq-one--a8a5cfbb5b3e58a045b798b8.md) | 299 | `result-track:a8a5cfbb5b3e58a045b798b840698090527b3f55c55ae78ed857fd964195a2cb` |
| 40 | `theorem` | [Units.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/units-isregular--de8e2c3bacf5728ebd553deb.md) | 304 | `result-track:de8e2c3bacf5728ebd553deb2caf7329488d944cd6bcb7a54dd66ae1be4e3953` |
| 41 | `theorem` | [IsUnit.isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isunit-isregular--140869d16d4849e423e81a56.md) | 309 | `result-track:140869d16d4849e423e81a5658340619702c48c4227dc0f5220ec9b64649ed02` |
| 42 | `lemma` | [IsLeftRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-pow--745cb6f075fbd2a9bddba2f2.md) | 314 | `result-track:745cb6f075fbd2a9bddba2f290fd0747d3c69dd7b7837f4033344cb2abb19234` |
| 43 | `lemma` | [IsRightRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-pow--63fb8392bbc4e1308d239838.md) | 318 | `result-track:63fb8392bbc4e1308d23983878e1b2930474198cc6ff9de98de8c061f0b52603` |
| 44 | `lemma` | [IsRegular.pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-pow--3ac2ea8cd085be3fcdaeccc9.md) | 323 | `result-track:3ac2ea8cd085be3fcdaeccc958c52084adc39117eee8d24706296aa678e14c7b` |
| 45 | `lemma` | [IsLeftRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-pow-iff--45c29f3d6731e3b344c03479.md) | 327 | `result-track:45c29f3d6731e3b344c0347933b99ebde196f62f23e240334394751374ff05a4` |
| 46 | `lemma` | [IsRightRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-pow-iff--f2d07a6dfdcf22ec3245f799.md) | 332 | `result-track:f2d07a6dfdcf22ec3245f79926e9ac76bb5c2141b8bf35054a2360c73a2e195e` |
| 47 | `lemma` | [IsRegular.pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-pow-iff--f1eb8b3e54d018a28aedda3d.md) | 337 | `result-track:f1eb8b3e54d018a28aedda3d0824cbcf6ce68511c7e5924d073309bf092b7d86` |
| 48 | `theorem` | [IsLeftRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isleftregular-all--b2477a52c53b538dfe5e19fb.md) | 345 | `result-track:b2477a52c53b538dfe5e19fb864ae44bbfb32dc41290fba5cb4ca8e63260a89a` |
| 49 | `theorem` | [IsRightRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isrightregular-all--e1c38dfde281008e875d8428.md) | 350 | `result-track:e1c38dfde281008e875d842894674f82e50303890f8410e8b5214a2e3ce12726` |
| 50 | `theorem` | [IsRegular.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-all--3fef32500c136bfe61585d84.md) | 355 | `result-track:3fef32500c136bfe61585d8448bbbeaef9ca2459278b83da7f7ee577a3d1e5a2` |
| 51 | `theorem` | [isRegular_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-of-ne-zero--0af2cbb09efa215c081bc7c8.md) | 363 | `result-track:0af2cbb09efa215c081bc7c8d8c2f37237e3edaca299718ab24ab5fcb2e5300c` |
| 52 | `theorem` | [isRegular_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9f7d36385f8d55087044d1c41609742424d38102f5e8cf92a02a5276248ce470.lean/declarations/isregular-iff-ne-zero--2edf9a8f2e26ae9d0bbd0266.md) | 367 | `result-track:2edf9a8f2e26ae9d0bbd026616b544895dbb36b05f700c7004a2515b50e7a228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
