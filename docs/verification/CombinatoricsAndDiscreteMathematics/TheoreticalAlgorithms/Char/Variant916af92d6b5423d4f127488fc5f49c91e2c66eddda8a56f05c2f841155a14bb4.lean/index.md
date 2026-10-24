# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b0cfc13620ece481da83a782ee11403d0d9aea",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b0cfc13620ece481da83a782ee11403d0d9aea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [skipPrefix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/skipprefix-char-eq-some-iff--5bc37746fec022128592cc57.md) | 33 | `result-track:5bc37746fec022128592cc57e6e671e90940ffa6c302c61e887e7559bc0bcd01` |
| 2 | `theorem` | [startsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-iff-get--feebe1dc65635c46d3dd24b5.md) | 37 | `result-track:feebe1dc65635c46d3dd24b584b9e13d7686592b9e7fec2dddedf48463a1862f` |
| 3 | `theorem` | [startsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-false-iff-get--6738512a94d670cb67d7982a.md) | 41 | `result-track:6738512a94d670cb67d7982adef7acc95c6d87f1553a5d2b0bbd2ecdba80d102` |
| 4 | `theorem` | [startsWith_char_eq_head?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-head--e3ff138cf578285f426ecf08.md) | 45 | `result-track:e3ff138cf578285f426ecf08c6d27d5154864bbda8857bbb4f68a212b6c628f7` |
| 5 | `theorem` | [startsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-iff-exists-append--e1b0c904ad345e375b1fcc9a.md) | 53 | `result-track:e1b0c904ad345e375b1fcc9aca51011501334bf2a5166f637eb56086c92c46fd` |
| 6 | `theorem` | [startsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-false-iff-forall-append--89e9216b2f78b6b06c2a5699.md) | 59 | `result-track:89e9216b2f78b6b06c2a569902eb5293e31c071b0f92412ee11eb8a3d9757358` |
| 7 | `theorem` | [eq_append_of_dropPrefix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/eq-append-of-dropprefix-char-eq-some--7b0159963a43dcfad5f91836.md) | 63 | `result-track:7b0159963a43dcfad5f918367af7f336d1c321c855370a131ff25f8780744658` |
| 8 | `theorem` | [Pos.skip?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-skip-char-eq-some-iff--649dde4d90f68128c0cb9da9.md) | 67 | `result-track:649dde4d90f68128c0cb9da99bab9530804f5b8f6d324ce16385139f21a0cac4` |
| 9 | `theorem` | [Pos.skip?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-skip-char-eq-none-iff--0452ccb20c8672fd5b53b75c.md) | 72 | `result-track:0452ccb20c8672fd5b53b75c196ef597991ed832191a65aa6e908085edc2b74c` |
| 10 | `theorem` | [Pos.get_skipWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-get-skipwhile-char-ne--a5562dd4abbb4c3f88e27d09.md) | 76 | `result-track:a5562dd4abbb4c3f88e27d092a6918a4769b1007a093e256f24c30957ba9d420` |
| 11 | `theorem` | [Pos.skipWhile_char_eq_self_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-skipwhile-char-eq-self-iff-get--886858e8a6fa902a7e61c661.md) | 81 | `result-track:886858e8a6fa902a7e61c6619ba39ee22e54adad8909dd2a915d2dc0bc1d0292` |
| 12 | `theorem` | [Pos.get_eq_of_lt_skipWhile_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-get-eq-of-lt-skipwhile-char--bbd337afbc9902c243c0b5ee.md) | 85 | `result-track:bbd337afbc9902c243c0b5ee318f7efb711a4350ccc140a0b26a7dd32d81ea69` |
| 13 | `theorem` | [get_skipPrefixWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/get-skipprefixwhile-char-ne--9b173811a61eaf1cd4f870eb.md) | 89 | `result-track:9b173811a61eaf1cd4f870eb4292bb0d1a4a15a815b818eeabd63af491252199` |
| 14 | `theorem` | [get_eq_of_lt_skipPrefixWhile_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/get-eq-of-lt-skipprefixwhile-char--b0be7eb8e21af36da5c6eebb.md) | 93 | `result-track:b0be7eb8e21af36da5c6eebbe923928b16a2eebc5f3d8359a3f26ec7eb40c464` |
| 15 | `theorem` | [all_char_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/all-char-iff--b9087d5c73c5a024eb6a4d5f.md) | 98 | `result-track:b9087d5c73c5a024eb6a4d5fd137903de489c153d524bf797cc767919f6de22e` |
| 16 | `theorem` | [Pos.revSkip?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-revskip-char-eq-some-iff--9054cb4fa77678b11cc676fd.md) | 102 | `result-track:9054cb4fa77678b11cc676fd8328c24ee7049a3f9979904bd90070d9a1a3fd42` |
| 17 | `theorem` | [Pos.revSkip?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-revskip-char-eq-none-iff--9fb11c659db4dc3080c6f83e.md) | 107 | `result-track:9fb11c659db4dc3080c6f83e3aba4eb678e620907ddc1cf354270699dfaca973` |
| 18 | `theorem` | [Pos.get_revSkipWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-get-revskipwhile-char-ne--b26dea6a1e73b4b67a5011cb.md) | 111 | `result-track:b26dea6a1e73b4b67a5011cbdef71692023753cdeb5ff1c2beadb2661ab23b96` |
| 19 | `theorem` | [Pos.revSkipWhile_char_eq_self_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-revskipwhile-char-eq-self-iff-get--5d6a913fa9040d2c9b19274f.md) | 116 | `result-track:5d6a913fa9040d2c9b19274fd197cc1f9ef503c68c1f4b7f28ab1c5fcdaaf2fc` |
| 20 | `theorem` | [Pos.get_eq_of_revSkipWhile_le_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/pos-get-eq-of-revskipwhile-le-char--118ba23ca4e459c0bff79dd9.md) | 120 | `result-track:118ba23ca4e459c0bff79dd9fd0ba2deeaf40d152adddbb05c603f5cb8c25b8e` |
| 21 | `theorem` | [get_skipSuffixWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/get-skipsuffixwhile-char-ne--62a386e1528d7d4d21439b48.md) | 124 | `result-track:62a386e1528d7d4d21439b4879b56dcc26150ea7ab784a2b2feaeadd328176ae` |
| 22 | `theorem` | [get_eq_of_skipSuffixWhile_le_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/get-eq-of-skipsuffixwhile-le-char--b54dd22bb6f700dd51750252.md) | 128 | `result-track:b54dd22bb6f700dd51750252a903a300522f39a18e70a9ebed31ad5f4d30338b` |
| 23 | `theorem` | [revAll_char_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/revall-char-iff--86d7601f97aca653c5b106c9.md) | 134 | `result-track:86d7601f97aca653c5b106c9aadb0b9789b6d09fcc0924e59f3ea01ea2ca9dec` |
| 24 | `theorem` | [skipSuffix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/skipsuffix-char-eq-some-iff--1a33689426133a29efc9492b.md) | 138 | `result-track:1a33689426133a29efc9492bfc67b24f4e64d67fb17f8e34262950ef6f1c60e5` |
| 25 | `theorem` | [endsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-iff-get--fd227de6a064db39170e8301.md) | 142 | `result-track:fd227de6a064db39170e830110f21275c2dff10469695b21c57b871411ba9f15` |
| 26 | `theorem` | [endsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-false-iff-get--0f1818891dfd3e0e962a4e71.md) | 146 | `result-track:0f1818891dfd3e0e962a4e711fd42225280c66660bc10f0eeb0379eed5bb5777` |
| 27 | `theorem` | [endsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-iff-exists-append--db3a9629142981a13c78cb3e.md) | 150 | `result-track:db3a9629142981a13c78cb3eed25a92adae23c7484307277db13379cebd10d7a` |
| 28 | `theorem` | [endsWith_char_eq_getLast?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-getlast--e86531a1893546be9e2cfaf5.md) | 155 | `result-track:e86531a1893546be9e2cfaf543e7205dc4635923a6fb59b9a037a015124cc050` |
| 29 | `theorem` | [endsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-false-iff-forall-append--13c615311cfc0e2f91603467.md) | 165 | `result-track:13c615311cfc0e2f91603467a6e36179f11e48d26f9e911d96abfb59b0672208` |
| 30 | `theorem` | [eq_append_of_dropSuffix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/eq-append-of-dropsuffix-char-eq-some--ba590b5f27714ecc7a7dfc2d.md) | 169 | `result-track:ba590b5f27714ecc7a7dfc2ddd01cc34c4507cfcabde5beb2a585b55b6b67227` |
| 31 | `theorem` | [skipPrefix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/skipprefix-char-eq-some-iff--269f9363ffcfe16a1592cd2e.md) | 175 | `result-track:269f9363ffcfe16a1592cd2e99750c2019a782901d80e4b122e2dadcf8cd1b1d` |
| 32 | `theorem` | [startsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-iff-get--f36becc57caddc262882609c.md) | 180 | `result-track:f36becc57caddc262882609cf6a2aa8a0744eb21b7ac36c89e5dbfd3732dee45` |
| 33 | `theorem` | [startsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-false-iff-get--9e04652acde3d672a5b9b864.md) | 184 | `result-track:9e04652acde3d672a5b9b864831de6389413568551c4d1e86a7ade7fd620f115` |
| 34 | `theorem` | [startsWith_char_eq_head?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-head--9491aa3fb396137b41d32260.md) | 188 | `result-track:9491aa3fb396137b41d32260cc36ee0103f53d126c93a66b42eca27c982c434f` |
| 35 | `theorem` | [startsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-iff-exists-append--1516beefd9ac651bc2b9cc4a.md) | 192 | `result-track:1516beefd9ac651bc2b9cc4a8f720a1bf7df0a0d210a8ea141df3142343711f4` |
| 36 | `theorem` | [startsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/startswith-char-eq-false-iff-forall-append--bca91b408246342b3f645036.md) | 196 | `result-track:bca91b408246342b3f645036f983f4266ae1775d7cdabb880215547c7662ff1e` |
| 37 | `theorem` | [eq_append_of_dropPrefix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/eq-append-of-dropprefix-char-eq-some--f3fa350cced7f75bbe241a3f.md) | 200 | `result-track:f3fa350cced7f75bbe241a3f570aa946c66fd8a9cdf6f698d3d6721c74ef3ee7` |
| 38 | `theorem` | [skipSuffix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/skipsuffix-char-eq-some-iff--e9bfdfcfd5ec741c63d42fef.md) | 205 | `result-track:e9bfdfcfd5ec741c63d42fefceb22ddfdb36ee0b9e4f582ba64c574872247049` |
| 39 | `theorem` | [endsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-iff-get--20ee7f48ee8d1ca48fec3e99.md) | 210 | `result-track:20ee7f48ee8d1ca48fec3e99ce23a7a5608df010bbddff8778591220a8c51641` |
| 40 | `theorem` | [endsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-false-iff-get--da144361d167603f3169d153.md) | 214 | `result-track:da144361d167603f3169d153fd632242363338be4a975a568a50e81b26871b5c` |
| 41 | `theorem` | [endsWith_char_eq_getLast?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-getlast--7c6713ac0a3b481f8de54547.md) | 218 | `result-track:7c6713ac0a3b481f8de545475ea09e79e6ea1f8c542de296fc50236495941f78` |
| 42 | `theorem` | [endsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-iff-exists-append--97d7ae0b13a0b22f038a77de.md) | 222 | `result-track:97d7ae0b13a0b22f038a77de071f9a2d516a762de3643d49772daf74864469b8` |
| 43 | `theorem` | [endsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/endswith-char-eq-false-iff-forall-append--d5dd32b98cb4c1a087c8763d.md) | 226 | `result-track:d5dd32b98cb4c1a087c8763df5cf754032f26a97ff4776e2d85340c07d60b680` |
| 44 | `theorem` | [eq_append_of_dropSuffix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant916af92d6b5423d4f127488fc5f49c91e2c66eddda8a56f05c2f841155a14bb4.lean/declarations/eq-append-of-dropsuffix-char-eq-some--db5734a96f33104a8c2d7a59.md) | 230 | `result-track:db5734a96f33104a8c2d7a5982afcf2736d308bcf20f20ceda160b87de24e4e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
