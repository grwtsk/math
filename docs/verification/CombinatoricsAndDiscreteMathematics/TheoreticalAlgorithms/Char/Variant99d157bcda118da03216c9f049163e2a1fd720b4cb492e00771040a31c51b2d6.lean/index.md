# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dda11b480c193d7a82b0e47cfdf52baba19e300a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dda11b480c193d7a82b0e47cfdf52baba19e300a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [skipPrefix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/skipprefix-char-eq-some-iff--7de4652240a5dd9dcc8f71d6.md) | 25 | `result-track:7de4652240a5dd9dcc8f71d6c92c932451a238c4325689943663dcdae82221ae` |
| 2 | `theorem` | [startsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-iff-get--98f5b9d292760324f24e9768.md) | 29 | `result-track:98f5b9d292760324f24e976897f72b58b8314e6bdcb323ce7c0ea019c5b141d9` |
| 3 | `theorem` | [startsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-false-iff-get--be67282cf4f67b891bd54d32.md) | 33 | `result-track:be67282cf4f67b891bd54d32b00f7b952dfd3bb4a05fc353ad2c027dd47e5e1c` |
| 4 | `theorem` | [startsWith_char_eq_head?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-head--d03d05e58305e8db9dfc4b83.md) | 37 | `result-track:d03d05e58305e8db9dfc4b838d1878d1b9a6dd70741dce44a7e81434dd596989` |
| 5 | `theorem` | [startsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-iff-exists-append--d130e7e320cc1ddfcc728427.md) | 45 | `result-track:d130e7e320cc1ddfcc728427a32e11f55096200eced0a3a1d54eb76521a40243` |
| 6 | `theorem` | [startsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-false-iff-forall-append--d03de550f35868387b8a7be1.md) | 51 | `result-track:d03de550f35868387b8a7be161c0c0c10fca20e378f727dd4eef407db2c1af64` |
| 7 | `theorem` | [eq_append_of_dropPrefix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/eq-append-of-dropprefix-char-eq-some--1e431cb68476a7cee87c6ac7.md) | 55 | `result-track:1e431cb68476a7cee87c6ac724f0e7b7af7ea5426de47690887a5e8fb3ae8585` |
| 8 | `theorem` | [Pos.skip?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-skip-char-eq-some-iff--33a97943b76f5049b07f5146.md) | 59 | `result-track:33a97943b76f5049b07f51467a0a98d9c032e12d2ab428406882a65a5e916e30` |
| 9 | `theorem` | [Pos.skip?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-skip-char-eq-none-iff--1aeb2d3cfb9522e3e34455d1.md) | 64 | `result-track:1aeb2d3cfb9522e3e34455d1b545eb8f8b2189ba6f10581da0b8e95487e827d7` |
| 10 | `theorem` | [Pos.get_skipWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-get-skipwhile-char-ne--4bd451f1a387a0f86d345aec.md) | 68 | `result-track:4bd451f1a387a0f86d345aec8b5f19873b37cb99293b44499e791b0ef67b760c` |
| 11 | `theorem` | [Pos.skipWhile_char_eq_self_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-skipwhile-char-eq-self-iff-get--2f5018ca742db8e5589e6b99.md) | 73 | `result-track:2f5018ca742db8e5589e6b9919ade7abc67bb3e672ee577c53183ec0d3f88e0d` |
| 12 | `theorem` | [Pos.get_eq_of_lt_skipWhile_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-get-eq-of-lt-skipwhile-char--a2d19714b1e452c35c7c80bc.md) | 77 | `result-track:a2d19714b1e452c35c7c80bc5a9c7084123c7075d7ceb9c11d0662bf626d20e6` |
| 13 | `theorem` | [get_skipPrefixWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/get-skipprefixwhile-char-ne--58c69da92c9af0b87d0bc0bd.md) | 81 | `result-track:58c69da92c9af0b87d0bc0bd2a78d8058face326cfe6a2547c7e22c1c1ab8047` |
| 14 | `theorem` | [get_eq_of_lt_skipPrefixWhile_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/get-eq-of-lt-skipprefixwhile-char--64678298d23e55fa3aa37d4c.md) | 85 | `result-track:64678298d23e55fa3aa37d4c084e8883326eb8db2b5c0eb3319a789e197f452c` |
| 15 | `theorem` | [all_char_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/all-char-iff--89dd23d37ec046a409fdd982.md) | 90 | `result-track:89dd23d37ec046a409fdd982169ace88bf6cee6eedb344d426f62f36c4ce880c` |
| 16 | `theorem` | [Pos.revSkip?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-revskip-char-eq-some-iff--161b194ad674552d09d882d3.md) | 94 | `result-track:161b194ad674552d09d882d3150a2fd086ca0af7a8c39521bb81b05ff9f68dd2` |
| 17 | `theorem` | [Pos.revSkip?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-revskip-char-eq-none-iff--3c5accddc1aa250ed66732d9.md) | 99 | `result-track:3c5accddc1aa250ed66732d9d42f28eec7879591256c846ca3d195028b2a5127` |
| 18 | `theorem` | [Pos.get_revSkipWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-get-revskipwhile-char-ne--f62fe0caf7680ced47b44c83.md) | 103 | `result-track:f62fe0caf7680ced47b44c83520535dd6094f1704b22b8e23eee9db56e0da9cb` |
| 19 | `theorem` | [Pos.revSkipWhile_char_eq_self_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-revskipwhile-char-eq-self-iff-get--b1e0be4f3e043672f0d2c488.md) | 108 | `result-track:b1e0be4f3e043672f0d2c4886cf4febdd7e6ff1edad1461556a108ef204c63c3` |
| 20 | `theorem` | [Pos.get_eq_of_revSkipWhile_le_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/pos-get-eq-of-revskipwhile-le-char--a0e89e0ad8c8bb418cb3ab10.md) | 112 | `result-track:a0e89e0ad8c8bb418cb3ab1056095983552eb74b95a4bf9a00ba1011c138b9f3` |
| 21 | `theorem` | [get_skipSuffixWhile_char_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/get-skipsuffixwhile-char-ne--c4c6039619aff47c3d0c1230.md) | 116 | `result-track:c4c6039619aff47c3d0c1230f075f45a00bd7802fbe25597b29672b7f1ff6be3` |
| 22 | `theorem` | [get_eq_of_skipSuffixWhile_le_char](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/get-eq-of-skipsuffixwhile-le-char--0c20640db2bf7f2352a1f1cb.md) | 120 | `result-track:0c20640db2bf7f2352a1f1cbfc28fbda66a9811b3ce92fa4239b40c8de711588` |
| 23 | `theorem` | [revAll_char_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/revall-char-iff--6483c6749e057cc3ff6922a3.md) | 126 | `result-track:6483c6749e057cc3ff6922a30ee642aac3042089a71af4a0c2cb7082d82c0cb5` |
| 24 | `theorem` | [skipSuffix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/skipsuffix-char-eq-some-iff--cb76534d3106ee463f624922.md) | 130 | `result-track:cb76534d3106ee463f6249226836810f1da5df8481ebc60c226b5be669842125` |
| 25 | `theorem` | [endsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-iff-get--683c412e89f69c5d7e863677.md) | 134 | `result-track:683c412e89f69c5d7e863677d634ffeafa4721f056071fe5cb8b74c8ab394133` |
| 26 | `theorem` | [endsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-false-iff-get--7b7ab291ba3ec2cfb2e33141.md) | 138 | `result-track:7b7ab291ba3ec2cfb2e331418a45eae5392c71e93b96ae52985f7baf721116aa` |
| 27 | `theorem` | [endsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-iff-exists-append--1aaf10272ef5eaddd7ee2dac.md) | 142 | `result-track:1aaf10272ef5eaddd7ee2dac0688167d0a5cb80433a0a6467a8f0b53f127388a` |
| 28 | `theorem` | [endsWith_char_eq_getLast?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-getlast--cc1282cd8dba33e03b2da3ad.md) | 147 | `result-track:cc1282cd8dba33e03b2da3ad9b16bff58f60d0a2b1c9590c0fa9bab757b4caad` |
| 29 | `theorem` | [endsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-false-iff-forall-append--50847a1e87c88e2bd1fd2cc4.md) | 157 | `result-track:50847a1e87c88e2bd1fd2cc47647f4816f28125203ac491cf7a7c15af18dd229` |
| 30 | `theorem` | [eq_append_of_dropSuffix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/eq-append-of-dropsuffix-char-eq-some--9c4751a6cff1a7dde3fea33b.md) | 161 | `result-track:9c4751a6cff1a7dde3fea33b1e747c52460ccfeade9652c3bc89fc491989e401` |
| 31 | `theorem` | [skipPrefix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/skipprefix-char-eq-some-iff--2de326daa8b800c75878d815.md) | 167 | `result-track:2de326daa8b800c75878d815d61419724cf2bc3b090f6d6acd05dde5b2a97767` |
| 32 | `theorem` | [startsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-iff-get--42e330ed225b0bcb35327d60.md) | 172 | `result-track:42e330ed225b0bcb35327d6022ac520203eda5e6282d83c1d7da680a2791c0fb` |
| 33 | `theorem` | [startsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-false-iff-get--1f8d48241f0e8e6490dc2d57.md) | 176 | `result-track:1f8d48241f0e8e6490dc2d5719690b90c8eda8a45de57abdbe2a474597b611ae` |
| 34 | `theorem` | [startsWith_char_eq_head?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-head--37c2115fe05f3e91b50c9e23.md) | 180 | `result-track:37c2115fe05f3e91b50c9e233ab8cb4103cd9eda75d456e8bf5fd474f2a0f47a` |
| 35 | `theorem` | [startsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-iff-exists-append--e6f64b29eb867a2c5c911255.md) | 184 | `result-track:e6f64b29eb867a2c5c911255b97d1e3a47237423d6a2ad494483daf40e2946dc` |
| 36 | `theorem` | [startsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/startswith-char-eq-false-iff-forall-append--3a0b53fb10064928cea8d7ff.md) | 188 | `result-track:3a0b53fb10064928cea8d7ff6ca1350a608a7764003d01a95f6d84d04570ee95` |
| 37 | `theorem` | [eq_append_of_dropPrefix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/eq-append-of-dropprefix-char-eq-some--6a26dbd511ce65cebb7a2f6a.md) | 192 | `result-track:6a26dbd511ce65cebb7a2f6a02ce812b2adaba5b6d1396be103949c4d0b30f29` |
| 38 | `theorem` | [skipSuffix?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/skipsuffix-char-eq-some-iff--8c4db26a37aade980b1cc971.md) | 197 | `result-track:8c4db26a37aade980b1cc9717fe7601afbf42cb8ebcb235ce89d843355665715` |
| 39 | `theorem` | [endsWith_char_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-iff-get--cdcb152baef20d39543b657d.md) | 202 | `result-track:cdcb152baef20d39543b657da0d9ff315d10e64009b217fb9356a30ecc29a5a9` |
| 40 | `theorem` | [endsWith_char_eq_false_iff_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-false-iff-get--c8286531c4b9cfda1bcea5bf.md) | 206 | `result-track:c8286531c4b9cfda1bcea5bfbac370fcc5b928d249de940612acc378ba25847a` |
| 41 | `theorem` | [endsWith_char_eq_getLast?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-getlast--650c28ca5c0d8c7a59ca5c0e.md) | 210 | `result-track:650c28ca5c0d8c7a59ca5c0ec1c6897cc5ec74537088fd9786d8d5feb7501179` |
| 42 | `theorem` | [endsWith_char_iff_exists_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-iff-exists-append--5667e25be3ccd36815cf6617.md) | 214 | `result-track:5667e25be3ccd36815cf66172eb3f4a36b6eddb9de4c507702e734deafb521fb` |
| 43 | `theorem` | [endsWith_char_eq_false_iff_forall_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/endswith-char-eq-false-iff-forall-append--d1c02fd1eb9dded076ae36bc.md) | 218 | `result-track:d1c02fd1eb9dded076ae36bc391be3845ee55fd8ea95b54c42c13e482a56ec2e` |
| 44 | `theorem` | [eq_append_of_dropSuffix?_char_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant99d157bcda118da03216c9f049163e2a1fd720b4cb492e00771040a31c51b2d6.lean/declarations/eq-append-of-dropsuffix-char-eq-some--78aedcf6a19943d2a2b582f9.md) | 222 | `result-track:78aedcf6a19943d2a2b582f9b2e7a26114985013536c9f7c05488dd447cbf0ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
