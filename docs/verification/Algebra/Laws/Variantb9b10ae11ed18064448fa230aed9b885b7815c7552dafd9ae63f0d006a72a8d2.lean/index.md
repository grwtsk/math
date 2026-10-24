# Verification target: GRWTSK.Algebra.Laws.Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b61a07a1817700190cb685e61fee3f1cdd578c6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b61a07a1817700190cb685e61fee3f1cdd578c6`.

Source path: `GRWTSK/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Algebra` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bot_join](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/bot-join--1e7ba0843f2fa26b750b3804.md) | 17 | `result-track:1e7ba0843f2fa26b750b3804b01812e4baa67eefe0159ba24216eb17b12f4f62` |
| 2 | `theorem` | [top_meet](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/top-meet--c81f1278ef05f3eecfd43032.md) | 21 | `result-track:c81f1278ef05f3eecfd43032886131779b7f2576dd1c342b12a1d3afbed6e630` |
| 3 | `theorem` | [compl_join](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-join--9ddb4ffd6b13840799372947.md) | 25 | `result-track:9ddb4ffd6b1384079937294712ba4363fba01b6d4a5682a1e8d479c0086e684b` |
| 4 | `theorem` | [compl_meet](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-meet--6b48d70ca72efccefeeeabf7.md) | 29 | `result-track:6b48d70ca72efccefeeeabf778f4f616421d7db01540a2f089f4807883e041cb` |
| 5 | `theorem` | [join_idem](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/join-idem--6d68a773d18610502374fd3e.md) | 34 | `result-track:6d68a773d18610502374fd3ec62f4becd6c6d6766385ff48a07d342bf9cdb48a` |
| 6 | `theorem` | [meet_idem](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/meet-idem--a1af864815f7b355e55593cc.md) | 48 | `result-track:a1af864815f7b355e55593cc4d416aac5e7b4892de25d33ab20d507068293f13` |
| 7 | `theorem` | [join_top](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/join-top--740bb235659975109b2104b9.md) | 62 | `result-track:740bb235659975109b2104b96b993a6856c720b8c047961e4b00c2b6b382a129` |
| 8 | `theorem` | [top_join](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/top-join--9b8f3a5fbfa803fd8b0387cf.md) | 74 | `result-track:9b8f3a5fbfa803fd8b0387cf3ff8677daeeb50a29090568a3f7bafbd73fc4dfd` |
| 9 | `theorem` | [meet_bot](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/meet-bot--a9826b8cd2c8ff187a836cf5.md) | 79 | `result-track:a9826b8cd2c8ff187a836cf5a2d6efa8ddf02ccb0f352fce67088be10d8729b5` |
| 10 | `theorem` | [bot_meet](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/bot-meet--1490edf226a53d27de493397.md) | 91 | `result-track:1490edf226a53d27de4933970297c8b9a8382277da2b5fc22cc48c7fe1c19153` |
| 11 | `theorem` | [join_absorb](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/join-absorb--17d37b3a97671d7ab79d81bb.md) | 96 | `result-track:17d37b3a97671d7ab79d81bbad7e51d802ce75d4750543926e5ad96dc9361327` |
| 12 | `theorem` | [meet_absorb](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/meet-absorb--c38056c3ef102969978d8a26.md) | 109 | `result-track:c38056c3ef102969978d8a26edd0e0ac11d4a6c35f9a1ba42cd655d09c802907` |
| 13 | `theorem` | [join_left_comm](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/join-left-comm--806cf887acc11917b25f840f.md) | 121 | `result-track:806cf887acc11917b25f840f7e08534eb0b97dab803f1140d01fea60a54adbcb` |
| 14 | `theorem` | [meet_left_comm](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/meet-left-comm--2ac782dabae1e13cc763750d.md) | 131 | `result-track:2ac782dabae1e13cc763750d97961c93af8ca678975234a97a7f2963ac60211d` |
| 15 | `theorem` | [compl_unique](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-unique--ec5edcfae7088ac9324bf384.md) | 142 | `result-track:ec5edcfae7088ac9324bf384b34ac1b6e9743c8bff51ee20c2ea86e302bbb87b` |
| 16 | `theorem` | [compl_involutive](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-involutive--64b1f7b1457d07906b74b2f4.md) | 175 | `result-track:64b1f7b1457d07906b74b2f4e585e1fe0ae39021ef66795c406ed659799c7012` |
| 17 | `theorem` | [compl_join_eq_meet_compl](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-join-eq-meet-compl--828207c91b7205f2b4217d4d.md) | 182 | `result-track:828207c91b7205f2b4217d4dad5344091ea64415940f60d77ff2a90d278c6352` |
| 18 | `theorem` | [compl_meet_eq_join_compl](../../../../mathematics/Algebra/Laws/Variantb9b10ae11ed18064448fa230aed9b885b7815c7552dafd9ae63f0d006a72a8d2.lean/declarations/compl-meet-eq-join-compl--1ba5b233ddf660550d877f41.md) | 253 | `result-track:1ba5b233ddf660550d877f414375bc8f16d0158a8a364cc7cab97a4ff612f8d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
