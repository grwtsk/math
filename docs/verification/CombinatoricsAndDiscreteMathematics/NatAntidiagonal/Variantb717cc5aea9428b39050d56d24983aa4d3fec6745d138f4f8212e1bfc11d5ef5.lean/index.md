# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "588f0ae76d7fb19284088b7e1bdd57144ad254d1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `588f0ae76d7fb19284088b7e1bdd57144ad254d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple--8aa2e92b10775d99d454161c.md) | 63 | `declaration-track:8aa2e92b10775d99d454161c1f1a528446bf656019e168989248a48aa13ae2d3` |
| 2 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-zero--97ce9f8fb7643ec61c99cfa2.md) | 72 | `result-track:97ce9f8fb7643ec61c99cfa2776e5d2a1fd293425487afcdfb1776cb192db8c0` |
| 3 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-succ--05badbac6573ea02f5a6d387.md) | 77 | `result-track:05badbac6573ea02f5a6d3876b2082c535dd2bf7b21a164e9ff2382d44b84f54` |
| 4 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/mem-antidiagonaltuple--506cb4e1f5daec5a71260825.md) | 81 | `result-track:506cb4e1f5daec5a712608252a247eef559a1bd44312086d6f59dbcf17ad7d26` |
| 5 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/nodup-antidiagonaltuple--6faf70f1b266f64eeab6f851.md) | 98 | `result-track:6faf70f1b266f64eeab6f8518de9cfc649dcd286705062d6d030349ecf1fecb3` |
| 6 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-right--4a26ada2f3940fe6d5f100a7.md) | 124 | `result-track:4a26ada2f3940fe6d5f100a79a827f53eb6032de058939d769e1d8332ffbb967` |
| 7 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-one--0162a21b214dd2a7932c7426.md) | 133 | `result-track:0162a21b214dd2a7932c74260c14fb062857ac3675d2b26967b619347cf804c8` |
| 8 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-two--903867583b775653f045ac9b.md) | 144 | `result-track:903867583b775653f045ac9b16aae097534b70257f02c27cbf08c6428eb49673` |
| 9 | `theorem` | [antidiagonalTuple_pairwise_pi_lex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-pairwise-pi-lex--3e883fa9551d6230555efdc0.md) | 152 | `result-track:3e883fa9551d6230555efdc039be5a22086de651bb67f33bec083e07acce44d8` |
| 10 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple--dce3abd81f63614e79a0cce9.md) | 184 | `declaration-track:dce3abd81f63614e79a0cce9ea013d9ecd6afa68c32151f39ff20a7892b59877` |
| 11 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-zero--f4c3b7ceaf8b609b78431ab7.md) | 189 | `result-track:f4c3b7ceaf8b609b78431ab7edddd313c6f6aaa47c4a9dd568369ff68ae3cfb1` |
| 12 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-succ--8033ca276b1b016a432f17f2.md) | 194 | `result-track:8033ca276b1b016a432f17f2da2f8c54ba3d240bbce9f1f318edb3fda5670a0a` |
| 13 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/mem-antidiagonaltuple--59ad108570d6a3957823324b.md) | 198 | `result-track:59ad108570d6a3957823324b990645e3027568d41ea586068b4c11f5d26b4fe5` |
| 14 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/nodup-antidiagonaltuple--07244c440ca0b25d6ab56af5.md) | 203 | `result-track:07244c440ca0b25d6ab56af58477cd8162a3c4844da1ffd9219fb2ccfda505a9` |
| 15 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-right--db84ca8da1450b91a148f173.md) | 207 | `result-track:db84ca8da1450b91a148f173f0abce9f42ca1e2536508f369a26c201ee59a0d9` |
| 16 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-one--0eb6beae7cc111ec6336f01a.md) | 212 | `result-track:0eb6beae7cc111ec6336f01a098e185b5e78bf0632b610e2823452a1747b7c01` |
| 17 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-two--56b84a78525f4cfe7ab41c76.md) | 216 | `result-track:56b84a78525f4cfe7ab41c7665ff695fbacffef6555e1e9488c049442bc01c1b` |
| 18 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple--70255b07bc8896b93f3223d0.md) | 229 | `declaration-track:70255b07bc8896b93f3223d0c03bd95e08a632eb93bc3d39ce74108f8ec2e3d3` |
| 19 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-zero--0267c2ed2bf6a9f90e4aa499.md) | 234 | `result-track:0267c2ed2bf6a9f90e4aa499513212be7472ae8c377e3e6a7b5f8efea68a95ac` |
| 20 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-succ--0902e50040364c1861e82f60.md) | 239 | `result-track:0902e50040364c1861e82f60a6bec17fd7028b34f9d7fe698a9e347419f6ff0c` |
| 21 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/mem-antidiagonaltuple--8be1bfb59cbc4297a978dbfa.md) | 243 | `result-track:8be1bfb59cbc4297a978dbfafb5f76b5f1b40d22590c22d0ba99f9490f14db60` |
| 22 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-zero-right--97687d47bdef5c99cecbfa32.md) | 248 | `result-track:97687d47bdef5c99cecbfa3275a43ce4d9a87c8d244d92641b4b7013d1ca0827` |
| 23 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-one--1f34f941f4414ff8a3b4720d.md) | 253 | `result-track:1f34f941f4414ff8a3b4720dd08d9e3d1134d10e90a61b3e151cab618e3c653d` |
| 24 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/antidiagonaltuple-two--1e2f9fe67a859dced5d64b00.md) | 257 | `result-track:1e2f9fe67a859dced5d64b00aeb9f3a9f768ea3799d066e674f57f6c2377fb4e` |
| 25 | `def` | [sigmaAntidiagonalTupleEquivTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantb717cc5aea9428b39050d56d24983aa4d3fec6745d138f4f8212e1bfc11d5ef5.lean/declarations/sigmaantidiagonaltupleequivtuple--b69bfaf9aaeaf6c43a7b7ea0.md) | 269 | `declaration-track:b69bfaf9aaeaf6c43a7b7ea04f6bea9aedee40cec960aa5596e8d23fb8109489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
