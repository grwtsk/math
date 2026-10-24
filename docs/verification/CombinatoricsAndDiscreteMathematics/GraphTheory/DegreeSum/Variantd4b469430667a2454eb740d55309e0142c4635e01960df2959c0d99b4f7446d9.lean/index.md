# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DegreeSum.Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17fd6b486d986d6b270d7613555e34e719bfa8eb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17fd6b486d986d6b270d7613555e34e719bfa8eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Parity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dart_fst_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-fst-fiber--6e8249503495936fcd0da6e3.md) | 66 | `result-track:6e8249503495936fcd0da6e3c647135a46b462a7876d2edcc73e17ec1e8cae80` |
| 2 | `theorem` | [dart_fst_fiber_card_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-fst-fiber-card-eq-degree--9008398581e63f26e76e63bb.md) | 77 | `result-track:9008398581e63f26e76e63bbb36fd57a3cd917e0446a4c1cfb93ccda5079c68b` |
| 3 | `theorem` | [dart_card_eq_sum_degrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-card-eq-sum-degrees--598b69f5c5dd517fe6278053.md) | 83 | `result-track:598b69f5c5dd517fe6278053329e36e27701b7577e7a7aa23e262a08faa085ae` |
| 4 | `theorem` | [Dart.edge_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-edge-fiber--20e58870e8b2e6f4958f2708.md) | 91 | `result-track:20e58870e8b2e6f4958f2708c96cc75fd65a3d55d4042065998e60d5270cfab0` |
| 5 | `theorem` | [dart_edge_fiber_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-edge-fiber-card--2bf20f2127fa7e07816f2b76.md) | 98 | `result-track:2bf20f2127fa7e07816f2b76826f4324c10901190b17551b2cc80eddde8766f5` |
| 6 | `theorem` | [dart_card_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/dart-card-eq-twice-card-edges--4f58b62ac827db706e326916.md) | 108 | `result-track:4f58b62ac827db706e326916adc4c2eaeba33e93f70313f1d91e7862801d55dd` |
| 7 | `theorem` | [sum_degrees_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/sum-degrees-eq-twice-card-edges--72456c1a32cef9e824e76ddf.md) | 120 | `result-track:72456c1a32cef9e824e76ddf1a672f7e5712f2aecc129d59a870afb071df021f` |
| 8 | `theorem` | [even_card_odd_degree_vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/even-card-odd-degree-vertices--1fe6097a3d4d4ff6ad6fa345.md) | 127 | `result-track:1fe6097a3d4d4ff6ad6fa345c74e679805b2bd6552f0926bcac9bf26d740d701` |
| 9 | `theorem` | [odd_card_odd_degree_vertices_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/odd-card-odd-degree-vertices-ne--2341a6d7f87a7a6a8d2beec7.md) | 144 | `result-track:2341a6d7f87a7a6a8d2beec791a0ac2357fc7ad5e8213bfc6a0d1d6ef8ab8169` |
| 10 | `theorem` | [exists_ne_odd_degree_of_exists_odd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variantd4b469430667a2454eb740d55309e0142c4635e01960df2959c0d99b4f7446d9.lean/declarations/exists-ne-odd-degree-of-exists-odd-degree--6401373f3c9b31c5d7bc9279.md) | 166 | `result-track:6401373f3c9b31c5d7bc92798a5625f189f3ffe9ed0a8c3f1a513698c151ab5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
