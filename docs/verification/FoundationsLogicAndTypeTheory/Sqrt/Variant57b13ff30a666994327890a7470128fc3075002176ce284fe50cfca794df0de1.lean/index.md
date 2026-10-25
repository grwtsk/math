# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "419cd9fee93f54184edff1792649fbb73dc0a747",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `419cd9fee93f54184edff1792649fbb73dc0a747`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ForSqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/issqrt--6f5422c31a27f31757e48d05.md) | 34 | `declaration-track:6f5422c31a27f31757e48d05e3352e398640fcfd505cae7521bef5affab406bf` |
| 2 | `theorem` | [sqrt_isSqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-issqrt--647afabe86329d486ae1406a.md) | 47 | `result-track:647afabe86329d486ae1406aad2670ca0dd45cad5c2c05469fd84ad83e7f4e9e` |
| 3 | `theorem` | [sqrt_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-le--783bd25f8bf26b050f2d44fc.md) | 64 | `result-track:783bd25f8bf26b050f2d44fccb097ec32c47e496dc1584f3926779f56317babd` |
| 4 | `theorem` | [sqrt_le'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-le--a1365b0a47ee8c6b176ac34b.md) | 68 | `result-track:a1365b0a47ee8c6b176ac34b61c8b5e6c339454418ad553a12fa40186b97218d` |
| 5 | `theorem` | [lt_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/lt-succ-sqrt--4cc6f0d058e3f35573fc2ed9.md) | 72 | `result-track:4cc6f0d058e3f35573fc2ed9b08285ec3ffd93b449b964c2001128c76969a8f5` |
| 6 | `theorem` | [lt_succ_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/lt-succ-sqrt--baf5e2146299c4c36cce470d.md) | 76 | `result-track:baf5e2146299c4c36cce470d9dc8a6cdf4afffc43134565a2fa9abee5558e6cb` |
| 7 | `theorem` | [sqrt_le_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-le-add--1c2c66000ae0df9aa67aae0c.md) | 80 | `result-track:1c2c66000ae0df9aa67aae0c514ff251d9ed800a1c581de18db8e57a1a47642d` |
| 8 | `theorem` | [le_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/le-sqrt--c572eda808cf52baa959c824.md) | 84 | `result-track:c572eda808cf52baa959c8240c854493b5e18626f908447f99f860b66794c2d3` |
| 9 | `theorem` | [le_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/le-sqrt--d6469e6e7b5549f8a311a22b.md) | 89 | `result-track:d6469e6e7b5549f8a311a22b8fcc042fd4ab8f76b5d0362403f8839f13e92e72` |
| 10 | `theorem` | [sqrt_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-lt--49db405fa57c77be12bf0759.md) | 92 | `result-track:49db405fa57c77be12bf07599331419725aaca864040edc386be17b378157ee3` |
| 11 | `theorem` | [sqrt_lt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-lt--f003117161f84a07faa3e37a.md) | 96 | `result-track:f003117161f84a07faa3e37af1bcdc75e6a3a63f03cd51f73cf84509811791ea` |
| 12 | `theorem` | [sqrt_le_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-le-self--a5e303735dc7c768c19b204c.md) | 100 | `result-track:a5e303735dc7c768c19b204ca61d99b1229e5e6e93c0e248afa24b34f1c6846c` |
| 13 | `theorem` | [sqrt_le_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-le-sqrt--9cd84f17f709405e62436ef5.md) | 104 | `result-track:9cd84f17f709405e62436ef575f8a9ffa61278e7348670177e10c5a9d325a75d` |
| 14 | `theorem` | [sqrt_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-zero--cfd8a276dcdbba0ad8757570.md) | 109 | `result-track:cfd8a276dcdbba0ad8757570fa610f589b1f3fe54e7877a43d03f6a56f9c05bb` |
| 15 | `theorem` | [sqrt_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-eq-zero--984a1a26a2389c7c7adbc38a.md) | 112 | `result-track:984a1a26a2389c7c7adbc38a638266f215445d3aa964be27db046b2982bf65ac` |
| 16 | `theorem` | [eq_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/eq-sqrt--60c282a8bf9468577c99d2cd.md) | 118 | `result-track:60c282a8bf9468577c99d2cdb61677fbeb30319dfa33b4444978f0713a2c51be` |
| 17 | `theorem` | [eq_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/eq-sqrt--bb8a72814c00f681cddeff30.md) | 123 | `result-track:bb8a72814c00f681cddeff30d604eb5def13d9cd753e268d6c092b7b39b613eb` |
| 18 | `theorem` | [le_three_of_sqrt_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/le-three-of-sqrt-eq-one--110b40ad76ad4960776a58bc.md) | 127 | `result-track:110b40ad76ad4960776a58bcb027744bf65633f29144f802f30d9c943cf93cc7` |
| 19 | `theorem` | [sqrt_lt_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-lt-self--6c740be035f5393fd160d5f6.md) | 131 | `result-track:6c740be035f5393fd160d5f6dfe7e2d74a795bd70680354a195c00d72f04a9a3` |
| 20 | `theorem` | [sqrt_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-pos--adf2c5e583cf69e2f651937c.md) | 135 | `result-track:adf2c5e583cf69e2f651937c028f743a08c71cbf498756450e924818db272963` |
| 21 | `theorem` | [sqrt_add_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-add-eq--1951fcca741fe9271d658a23.md) | 139 | `result-track:1951fcca741fe9271d658a23e12ca1b9062190d5519486504ba73b27693d0e77` |
| 22 | `theorem` | [sqrt_add_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-add-eq--544ae926fb2e6732df83d194.md) | 148 | `result-track:544ae926fb2e6732df83d194544b6b8b4cda43bdfcd5c61401ea32ea4794f5c2` |
| 23 | `theorem` | [sqrt_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-eq--028c3424ab2ece1bdceb7ba8.md) | 152 | `result-track:028c3424ab2ece1bdceb7ba8e1f80d32d01e2a4939019fb918c23ce0b9bfa5b0` |
| 24 | `theorem` | [sqrt_eq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-eq--15cf85d56cab792122f51013.md) | 156 | `result-track:15cf85d56cab792122f510134627a57232af95cfafb4c7e06af6914bfd5bf965` |
| 25 | `theorem` | [sqrt_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-one--0094eb8e2cd78215ca8190ed.md) | 161 | `result-track:0094eb8e2cd78215ca8190edb6edff269b0cd3a3ca66e93082f7c7018d8d1828` |
| 26 | `theorem` | [sqrt_succ_le_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-succ-le-succ-sqrt--ae2af9de9db0aa05d1fdd311.md) | 165 | `result-track:ae2af9de9db0aa05d1fdd311d2e168a088d877489d5ab0599fe6b0006b773522` |
| 27 | `theorem` | [exists_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/exists-mul-self--af307a899d7228805aad6c4a.md) | 171 | `result-track:af307a899d7228805aad6c4ab236f8dce84a4a7510def9438eca652ff7205c2f` |
| 28 | `theorem` | [exists_mul_self'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/exists-mul-self--aeeeeec02d27512b2d709633.md) | 175 | `result-track:aeeeeec02d27512b2d7096336ecdd83fb476cab5b43a48cd51720edad19c58a6` |
| 29 | `theorem` | [sqrt_mul_sqrt_lt_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-mul-sqrt-lt-succ--f3312ab36b58f6757a0d1630.md) | 179 | `result-track:f3312ab36b58f6757a0d16301379d917a97511d24c1f28c2aa79cdc8eeffbe46` |
| 30 | `theorem` | [sqrt_mul_sqrt_lt_succ'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/sqrt-mul-sqrt-lt-succ--c22d95eca43f80efa5294eaf.md) | 183 | `result-track:c22d95eca43f80efa5294eafcdda30a6adde1b3e8b4dc077957c2f7623c9327d` |
| 31 | `theorem` | [succ_le_succ_sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/succ-le-succ-sqrt--6b063746785fcbc71c4a9c6e.md) | 187 | `result-track:6b063746785fcbc71c4a9c6e0af52d121a40a6cf3bfb4f0f4e035e9cc8ca1844` |
| 32 | `theorem` | [succ_le_succ_sqrt'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/succ-le-succ-sqrt--c7eb15c8df21442839e19d69.md) | 191 | `result-track:c7eb15c8df21442839e19d69c07d2af91a1fed22aef8359f0c7f5658d9af0427` |
| 33 | `theorem` | [not_exists_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/not-exists-sq--6311af60fb1acc4150098332.md) | 196 | `result-track:6311af60fb1acc4150098332b6fc8c5144913f797465016e4d4e9923b7b7006e` |
| 34 | `theorem` | [not_exists_sq'](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant57b13ff30a666994327890a7470128fc3075002176ce284fe50cfca794df0de1.lean/declarations/not-exists-sq--c1c916970a407dc007740fca.md) | 204 | `result-track:c1c916970a407dc007740fca63c387468cb48c06a81062426e8bab3dd755bd46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
