# Verification target: GRWTSK.Algebra.GroupTheory.NoncommPiCoprod.Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f948329efb44a1b07759eceb5cdb566fc81842f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f948329efb44a1b07759eceb5cdb566fc81842f`.

Source path: `GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.OrderOfElement` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_one_of_noncommProd_eq_one_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/eq-one-of-noncommprod-eq-one-of-isupindep--27d7890cbc3a90a4d657cc19.md) | 60 | `result-track:27d7890cbc3a90a4d657cc194d583bab8863dfa8c9e70a7f1f2fcdb1d290af15` |
| 2 | `def` | [noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod--e49c38b87c1ca56ddd5b573a.md) | 110 | `declaration-track:e49c38b87c1ca56ddd5b573a5e0ec1bd2c38b13ae14aabc1c1669ac78e1708c0` |
| 3 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-mulsingle--a078f118a32679e4f13af475.md) | 125 | `result-track:a078f118a32679e4f13af475938a692e498b794211a419d2dfa9aedde47d75bb` |
| 4 | `def` | [noncommPiCoprodEquiv](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprodequiv--ef640b987ee82b44a7879339.md) | 150 | `declaration-track:ef640b987ee82b44a78793393421f7977c96382402caaacb1d25a837c7318a6c` |
| 5 | `theorem` | [noncommPiCoprod_mrange](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-mrange--f52435c41d123ada1c57dc58.md) | 164 | `result-track:f52435c41d123ada1c57dc5815a836ffe177ee022ccea5793e9bfcac6099cdeb` |
| 6 | `lemma` | [commute_noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/commute-noncommpicoprod--747783bac924722ac663765b.md) | 178 | `result-track:747783bac924722ac663765b493b4d95ab0b5cd97c762e2d6313b0cf568826ec` |
| 7 | `lemma` | [noncommPiCoprod_apply](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-apply--775d73e284bde89104c04ea3.md) | 188 | `result-track:775d73e284bde89104c04ea30544837706ddad95221df41e31d7c8c6f5774f1d` |
| 8 | `theorem` | [comp_noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/comp-noncommpicoprod--f6efdde0fc05a4af8fc1d4a2.md) | 197 | `result-track:f6efdde0fc05a4af8fc1d4a20273de9942ab7129b1e4ca245c9692b29b89e1ca` |
| 9 | `theorem` | [noncommPiCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-range--40f6bd26f26361743fa770a9.md) | 221 | `result-track:40f6bd26f26361743fa770a9732a8c59db635e1054c9b66852b0acfdb900778f` |
| 10 | `theorem` | [injective_noncommPiCoprod_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/injective-noncommpicoprod-of-isupindep--11510349d5d770965e32f276.md) | 237 | `result-track:11510349d5d770965e32f2762520faa1f3809a2a91e244ad6201c2633bf94151` |
| 11 | `theorem` | [independent_range_of_coprime_order](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/independent-range-of-coprime-order--1812851919af7c8bfa6d1397.md) | 256 | `result-track:1812851919af7c8bfa6d1397e9f00139d997c808b977dda298a823fd2092f76d` |
| 12 | `theorem` | [commute_subtype_of_commute](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/commute-subtype-of-commute--caefc30408dce12520729efe.md) | 306 | `result-track:caefc30408dce12520729efef1ac878459a6edf86eb0be11a8301b5372651b50` |
| 13 | `theorem` | [independent_of_coprime_order](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/independent-of-coprime-order--b9f4befd6abf62f4182623f5.md) | 314 | `result-track:b9f4befd6abf62f4182623f53f8e80d267a4da132af2cbfb58d417cd9a6d59ce` |
| 14 | `def` | [noncommPiCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod--21e80232471a04d4135fc8b1.md) | 329 | `declaration-track:21e80232471a04d4135fc8b1bd297bd77824ef4d88276104b189f019b4b0a440` |
| 15 | `theorem` | [noncommPiCoprod_mulSingle](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-mulsingle--197972001cf7d6f40c4f574c.md) | 334 | `result-track:197972001cf7d6f40c4f574caafe8820bbc029dee5586ecc954597fd9ffef072` |
| 16 | `theorem` | [noncommPiCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-range--2d9afd636f8f3aab8f6d604a.md) | 339 | `result-track:2d9afd636f8f3aab8f6d604a721d18a080f041247971ed65f023eeec385ede0b` |
| 17 | `theorem` | [injective_noncommPiCoprod_of_iSupIndep](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/injective-noncommpicoprod-of-isupindep--f67eab00ce51bed0435e9889.md) | 345 | `result-track:f67eab00ce51bed0435e98899e47c52cdf4083f7576952cb4261bb94e1a9d60f` |
| 18 | `theorem` | [noncommPiCoprod_apply](../../../../../mathematics/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/declarations/noncommpicoprod-apply--9af7322551e9287bce8c04af.md) | 355 | `result-track:9af7322551e9287bce8c04afe332ea1a53a927f170f4375643f114ccda1c2246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
