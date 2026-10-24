# Verification target: GRWTSK.Algebra.UniversalAlgebra.Translations.Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "703757d1178e4389d1edadfee127ec45e733bf36",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `703757d1178e4389d1edadfee127ec45e733bf36`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stream_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/stream-zero--71aae36027be330be1435b64.md) | 60 | `result-track:71aae36027be330be1435b6456ffdde1d2ac993cc720458885ae16e1faeb6906` |
| 2 | `theorem` | [stream_eq_none_of_fr_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/stream-eq-none-of-fr-eq-zero--c75aa4849836812a1352a791.md) | 65 | `result-track:c75aa4849836812a1352a791db96c30b7ffeb3cbb1e04f509ceb7ed29c7fb22c` |
| 3 | `theorem` | [succ_nth_stream_eq_none_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/succ-nth-stream-eq-none-iff--054175a26d4b8830566bab0a.md) | 75 | `result-track:054175a26d4b8830566bab0a81e34ef470cf37f4427a6700f00619e85c0f7356` |
| 4 | `theorem` | [succ_nth_stream_eq_some_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/succ-nth-stream-eq-some-iff--c89f2190be10aafd75b666f0.md) | 84 | `result-track:c89f2190be10aafd75b666f07825ddb28c7021beeb61aff549a6bfc25a7b3c6a` |
| 5 | `theorem` | [stream_succ_of_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/stream-succ-of-some--ce4ed22bb70f20d1f7a54433.md) | 93 | `result-track:ce4ed22bb70f20d1f7a544338a149d756df8c99dde476872fb00042b8ecd0e16` |
| 6 | `theorem` | [stream_succ_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/stream-succ-of-int--696b6c1070cfec1647e47d88.md) | 99 | `result-track:696b6c1070cfec1647e47d883b53a09078561d422a3d8bf1fb18d1eaf2f6fd84` |
| 7 | `theorem` | [exists_succ_nth_stream_of_fr_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/exists-succ-nth-stream-of-fr-zero--5f0b168c1bce2f3a1ba5b207.md) | 107 | `result-track:5f0b168c1bce2f3a1ba5b207192b9b129d657114033f604a83ac1fcfd01af4c7` |
| 8 | `theorem` | [stream_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/stream-succ--90a7d256f7a7f1db193038db.md) | 122 | `result-track:90a7d256f7a7f1db193038db5df89102806ab441fe2a75af2fd3e6b5d99d7bec` |
| 9 | `theorem` | [IntFractPair.seq1_fst_eq_of](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/intfractpair-seq1-fst-eq-of--336595977ae6b0aec6a2030d.md) | 154 | `result-track:336595977ae6b0aec6a2030d5f0987d6bdf47cfeae10e5b0640139f9f2a362a2` |
| 10 | `theorem` | [of_h_eq_intFractPair_seq1_fst_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-h-eq-intfractpair-seq1-fst-b--63f8beb3af59fdd9f06deab4.md) | 157 | `result-track:63f8beb3af59fdd9f06deab4db08cec296e3b2bcdc742dac2eb8b0d904ad11aa` |
| 11 | `theorem` | [of_h_eq_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-h-eq-floor--020a144ffd247e64b106d140.md) | 163 | `result-track:020a144ffd247e64b106d1404955c6d78c84824b1fe5920c7efe29207802842c` |
| 12 | `theorem` | [IntFractPair.get?_seq1_eq_succ_get?_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/intfractpair-get-seq1-eq-succ-get-stream--45030c6c0a43cec4c793473e.md) | 182 | `result-track:45030c6c0a43cec4c793473efcb2470a3df5fea717d696740541d69fc0ed0d61` |
| 13 | `theorem` | [of_terminatedAt_iff_intFractPair_seq1_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-terminatedat-iff-intfractpair-seq1-terminatedat--25f6b514a96daaddea8d00b6.md) | 195 | `result-track:25f6b514a96daaddea8d00b6adb2fcaddea8e713b323c8a06ea2abfea485f490` |
| 14 | `theorem` | [of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-terminatedat-n-iff-succ-nth-intfractpair-stream-eq-none--1c08d5491bf9afce6488ffdf.md) | 199 | `result-track:1c08d5491bf9afce6488ffdf87a26cadaacce87879ef907d5efd06353cd0efc0` |
| 15 | `theorem` | [IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/intfractpair-exists-succ-get-stream-of-gcf-of-get-eq-some--f6ddd168a4d8950f5bd20a93.md) | 215 | `result-track:f6ddd168a4d8950f5bd20a9382c1147e5e9db48e8f4746bdd3e329b41d11fa49` |
| 16 | `theorem` | [get?_of_eq_some_of_succ_get?_intFractPair_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/get-of-eq-some-of-succ-get-intfractpair-stream--2223f6044186fed462540781.md) | 228 | `result-track:2223f6044186fed46254078190afb2f05d24d97a9e2f2daf960a4bd83fe9f4f0` |
| 17 | `theorem` | [get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/get-of-eq-some-of-get-intfractpair-stream-fr-ne-zero--2769b8a134c722417498a927.md) | 237 | `result-track:2769b8a134c722417498a927430394e73d91c3e38e103119eaaf90b913de3b4b` |
| 18 | `theorem` | [of_s_head_aux](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-s-head-aux--01d64f8553a3ea7baf8b204d.md) | 249 | `result-track:01d64f8553a3ea7baf8b204d11a002a163e66d8da319d533c31d0c913f45ea0e` |
| 19 | `theorem` | [of_s_head](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-s-head--798c5c8f82b649e4aa4504d0.md) | 260 | `result-track:798c5c8f82b649e4aa4504d0e55481a894bea2e2439931902f003ff65a2e10f8` |
| 20 | `theorem` | [of_s_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-s-of-int--4508079a84722ded6a8f7ce8.md) | 270 | `result-track:4508079a84722ded6a8f7ce8d6199cf772fd516ebd809b62bf2c975fd3be05c9` |
| 21 | `theorem` | [of_s_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-s-succ--97c7607aadc1c31f5957b885.md) | 283 | `result-track:97c7607aadc1c31f5957b8857b947358c15b1ef815dcb4029a5f98d697b37c7e` |
| 22 | `theorem` | [of_s_tail](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/of-s-tail--f43b6dfa29c7da37d4b7f91c.md) | 301 | `result-track:f43b6dfa29c7da37d4b7f91c4d84160da4a766062a9623d82a25df477abf8664` |
| 23 | `theorem` | [convs'_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/convs-of-int--518535271ce4a365bb94a93f.md) | 309 | `result-track:518535271ce4a365bb94a93f1a8244c6a2397f3eae5a498b40a5e135bb2ca8ca` |
| 24 | `theorem` | [convs'_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant863aedfdbd018503178710dc2deb5792c47482e0493d35a66f5e377a18af52db.lean/declarations/convs-succ--158b1aecb4882e1537e7b2b1.md) | 321 | `result-track:158b1aecb4882e1537e7b2b1dd2833f2e08f7da8e70532ccf54fd586c5fafaac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
