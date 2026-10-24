# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Join.Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df9eebf7a47a8073e7cb947da9495f449fceff7b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df9eebf7a47a8073e7cb947da9495f449fceff7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [join_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-singleton--1509952075d33594d5f7374b.md) | 26 | `result-track:1509952075d33594d5f7374b344ce57885bfd67b3857186551a49d22142953e2` |
| 2 | `theorem` | [join_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-eq-nil--dc2c4ffa7e0d68435474f98c.md) | 30 | `result-track:dc2c4ffa7e0d68435474f98cbb4160833e00649c5734d78516ca8165806e042e` |
| 3 | `theorem` | [join_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-append--fefe341c560218660196d589.md) | 36 | `result-track:fefe341c560218660196d5895bc9da5ecce565b7ce7ae38c7c349a9ebc4a9ff7` |
| 4 | `theorem` | [join_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-concat--6c1fb94431bfbf6e391288a8.md) | 42 | `result-track:6c1fb94431bfbf6e391288a8edfc6c7a37cb9dad571e1d84d22bfd378b09110a` |
| 5 | `theorem` | [join_filter_isEmpty_eq_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-filter-isempty-eq-false--7f83c96f5a6f65db2acdc632.md) | 49 | `result-track:7f83c96f5a6f65db2acdc632a46c5c3fecaaa2a8e28b461ad83ba11eade94f9a` |
| 6 | `theorem` | [join_filter_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-filter-ne-nil--ff21933e81d2055358264f6c.md) | 60 | `result-track:ff21933e81d2055358264f6c5133c08346ddc1b8e097f69849bf8cfde5184075` |
| 7 | `theorem` | [join_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-join--c5fc72d310966556c9706821.md) | 65 | `result-track:c5fc72d310966556c97068219c783dceb6d47f4dc4913b4468010ebc45f39011` |
| 8 | `theorem` | [length_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/length-join--fe9c0f7c0551e75032e6764f.md) | 70 | `result-track:fe9c0f7c0551e75032e6764f675c42276e6e8ec755c1b08f4224ea157adf2e5a` |
| 9 | `theorem` | [length_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/length-bind--ea30531e7b0479ae186bca71.md) | 75 | `result-track:ea30531e7b0479ae186bca71a83f3f576b103193e1632d3d60f0aff52b2f6179` |
| 10 | `theorem` | [bind_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/bind-eq-nil--da704149020f5b7070369723.md) | 80 | `result-track:da704149020f5b7070369723e75d270d0f8d286606056d50af9f2a53f11ec207` |
| 11 | `theorem` | [take_sum_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/take-sum-join--3dc9b7f860f4a45894db6817.md) | 87 | `result-track:3dc9b7f860f4a45894db68175ebac72c8ccac3c259e2d203ed56ff6b27e8c936` |
| 12 | `theorem` | [drop_sum_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/drop-sum-join--945d4863d247b88831e1fd0a.md) | 96 | `result-track:945d4863d247b88831e1fd0af992a9b5e1776bf048218a716ef2c4df533720d3` |
| 13 | `theorem` | [drop_take_succ_eq_cons_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/drop-take-succ-eq-cons-get--5e54b083349742095240e53a.md) | 105 | `result-track:5e54b083349742095240e53a5737af2b2f4bb713393aab7e3ff9456162cf1be1` |
| 14 | `theorem` | [drop_take_succ_eq_cons_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/drop-take-succ-eq-cons-nthle--819b8bd5124dbbbb98b1d96b.md) | 117 | `result-track:819b8bd5124dbbbb98b1d96b18d4ac29432d483af503b67fb512868cb5e9eb73` |
| 15 | `theorem` | [drop_take_succ_join_eq_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/drop-take-succ-join-eq-get--3ca45e74481ae58296753f3b.md) | 135 | `result-track:3ca45e74481ae58296753f3b2a8a2652b983c46390007af03b84d65cd136a2f4` |
| 16 | `theorem` | [drop_take_succ_join_eq_nthLe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/drop-take-succ-join-eq-nthle--cb5dec3630faedf034d04b2b.md) | 148 | `result-track:cb5dec3630faedf034d04b2b5dc65620abfc90ab3ef23fa1807ac016d5830e2c` |
| 17 | `theorem` | [sum_take_map_length_lt1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/sum-take-map-length-lt1--5c2fd63e3071c7037d622b90.md) | 159 | `result-track:5c2fd63e3071c7037d622b907f2af77a5784c46fb818477032d7b5ad19e427bd` |
| 18 | `theorem` | [sum_take_map_length_lt2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/sum-take-map-length-lt2--530d599899a66d39cc43e3c5.md) | 168 | `result-track:530d599899a66d39cc43e3c56e3de4303f48facff3d2586f23fd1535d9db839a` |
| 19 | `theorem` | [nthLe_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/nthle-join--37a168934efc505c6120c001.md) | 180 | `result-track:37a168934efc505c6120c0014b78caf2e9239e85227729cb07ddccea336c1234` |
| 20 | `theorem` | [eq_iff_join_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/eq-iff-join-eq--716d835d67246c7702eb900a.md) | 190 | `result-track:716d835d67246c7702eb900a3b84f8f65427ca4629156676034a2e9ef4d50644` |
| 21 | `theorem` | [join_drop_length_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-drop-length-sub-one--79221e542ddb9c060566c894.md) | 201 | `result-track:79221e542ddb9c060566c894aeac21f36021193158361451c10f138d84292994` |
| 22 | `theorem` | [append_join_map_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/append-join-map-append--7dd2d1f981a0b242559c9596.md) | 210 | `result-track:7dd2d1f981a0b242559c9596b111402dbc9881cfecc7b7433d54c140f700fae3` |
| 23 | `theorem` | [reverse_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/reverse-join--7a97e7c1497e3dbf67d7cb5b.md) | 218 | `result-track:7a97e7c1497e3dbf67d7cb5b28e976ae70d81aab71542c8bc60a5da892765342` |
| 24 | `theorem` | [join_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Join/Variant441e46a605a9c9272fcb37e93495c9376a3a4aa5b905c5fdfb9b583686542b6a.lean/declarations/join-reverse--b8c416bc667c49c06bf7b132.md) | 226 | `result-track:b8c416bc667c49c06bf7b13232d465fa2e10f7b14e3ea3c2eb11484ee9bafd01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
