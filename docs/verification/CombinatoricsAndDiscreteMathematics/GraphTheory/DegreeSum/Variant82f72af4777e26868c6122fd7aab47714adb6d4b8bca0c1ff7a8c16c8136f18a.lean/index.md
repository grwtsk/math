# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DegreeSum.Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b42dc30729444fcf5ef1bef6d6e6d2e2ab91068",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b42dc30729444fcf5ef1bef6d6e6d2e2ab91068`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Dart` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dart_fst_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-fst-fiber--3508c166982446fc365e3cb7.md) | 52 | `result-track:3508c166982446fc365e3cb78a032984c8873bda8fb6adf9f1c06cc45b2b41f7` |
| 2 | `theorem` | [dart_fst_fiber_card_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-fst-fiber-card-eq-degree--c0888c0e3989d6eb6dabfae6.md) | 62 | `result-track:c0888c0e3989d6eb6dabfae67dddd2f7f0507aa1e6b5289b790f83fb73ac3361` |
| 3 | `theorem` | [dart_card_eq_sum_degrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-card-eq-sum-degrees--012b3ad7a2bf8e2e49ce400c.md) | 67 | `result-track:012b3ad7a2bf8e2e49ce400c2405bc8530c618cc325c6c28fe159041567efb46` |
| 4 | `theorem` | [Dart.edge_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-edge-fiber--51e0f75712acd7514b2b2a6d.md) | 73 | `result-track:51e0f75712acd7514b2b2a6d80b774f58618bb732a2ffa239edc1f4e1846d00c` |
| 5 | `theorem` | [dart_edge_fiber_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-edge-fiber-card--cc6eeeda81286a8d67b2a8f9.md) | 77 | `result-track:cc6eeeda81286a8d67b2a8f92f4f68521ab5c26142e6ad88f3c07ac89bd8c40e` |
| 6 | `theorem` | [dart_card_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/dart-card-eq-twice-card-edges--183fbb710ebf300e1bf667db.md) | 86 | `result-track:183fbb710ebf300e1bf667db542de1ed896ec2518465c1178b2db1670635c111` |
| 7 | `theorem` | [sum_degrees_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/sum-degrees-eq-twice-card-edges--a0f1edc2fec290e7c25dea36.md) | 98 | `result-track:a0f1edc2fec290e7c25dea361d4273adbbdabc52cf7e6ba5fda6fcc5c17c178e` |
| 8 | `lemma` | [two_mul_card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/two-mul-card-edgefinset--4a76868fe581998b2a9ec883.md) | 101 | `result-track:4a76868fe581998b2a9ec88338632c5b207e0ee624c7876bba5b5c69c23b0d48` |
| 9 | `theorem` | [sum_degrees_support_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/sum-degrees-support-eq-twice-card-edges--8526aef916a229b56f539aea.md) | 109 | `result-track:8526aef916a229b56f539aeab527d47c0544a5b3d03c74d3d8564426ca276b8e` |
| 10 | `theorem` | [even_card_odd_degree_vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/even-card-odd-degree-vertices--bf4d1721801b23a3ef8eabb6.md) | 122 | `result-track:bf4d1721801b23a3ef8eabb65e39fed90894788cd6e040fd93c62aaf2a366e7e` |
| 11 | `theorem` | [odd_card_odd_degree_vertices_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/odd-card-odd-degree-vertices-ne--6a9ec0744eadc7788244289a.md) | 138 | `result-track:6a9ec0744eadc7788244289ae4778f99417898340a218966a477d4df2e078d90` |
| 12 | `theorem` | [exists_ne_odd_degree_of_exists_odd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant82f72af4777e26868c6122fd7aab47714adb6d4b8bca0c1ff7a8c16c8136f18a.lean/declarations/exists-ne-odd-degree-of-exists-odd-degree--91867cf7e97ee837456f4b84.md) | 159 | `result-track:91867cf7e97ee837456f4b84e574696fb78eaf40ce2d1d3792aef8e2ce287c92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
