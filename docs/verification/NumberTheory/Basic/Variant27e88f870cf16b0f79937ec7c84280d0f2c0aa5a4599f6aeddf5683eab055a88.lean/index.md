# Verification target: GRWTSK.NumberTheory.Basic.Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3701e1748939879dd58f276b78dc92c5cac04b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3701e1748939879dd58f276b78dc92c5cac04b`.

Source path: `GRWTSK/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_criterion_units](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/euler-criterion-units--370653dca75c265bf617ed81.md) | 54 | `result-track:370653dca75c265bf617ed81a94f9fb8deca95313308980dedd7334132926e34` |
| 2 | `theorem` | [euler_criterion](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/euler-criterion--4d868d87fb03c70c2690e3aa.md) | 66 | `result-track:4d868d87fb03c70c2690e3aa6d2dc8d6a91278fad518d6e41a638be40edb71f9` |
| 3 | `theorem` | [pow_div_two_eq_neg_one_or_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/pow-div-two-eq-neg-one-or-one--4138fa32ad5b6aa4d79e1868.md) | 78 | `result-track:4138fa32ad5b6aa4d79e18684c1ab66129d557594b8ded43111b06578f692f4e` |
| 4 | `def` | [legendreSym](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/legendresym--defcd864f4e5a99543c37089.md) | 112 | `declaration-track:defcd864f4e5a99543c370891575b5014920e997ade8ed842999e011758119e5` |
| 5 | `theorem` | [eq_pow](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-pow--9315b685105bddc0ec880184.md) | 118 | `result-track:9315b685105bddc0ec8801849c2f0ffb1749c6c196dbabc3591ce44cfa0fd24e` |
| 6 | `theorem` | [eq_one_or_neg_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-one-or-neg-one--65c53176c9046c2e114ff105.md) | 137 | `result-track:65c53176c9046c2e114ff10561331ca0d954a7fed6eed1c9d62100f2c38ce702` |
| 7 | `theorem` | [eq_neg_one_iff_not_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-neg-one-iff-not-one--25bdbfae4424a7b5012415f6.md) | 141 | `result-track:25bdbfae4424a7b5012415f6248ee50b3b7a8d6261fa2936dced31b226fed9f5` |
| 8 | `theorem` | [eq_zero_iff](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-zero-iff--db1105a5ec21a89dc2f0e9c5.md) | 146 | `result-track:db1105a5ec21a89dc2f0e9c57891d31432c609abf43d1336111dc4d8cbbc67b8` |
| 9 | `theorem` | [at_zero](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/at-zero--1b5618efba89636b8b2d305a.md) | 150 | `result-track:1b5618efba89636b8b2d305a44a175fc1deb6c6064353523db98db14dab17295` |
| 10 | `theorem` | [at_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/at-one--2181f131dafe1235d3b5fca9.md) | 153 | `result-track:2181f131dafe1235d3b5fca941da0a672a17af527cf2f385acaaa788ff0506ee` |
| 11 | `theorem` | [mul](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/mul--0e4c2a34a2ae070184671f12.md) | 156 | `result-track:0e4c2a34a2ae070184671f123dee1fcf699aa4ff478cfdcb64ecc84bedafbc80` |
| 12 | `def` | [hom](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/hom--adc25b10e9a3b2b93aafc156.md) | 161 | `declaration-track:adc25b10e9a3b2b93aafc1565f42195fc4a057d5e25697edc337fd9d939e2d69` |
| 13 | `theorem` | [sq_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/sq-one--cf44f7c72ce5ae87d96721fa.md) | 168 | `result-track:cf44f7c72ce5ae87d96721fa07ffdb46f2ba2dae9ba5b76659a6255f1c4e9526` |
| 14 | `theorem` | [sq_one'](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/sq-one--0f326a506ec994c7e503c63f.md) | 172 | `result-track:0f326a506ec994c7e503c63fd41d802bb576ecc9e1d9e036c4262df53d4d6de4` |
| 15 | `theorem` | [mod](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/mod--b54583e87840c5a98e27398b.md) | 178 | `result-track:b54583e87840c5a98e27398b781267172c5bb6bcc5b0819cdace19fee03d31ec` |
| 16 | `theorem` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-one-iff--0518d95c65184e628462b408.md) | 182 | `result-track:0518d95c65184e628462b408833ca1e5ef96e2d227c8eed8161bce28180d92fe` |
| 17 | `theorem` | [eq_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-one-iff--ac3920dea645120a64b20142.md) | 185 | `result-track:ac3920dea645120a64b2014222319e7f8ace742a638a5cddc5ccba3449719b8f` |
| 18 | `theorem` | [eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-neg-one-iff--4ae0a3290bbd23584f7dece4.md) | 192 | `result-track:4ae0a3290bbd23584f7dece4a58057f01e90fd108609c83502626cd059d35b69` |
| 19 | `theorem` | [eq_neg_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-neg-one-iff--59104405a67e6969c104d6bd.md) | 195 | `result-track:59104405a67e6969c104d6bdec78632d59c3b8b0355dec6ed6153b62147f452f` |
| 20 | `theorem` | [card_sqrts](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/card-sqrts--f0cb1d20b77e452a7080f432.md) | 199 | `result-track:f0cb1d20b77e452a7080f432d3372fae7403d2ad1a715221bff4ebe09b547c34` |
| 21 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--1ccba6ac78c05102225a9d1a.md) | 218 | `result-track:1ccba6ac78c05102225a9d1a044ebe38f948b99278b9be5fdf983f225f456e1b` |
| 22 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero'](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--3594ea479b5c58f93a2a4f55.md) | 228 | `result-track:3594ea479b5c58f93a2a4f55e8ff7bd05aeb91abb7fc97ba40030542b844a45b` |
| 23 | `theorem` | [eq_zero_mod_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/eq-zero-mod-of-eq-neg-one--93966ea6ddac44dfeb7bb11d.md) | 238 | `result-track:93966ea6ddac44dfeb7bb11df1ba9aa5b101346dabc2cb26750612a61f2d6fff` |
| 24 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/prime-dvd-of-eq-neg-one--389fe8fb20df1d4143c921c0.md) | 252 | `result-track:389fe8fb20df1d4143c921c0d3a6cc304e09d908318a7018e3ab9c5e3b3df168` |
| 25 | `theorem` | [legendreSym.at_neg_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/legendresym-at-neg-one--f04e5e801bf9f7c66ff05809.md) | 276 | `result-track:f04e5e801bf9f7c66ff05809dc01edd902cc0e4f86c84a0d2965f7381e3cfa9a` |
| 26 | `theorem` | [exists_sq_eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/exists-sq-eq-neg-one-iff--76a8e7ab1c88d328b524d7c7.md) | 283 | `result-track:76a8e7ab1c88d328b524d7c7ebfe19690c22695899f0c80357bb5f179d7239e8` |
| 27 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/mod-four-ne-three-of-sq-eq-neg-one--a334d82556abba8e8b3e9f37.md) | 286 | `result-track:a334d82556abba8e8b3e9f3771c3c9448755cf5259cd769316e3e7537311f714` |
| 28 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq'](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--314a1a838d2bbcf0a289122c.md) | 290 | `result-track:314a1a838d2bbcf0a289122c9a1ec86a2af0263e5713d6eb1cb6100ce1fdb84b` |
| 29 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq](../../../../mathematics/NumberTheory/Basic/Variant27e88f870cf16b0f79937ec7c84280d0f2c0aa5a4599f6aeddf5683eab055a88.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--1792634a6b2f56612a8749c3.md) | 297 | `result-track:1792634a6b2f56612a8749c3a3bcc1263db59c2cbe14c1e056001a7d4870956a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
