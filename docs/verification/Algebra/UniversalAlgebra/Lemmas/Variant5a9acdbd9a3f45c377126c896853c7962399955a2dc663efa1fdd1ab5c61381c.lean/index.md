# Verification target: GRWTSK.Algebra.UniversalAlgebra.Lemmas.Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44543cf12fb5a0a7b370873a9dcab521f95cb1bd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44543cf12fb5a0a7b370873a9dcab521f95cb1bd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ineq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lt_irrefl](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/lt-irrefl--4b815b4270c435271fe17dfe.md) | 25 | `result-track:4b815b4270c435271fe17dfecc1c2157cd9afc0d1a07c85dcc31babecd9f87aa` |
| 2 | `theorem` | [eq_of_eq_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/eq-of-eq-of-eq--7334814ce18b2c9874461bfd.md) | 27 | `result-track:7334814ce18b2c9874461bfd736349153a59e5089ed1df05e014fcbff3e2a174` |
| 3 | `theorem` | [zero_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/zero-lt-one--edf61052e4bedc0c4197fe88.md) | 33 | `result-track:edf61052e4bedc0c4197fe88959214949c35fae8061dbed8eafe704ad510adc2` |
| 4 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/le-of-eq-of-le--9b4442c349a75649aa956c5f.md) | 36 | `result-track:9b4442c349a75649aa956c5fcd0cfc6ce79fe9f6cf8d6e302c7a2cae287fa1d9` |
| 5 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/lt-of-eq-of-lt--da111f51f7900a7c2343e9a3.md) | 39 | `result-track:da111f51f7900a7c2343e9a3d98ae74f13bfd2e4150bc5965d0d910b34756353` |
| 6 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/le-of-le-of-eq--96604832a6130a8b424d2ff8.md) | 42 | `result-track:96604832a6130a8b424d2ff8c53d38050ced5ccec1061bd5750b1b54f1e245e1` |
| 7 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/lt-of-lt-of-eq--f616a763fdf6598ac541a33d.md) | 45 | `result-track:f616a763fdf6598ac541a33d3c5222d4c65eb5f404ac5f501dbb58b022767947` |
| 8 | `theorem` | [add_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/add-nonpos--eb40f29bd932471c06952050.md) | 48 | `result-track:eb40f29bd932471c0695205047f816c9d5935d5166e4dba9a7b4a19ae3243392` |
| 9 | `theorem` | [add_lt_of_le_of_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/add-lt-of-le-of-neg--448a6f54c39802362055ef2c.md) | 52 | `result-track:448a6f54c39802362055ef2c8c86d9ee3717dd42d2f408b26a2d62a58f0071ca` |
| 10 | `theorem` | [add_lt_of_neg_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/add-lt-of-neg-of-le--6878eb8d4550f9287969ea18.md) | 56 | `result-track:6878eb8d4550f9287969ea18ec37a94caf45827fbc738d77694759e157523234` |
| 11 | `theorem` | [add_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/add-neg--270b32a60bd2c4768f080879.md) | 60 | `result-track:270b32a60bd2c4768f08087999c010652f58e3c879c876bebba71564eed1356b` |
| 12 | `lemma` | [natCast_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/natcast-nonneg--207120310f0ec7180eec4b20.md) | 65 | `result-track:207120310f0ec7180eec4b20f9cda1d6b2f05b5bdeb59412ccf9ce1bf3c6a266` |
| 13 | `theorem` | [mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/mul-eq--4f6e69a431b406d78b39b92d.md) | 69 | `result-track:4f6e69a431b406d78b39b92d6fcd3c473017cef521d93d0ec8405b5a8c83125b` |
| 14 | `theorem` | [mul_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/mul-neg--53e20e487a5942e1177d086d.md) | 77 | `result-track:53e20e487a5942e1177d086d45678c7a8641e3288c29adcf77a3e23597985dd5` |
| 15 | `theorem` | [mul_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/mul-nonpos--6fda524fb58f10355a4c3ba8.md) | 81 | `result-track:6fda524fb58f10355a4c3ba86cf7ef1cfdc36979575296965cf15ce3fb015f06` |
| 16 | `theorem` | [sub_nonpos_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/sub-nonpos-of-le--b0b728de40524ee6ef9233ee.md) | 85 | `result-track:b0b728de40524ee6ef9233ee3d132c092dc21b86e26094a270385daedcef2ff9` |
| 17 | `theorem` | [sub_neg_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/sub-neg-of-lt--07d0ba9543da61d76c260e46.md) | 88 | `result-track:07d0ba9543da61d76c260e4626a5ff80cc6b0573924b63aa5250c1ebd2279175` |
| 18 | `def` | [_root_.Mathlib.Ineq.toConstMulName](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/root-mathlib-ineq-toconstmulname--4d0f0d077ad91d1e43e7fc9c.md) | 95 | `declaration-track:4d0f0d077ad91d1e43e7fc9cd47c04e27f739617bd88f472f502abb19e70c2eb` |
| 19 | `lemma` | [eq_of_not_lt_of_not_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/eq-of-not-lt-of-not-gt--154231192c4aa696a0871f50.md) | 100 | `result-track:154231192c4aa696a0871f500d51ce971a77582c8a9e6da3df2be2a9b58fda42` |
| 20 | `lemma` | [mul_zero_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/mul-zero-eq--0837a6ec3230364e394d45e5.md) | 105 | `result-track:0837a6ec3230364e394d45e540ea3fe4fdb6ff7545f3b983d040884146db5250` |
| 21 | `lemma` | [zero_mul_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/zero-mul-eq--1bd8a15c82b7d5dcf4d8f590.md) | 111 | `result-track:1bd8a15c82b7d5dcf4d8f590af83f8fe422c872852bf2c59befeec59a88580e6` |
| 22 | `theorem` | [lt_zero_of_zero_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/lt-zero-of-zero-gt--d1c9c358081accaa17403313.md) | 121 | `result-track:d1c9c358081accaa17403313f93a5d2bb79ecb7b8f9128de537050a092fef690` |
| 23 | `theorem` | [le_zero_of_zero_ge](../../../../../mathematics/Algebra/UniversalAlgebra/Lemmas/Variant5a9acdbd9a3f45c377126c896853c7962399955a2dc663efa1fdd1ab5c61381c.lean/declarations/le-zero-of-zero-ge--f7bfc10dea500c5e66a8f885.md) | 123 | `result-track:f7bfc10dea500c5e66a8f885f0b790f2a69ab121eefe505e4e28a6d4b44dafa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
