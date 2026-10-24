# Verification target: GRWTSK.Algebra.LinearAlgebra.Connected.Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a283104c9f084111ac29698aedecf184d32ce272",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a283104c9f084111ac29698aedecf184d32ce272`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Contractible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Cardinality` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.Countable.isPathConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/set-countable-ispathconnected-compl-of-one-lt-rank--1f6d9a268e8a81cbdd563bad.md) | 36 | `result-track:1f6d9a268e8a81cbdd563bad2ed23c823bb27ef58f8e5edd8f923694fbee6c4f` |
| 2 | `theorem` | [Set.Countable.isConnected_compl_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/set-countable-isconnected-compl-of-one-lt-rank--e8e5e3a1ddd72b7817c0f6bf.md) | 107 | `result-track:e8e5e3a1ddd72b7817c0f6bf3375ea55e23bd986fdb298861a54872fadcdcb55` |
| 3 | `theorem` | [isPathConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispathconnected-compl-singleton-of-one-lt-rank--4187b498c05d78abc9bd7ce5.md) | 112 | `result-track:4187b498c05d78abc9bd7ce56958c66ef65097e0b66592cdb6fe30d51b0ebcf0` |
| 4 | `theorem` | [isConnected_compl_singleton_of_one_lt_rank](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/isconnected-compl-singleton-of-one-lt-rank--120f95fd48c192825f7a7122.md) | 117 | `result-track:120f95fd48c192825f7a71229ffe7e8c5a51e00502cef58cf9726fc3f82388a1` |
| 5 | `theorem` | [ball_contractible](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ball-contractible--90c1665fb551fe2515f1174e.md) | 131 | `result-track:90c1665fb551fe2515f1174e9f7186811d6fae15553ce480098697c8cea6149f` |
| 6 | `theorem` | [eball_contractible](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/eball-contractible--0776a4502806c9e6db6a4820.md) | 135 | `result-track:0776a4502806c9e6db6a4820557ba035721c2834bf197396f47c732d28836c88` |
| 7 | `theorem` | [isPathConnected_ball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispathconnected-ball--8f8940eb5b10798d8f708584.md) | 146 | `result-track:8f8940eb5b10798d8f70858446b16c2163e3314d1ea308a5e10d2c312d311a9b` |
| 8 | `theorem` | [isPathConnected_eball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispathconnected-eball--72490e08b110848103b47471.md) | 151 | `result-track:72490e08b110848103b47471dd737fa4f1cfdb7f3e82c7d0c2cc1907a468f071` |
| 9 | `theorem` | [isConnected_ball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/isconnected-ball--60344c0a0e643206713ae6a9.md) | 156 | `result-track:60344c0a0e643206713ae6a96c31a74bd548f18363a19f1423ba3d78033768f4` |
| 10 | `theorem` | [isConnected_eball](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/isconnected-eball--5ede56c8a7c77e834d98e67d.md) | 160 | `result-track:5ede56c8a7c77e834d98e67d0ddc4d1090a0b161b99091ab04d60c16dd28ed57` |
| 11 | `theorem` | [isPathConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispathconnected-sphere--db04895a00de5dd517f53f61.md) | 170 | `result-track:db04895a00de5dd517f53f6189ac0095eab175daf0c2dac79fecb550458d0092` |
| 12 | `theorem` | [isConnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/isconnected-sphere--32a076f8451fd0fec6902b35.md) | 200 | `result-track:32a076f8451fd0fec6902b35e140c1f0448d5c17df5de5c9203dda335ce6e6d1` |
| 13 | `theorem` | [isPreconnected_sphere](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispreconnected-sphere--fd0a0083ebcf508acb99d7ce.md) | 205 | `result-track:fd0a0083ebcf508acb99d7ceebc04cdf56c0afdde2356bb03263b4a01b5ade96` |
| 14 | `theorem` | [isPathConnected_compl_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/ispathconnected-compl-of-one-lt-codim--8a5392e7fd9852fde9d121f2.md) | 220 | `result-track:8a5392e7fd9852fde9d121f2717dc4410198f19411d668428288263630921d36` |
| 15 | `theorem` | [isConnected_compl_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/isconnected-compl-of-one-lt-codim--a554d80bfdd3065d3b2a35eb.md) | 229 | `result-track:a554d80bfdd3065d3b2a35eb60f709456627953e08d76add8b8ed918ed8ee563` |
| 16 | `theorem` | [Submodule.connectedComponentIn_eq_self_of_one_lt_codim](../../../../../mathematics/Algebra/LinearAlgebra/Connected/Varianta5700c5df59faa31a8750eb6963463038fd6fcd856c4fbd70de14073cf0fc6e1.lean/declarations/submodule-connectedcomponentin-eq-self-of-one-lt-codim--8488736fad451d18c17598c8.md) | 233 | `result-track:8488736fad451d18c17598c80b533ce4f1a49b792249b6461bbd9883c72f5593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
