# Verification target: GRWTSK.Algebra.Parity.Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d99b45e4a898c2ea5ab9b98933e3da64026b65e7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/index.md) · [Full source](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d99b45e4a898c2ea5ab9b98933e3da64026b65e7`.

Source path: `GRWTSK/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [even_succAbove_add_predAbove](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-succabove-add-predabove--492d7f31313ef1edca0e72b4.md) | 26 | `result-track:492d7f31313ef1edca0e72b4dd659251712573ee3651e64062f1769830f6a972` |
| 2 | `lemma` | [even_of_val](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-of-val--c5795c97ef76743a3f9b0906.md) | 35 | `result-track:c5795c97ef76743a3f9b09063d409a0cea680d0e1e9c347f332dea3c5c9f4e9e` |
| 3 | `lemma` | [odd_of_val](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-of-val--a3cdce568db6a02477bece15.md) | 40 | `result-track:a3cdce568db6a02477bece1578ff302f4a984c4d03b092c8f1f6baa523861c8a` |
| 4 | `lemma` | [even_of_odd](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-of-odd--53f8f7235e0a5ace2dbfef4d.md) | 44 | `result-track:53f8f7235e0a5ace2dbfef4d681f165aeac66a98cd84f4fbdd9c630ff00c7c52` |
| 5 | `lemma` | [odd_of_odd](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-of-odd--3725c8c46c83eaa43ac860cf.md) | 51 | `result-track:3725c8c46c83eaa43ac860cfeca5707d1f20af1cf78b7c3ca6caad8632ba7369` |
| 6 | `lemma` | [even_iff_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-iff-of-even--9e0eb297375d1cf635bd7c5b.md) | 56 | `result-track:9e0eb297375d1cf635bd7c5be83bb68519972bcdfdc64db460d38793735151c7` |
| 7 | `lemma` | [odd_iff_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-iff-of-even--bf63fa306a13be9d6705dd66.md) | 63 | `result-track:bf63fa306a13be9d6705dd666a7c31297c56d1cc5bbe7de69ace60b2d967d843` |
| 8 | `lemma` | [even_iff](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-iff--686131f8953ab06315d38a43.md) | 75 | `result-track:686131f8953ab06315d38a431de4557f716e94d5f913e63510d055502f863594` |
| 9 | `lemma` | [even_iff_imp](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-iff-imp--5cfd652ade34f8e4a747733c.md) | 80 | `result-track:5cfd652ade34f8e4a747733ce94c721adc3eefbae14e3aaa009fe796d5f53144` |
| 10 | `lemma` | [odd_iff](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-iff--184d17378209523cbf80a1dc.md) | 86 | `result-track:184d17378209523cbf80a1dc859898870cf83ba1ac9afa1b5f172360a6bb35ae` |
| 11 | `lemma` | [odd_iff_imp](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-iff-imp--0210d9d8e4c693b389dd5f71.md) | 91 | `result-track:0210d9d8e4c693b389dd5f71521a1305eb0d77b68bdc41c8c8212dba88655b88` |
| 12 | `lemma` | [even_iff_mod_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-iff-mod-of-even--2067b878e85cf2438d7ff601.md) | 95 | `result-track:2067b878e85cf2438d7ff6016c2c7429e0203f151000bf78967bf056bc499dab` |
| 13 | `lemma` | [odd_iff_mod_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-iff-mod-of-even--53d1bd964e18ba47e68e250b.md) | 99 | `result-track:53d1bd964e18ba47e68e250baaac138b8fdf4a9f9b816308cbd2b369a47a95f6` |
| 14 | `lemma` | [not_odd_iff_even_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/not-odd-iff-even-of-even--696719fa9c2e69c239f405f1.md) | 103 | `result-track:696719fa9c2e69c239f405f1b217d76aeaa78e30408c9370739d548d7d7eb51b` |
| 15 | `lemma` | [not_even_iff_odd_of_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/not-even-iff-odd-of-even--c386dadfdf27a12536df58e9.md) | 107 | `result-track:c386dadfdf27a12536df58e9995f33e23410a609ba5898ae16dc937a0f01e242` |
| 16 | `lemma` | [odd_add_one_iff_even](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/odd-add-one-iff-even--5f59e53670bef73526ec09b6.md) | 111 | `result-track:5f59e53670bef73526ec09b60bf139a111ddb2e6749ef10dcc63818749942398` |
| 17 | `lemma` | [even_add_one_iff_odd](../../../../mathematics/Algebra/Parity/Variant97604eae9ba02dba1f7bbd0cafe3afe94d2798db95cf1bc69307e5528a489f23.lean/declarations/even-add-one-iff-odd--07e893683648cd74b8268759.md) | 114 | `result-track:07e893683648cd74b82687595b265130ed43874449a4a834abe51fc5d9032729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
