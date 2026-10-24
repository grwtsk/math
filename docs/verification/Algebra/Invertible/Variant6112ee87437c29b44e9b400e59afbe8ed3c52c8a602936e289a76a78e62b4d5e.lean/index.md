# Verification target: GRWTSK.Algebra.Invertible.Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32f2a2f0b0156451507236edc754bce6811d6308",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32f2a2f0b0156451507236edc754bce6811d6308`.

Source path: `GRWTSK/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Commute` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [CharP.intCast_mul_natCast_gcdA_eq_gcd](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/charp-intcast-mul-natcast-gcda-eq-gcd--8a2b400a61326b1b98924845.md) | 28 | `result-track:8a2b400a61326b1b989248453ae6a4b226a9b5471ce0385245d05532f9693304` |
| 2 | `theorem` | [CharP.natCast_gcdA_mul_intCast_eq_gcd](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/charp-natcast-gcda-mul-intcast-eq-gcd--1f78e1bb62ee2ca74fdeb87d.md) | 33 | `result-track:1f78e1bb62ee2ca74fdeb87d7980cfb9b64299abb1f08adc2ece46003b139324` |
| 3 | `def` | [invertibleOfCoprime](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertibleofcoprime--d7e718c0f68c7bc46b6730c8.md) | 39 | `declaration-track:d7e718c0f68c7bc46b6730c878301183c12a6d56485a1e2e381b0bdd6099edd4` |
| 4 | `theorem` | [invOf_eq_of_coprime](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invof-eq-of-coprime--45d1394645bc397f5e8caad9.md) | 45 | `result-track:45d1394645bc397f5e8caad914e85e7921ac4310b07c728067ba445675d58f63` |
| 5 | `theorem` | [CharP.isUnit_natCast_iff](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/charp-isunit-natcast-iff--353441a026378cef7e4c0078.md) | 50 | `result-track:353441a026378cef7e4c0078f2dfbb4bd32a8a617268efd8b40a2528e936dbff` |
| 6 | `theorem` | [CharP.isUnit_ofNat_iff](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/charp-isunit-ofnat-iff--c18d4ff4c4ef30a7224d6b56.md) | 59 | `result-track:c18d4ff4c4ef30a7224d6b565d446de174a83c6cf055247c0020d79329300f93` |
| 7 | `theorem` | [CharP.isUnit_intCast_iff](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/charp-isunit-intcast-iff--b4497ec13192d8a738a46170.md) | 63 | `result-track:b4497ec13192d8a738a461700f72a3d0bcf45ce01ce004a78b1180a38549ae5f` |
| 8 | `def` | [invertibleOfRingCharNotDvd](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertibleofringcharnotdvd--b2da40027e45cfdc21bec8b0.md) | 76 | `declaration-track:b2da40027e45cfdc21bec8b0d7739299294368e65c4295057da56ed37154e6e7` |
| 9 | `theorem` | [not_ringChar_dvd_of_invertible](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/not-ringchar-dvd-of-invertible--23140cf5cc7403194aac12b4.md) | 79 | `result-track:23140cf5cc7403194aac12b4feced862d54028223aacecb48249aa6ff200c9ea` |
| 10 | `def` | [invertibleOfCharPNotDvd](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertibleofcharpnotdvd--c1a3ef4df925a5f38632c9a1.md) | 85 | `declaration-track:c1a3ef4df925a5f38632c9a10cc5b4565bc209a3ba9108a8cc20a4363c577491` |
| 11 | `instance` | [invertibleOfPos](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertibleofpos--091adb54043562fba1122351.md) | 90 | `declaration-track:091adb54043562fba1122351915d0a530adf6ce31a15e91a6610344b901b2d33` |
| 12 | `instance` | [invertibleSucc](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertiblesucc--bd6ba9a4177819e7f26be831.md) | 99 | `declaration-track:bd6ba9a4177819e7f26be831b8911e4ca7d65b6d592c0383c7265dd0acda7483` |
| 13 | `instance` | [invertibleTwo](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertibletwo--647a6f8366bf9b8ce8bc1b84.md) | 108 | `declaration-track:647a6f8366bf9b8ce8bc1b8490a9d060ddb791853934927b0b663ca68d26abbf` |
| 14 | `instance` | [invertibleThree](../../../../mathematics/Algebra/Invertible/Variant6112ee87437c29b44e9b400e59afbe8ed3c52c8a602936e289a76a78e62b4d5e.lean/declarations/invertiblethree--f9f07f0f0ea2ff0d74a5ad44.md) | 111 | `declaration-track:f9f07f0f0ea2ff0d74a5ad447e539d1ccd188f9372b0fde7531f1f73cbc19e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
