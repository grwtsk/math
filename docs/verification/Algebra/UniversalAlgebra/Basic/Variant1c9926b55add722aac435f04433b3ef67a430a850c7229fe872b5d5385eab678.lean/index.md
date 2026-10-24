# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b494892362dc9d42ca0321d9f3354a9568e96c4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b494892362dc9d42ca0321d9f3354a9568e96c4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.NeZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/mono-cast--b02a63342d696ef5e2a35649.md) | 32 | `result-track:b02a63342d696ef5e2a3564932a6f9c9ec596e8be803795b5c50df576e2e72b3` |
| 2 | `theorem` | [_root_.GCongr.natCast_le_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/root-gcongr-natcast-le-natcast--18c4670cba866e8caa3e9382.md) | 37 | `result-track:18c4670cba866e8caa3e9382a11621dc132ae6d27b817a1b60a4a9c758635745` |
| 3 | `theorem` | [cast_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-nonneg--82463e7e45f821a3a586557f.md) | 41 | `result-track:82463e7e45f821a3a586557f8b23d1b66bf0854a4e0e3765f9180f30ebe49735` |
| 4 | `theorem` | [ofNat_nonneg'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/ofnat-nonneg--3c0748c868c3f0b2dec52572.md) | 46 | `result-track:3c0748c868c3f0b2dec52572edfdd74c5b6a575c9775ccd148cd606df21efb9b` |
| 5 | `theorem` | [cast_add_one_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-add-one-pos--d5a86a09d6c23c0b56be866c.md) | 52 | `result-track:d5a86a09d6c23c0b56be866c618dba135817cad66638c43ef0862e5b5f0b607f` |
| 6 | `theorem` | [cast_pos'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-pos--a9cfb115727193423381e8ac.md) | 59 | `result-track:a9cfb115727193423381e8acac75324d624a9bd5e4e9771713a531a8fe841691` |
| 7 | `theorem` | [strictMono_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/strictmono-cast--f917cfced852c36f6ed30561.md) | 65 | `result-track:f917cfced852c36f6ed30561f8a913255c624f720a3d05a6db95d56a6dd5455d` |
| 8 | `lemma` | [_root_.GCongr.natCast_lt_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/root-gcongr-natcast-lt-natcast--595b28565598c42cff9feaa1.md) | 69 | `result-track:595b28565598c42cff9feaa12f80985ff08b30c2c1eac256bc740fcefa03a6c7` |
| 9 | `def` | [castOrderEmbedding](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/castorderembedding--d8bbeef7a84ee850fc72f12b.md) | 73 | `declaration-track:d8bbeef7a84ee850fc72f12b167970eb7df0fd9fcaea8a710639b1d32f86abd1` |
| 10 | `theorem` | [cast_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-le--e75af5beb70200d7d05ca3d4.md) | 77 | `result-track:e75af5beb70200d7d05ca3d44eb847001b5a55a9180c87cf2b4122580d8ba424` |
| 11 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-lt--8eae3e73b47c90dfa10f810d.md) | 81 | `result-track:8eae3e73b47c90dfa10f810de02e2044355b1cf5f203596fa3e870f447712216` |
| 12 | `theorem` | [one_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/one-lt-cast--1ca3fe4cdeec153d77a9ed30.md) | 85 | `result-track:1ca3fe4cdeec153d77a9ed303144e46d8ea4fa74744d42042e10fc1219242050` |
| 13 | `theorem` | [one_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/one-le-cast--12a1387b41935e658e737ce1.md) | 88 | `result-track:12a1387b41935e658e737ce1a07ea183113f87152780d6fdfca1f580414ee25f` |
| 14 | `theorem` | [cast_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-lt-one--8fb3e7852a3a6fa2502ff118.md) | 91 | `result-track:8fb3e7852a3a6fa2502ff118e2aa28211ffaed818d264c3a6216c44d7b63bf20` |
| 15 | `theorem` | [cast_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-le-one--8b856359a76b5df325abc340.md) | 95 | `result-track:8b856359a76b5df325abc340defba34229df0706bf61e2b66e5c69aba95bd3db` |
| 16 | `lemma` | [cast_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-nonpos--8f364e9807d805efc645eeee.md) | 97 | `result-track:8f364e9807d805efc645eeee457f8e7029950081203f420a3b893291206e9cb1` |
| 17 | `theorem` | [ofNat_le_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/ofnat-le-cast--28afbef722cc15d81e8b40c8.md) | 103 | `result-track:28afbef722cc15d81e8b40c8a14ece3fc817e9c6d8008e08d3f2363274c99e09` |
| 18 | `theorem` | [ofNat_lt_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/ofnat-lt-cast--30832caa060eedd41233fdda.md) | 107 | `result-track:30832caa060eedd41233fddaee35657c4cc02e1e8d04b26c5f40ae3ae03ae05d` |
| 19 | `theorem` | [cast_le_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-le-ofnat--368946a0961c8513fe61020a.md) | 115 | `result-track:368946a0961c8513fe61020a3ed97aded77f7b0e011f3acda84baec7fb969d98` |
| 20 | `theorem` | [cast_lt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/cast-lt-ofnat--6159793a2dce4887a8227923.md) | 119 | `result-track:6159793a2dce4887a82279231b7fb8f71ac6960ff5bc138e8a041f8e3ce0e98a` |
| 21 | `theorem` | [one_lt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/one-lt-ofnat--d2152fc5f1684c6cb155b0c1.md) | 123 | `result-track:d2152fc5f1684c6cb155b0c13d7b5c6c5c7adcea107803450dc6ece22d14dede` |
| 22 | `theorem` | [one_le_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/one-le-ofnat--ae90006fa98416a1eba44cdd.md) | 127 | `result-track:ae90006fa98416a1eba44cdd96fd5bcc70fd405588a206795e219f61f9eacd63` |
| 23 | `theorem` | [not_ofNat_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/not-ofnat-le-one--692a9f9e62f8b53a095bc278.md) | 131 | `result-track:692a9f9e62f8b53a095bc2786c44d3bd21cc2ed4703bb2320b5397fb0e7f2164` |
| 24 | `theorem` | [not_ofNat_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/not-ofnat-lt-one--fa953b3751227c8e970b1b7c.md) | 135 | `result-track:fa953b3751227c8e970b1b7c099d83ab990df9a339c28cfc335841437ad47e80` |
| 25 | `theorem` | [ofNat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/ofnat-le--c1c10901b36af0e4b635a0c7.md) | 145 | `result-track:c1c10901b36af0e4b635a0c7a1cab7c945e5d83e13c05720ea4041f18050bbe5` |
| 26 | `theorem` | [ofNat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/ofnat-lt--58885928fb1d04eb3ab73551.md) | 150 | `result-track:58885928fb1d04eb3ab73551d11b334b9ba9d4dcfaf58fd02e76b78865dbbe03` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/instance--7ba4f8182e929a9ed3df04b2.md) | 158 | `declaration-track:7ba4f8182e929a9ed3df04b230604decaa55074815f5702c4573a6d49980d713` |
| 28 | `theorem` | [NeZero.nat_of_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant1c9926b55add722aac435f04433b3ef67a430a850c7229fe872b5d5385eab678.lean/declarations/nezero-nat-of-injective--2d17955d2867d0701cfa2874.md) | 165 | `result-track:2d17955d2867d0701cfa287415b4ea9f26f33f4f160ecc54f2aeab42d16feaec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
