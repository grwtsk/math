# Verification target: GRWTSK.Algebra.Integers.Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d17018bddc214c68f7feb409987001479c421f4b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d17018bddc214c68f7feb409987001479c421f4b`.

Source path: `GRWTSK/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Valuation.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integer](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/integer--c586f0971b058c93f6718038.md) | 36 | `declaration-track:c586f0971b058c93f6718038e7162588423d0fa2d30d8916373c50beba52e166` |
| 2 | `lemma` | [mem_integer_iff](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/mem-integer-iff--2123b5c3bd3f88fac68cc1c6.md) | 44 | `result-track:2123b5c3bd3f88fac68cc1c67e9cad87dd56654db43f2b7e92604910f5894889` |
| 3 | `structure` | [Integers](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/integers--e98dfac3c8e4f6a1ff83e99c.md) | 56 | `declaration-track:e98dfac3c8e4f6a1ff83e99c52f56b646e4f06abfce2a13837b09968dc951584` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/instance--21354eee94fa8ac11e12fc51.md) | 62 | `declaration-track:21354eee94fa8ac11e12fc517ea9a7cced11b87b327ef4577decf077b127b841` |
| 5 | `theorem` | [integer.integers](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/integer-integers--aaf3a91886712b2e7286b4f6.md) | 65 | `result-track:aaf3a91886712b2e7286b4f611c1f6ef3f9576955523d9ecaab93bdbe4860bb9` |
| 6 | `theorem` | [one_of_isUnit'](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/one-of-isunit--1483aec7fe67b716db62c97a.md) | 74 | `result-track:1483aec7fe67b716db62c97a753fd40ce4c811177fec0f82efa107073b7e016b` |
| 7 | `theorem` | [one_of_isUnit](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/one-of-isunit--e71126629be826edf7be96a4.md) | 82 | `result-track:e71126629be826edf7be96a40d4a52bb755e25c0632f622897f9f196ae400db8` |
| 8 | `theorem` | [isUnit_of_one](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/isunit-of-one--78eb366fbad2c11bec019b2a.md) | 89 | `result-track:78eb366fbad2c11bec019b2a2736c3edb39446a984378579b02d3f2f7dc3414e` |
| 9 | `theorem` | [le_of_dvd](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/le-of-dvd--f5f3cffbeb5f7ca1facd29ff.md) | 101 | `result-track:f5f3cffbeb5f7ca1facd29ff750fa779f3d946c511f0116a7f2c477acb1fa1ce` |
| 10 | `theorem` | [dvd_of_le](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/dvd-of-le--8fee426cdd156dbfa1e3b5e0.md) | 118 | `result-track:8fee426cdd156dbfa1e3b5e0fba3e6d1f03bb2191fbeed13ad765b907fa65537` |
| 11 | `theorem` | [dvd_iff_le](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/dvd-iff-le--1c7ef322cd6ecf7a2d7b98f1.md) | 133 | `result-track:1c7ef322cd6ecf7a2d7b98f170ab98501a9de16825b2d64261f4f3853ce0a26a` |
| 12 | `theorem` | [le_iff_dvd](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/le-iff-dvd--2330899f2d675c51296b8316.md) | 137 | `result-track:2330899f2d675c51296b8316e57e6538537947dbe46d0e5444c9ea71e7fb212a` |
| 13 | `theorem` | [isUnit_of_one'](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/isunit-of-one--db6a0553bca7e3248e0d4814.md) | 146 | `result-track:db6a0553bca7e3248e0d481467b0429b36c673836d108a2bf847bb3fcd9c3475` |
| 14 | `lemma` | [isUnit_iff_valuation_eq_one](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/isunit-iff-valuation-eq-one--12900b4c6ccfe2fa83d903a4.md) | 150 | `result-track:12900b4c6ccfe2fa83d903a488037e8a3243c99acefc6660d921ab759a275360` |
| 15 | `lemma` | [valuation_unit](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/valuation-unit--7968ee3fd97c0b6cf39fea58.md) | 154 | `result-track:7968ee3fd97c0b6cf39fea58a45feeed3dd554faed0f8f18ab03c84e47b682bf` |
| 16 | `lemma` | [valuation_pos_iff_ne_zero](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/valuation-pos-iff-ne-zero--ba9c78bb8e9888702f1467d2.md) | 158 | `result-track:ba9c78bb8e9888702f1467d25e14ac1f9321dad51c9dd665eee1eb697fed6a6d` |
| 17 | `theorem` | [dvdNotUnit_iff_lt](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/dvdnotunit-iff-lt--a47275918dd47669255b8b49.md) | 164 | `result-track:a47275918dd47669255b8b49ba8004bd28480fdabbdff69dfb7d6bbf34932474` |
| 18 | `theorem` | [eq_algebraMap_or_inv_eq_algebraMap](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/eq-algebramap-or-inv-eq-algebramap--27f50ef4457f3d1967f5992e.md) | 177 | `result-track:27f50ef4457f3d1967f5992ea6ef97a4772b1acd826cbb9ec3e571b57ac1539d` |
| 19 | `lemma` | [bijective_algebraMap_of_subsingleton_units_mrange](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/bijective-algebramap-of-subsingleton-units-mrange--79b7716d53a03c6cc148c042.md) | 183 | `result-track:79b7716d53a03c6cc148c0422aaf469e74562462dfc1f98b442d05baa3568407` |
| 20 | `lemma` | [isPrincipal_iff_exists_isGreatest](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/isprincipal-iff-exists-isgreatest--63f0f91b460076e31189e85f.md) | 192 | `result-track:63f0f91b460076e31189e85f51b023fa99a7ef3aaba798eb90c1ef1aeea4b7d9` |
| 21 | `lemma` | [isPrincipal_iff_exists_eq_setOf_valuation_le](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/isprincipal-iff-exists-eq-setof-valuation-le--b027d14915db783853851e5d.md) | 209 | `result-track:b027d14915db783853851e5d146d1b173433890f7b085e741f74781efcda660b` |
| 22 | `lemma` | [not_denselyOrdered_of_isPrincipalIdealRing](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/not-denselyordered-of-isprincipalidealring--7ca6e035f8f68fe7e8d9397c.md) | 225 | `result-track:7ca6e035f8f68fe7e8d9397c0c7e5d2a160805c9567171dfc2ddc35fc114f946` |
| 23 | `theorem` | [Integer.not_isUnit_iff_valuation_lt_one](../../../../mathematics/Algebra/Integers/Variant6eb67529650c6e9a4cd39638782b95870a98aa1ca2434d0524b546f69116e3a0.lean/declarations/integer-not-isunit-iff-valuation-lt-one--448d01e8693bbcf63f03ea8d.md) | 253 | `result-track:448d01e8693bbcf63f03ea8d04d44cf05300547190103eddbcdb4ca886e7320e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
