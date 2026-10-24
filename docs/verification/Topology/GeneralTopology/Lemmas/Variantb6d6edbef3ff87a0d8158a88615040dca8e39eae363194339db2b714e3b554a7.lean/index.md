# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16e0bb058bc607baf07f47717d75da382ede54b4`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.isTopologicalBasis_Ioo_rat](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-istopologicalbasis-ioo-rat--cb698bc11e60cc3c4869dbc3.md) | 26 | `result-track:cb698bc11e60cc3c4869dbc3980007ae5a5f9dab6a87755d8f3f1b4b41428b23` |
| 2 | `theorem` | [Real.cobounded_eq](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-cobounded-eq--50e36d459327b972573e6eb7.md) | 39 | `result-track:50e36d459327b972573e6eb7d7ee601b35050c36cd3a22a5a16e8505df36bacb` |
| 3 | `theorem` | [Real.mem_closure_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-mem-closure-iff--f3e340d675182be2eace9aae.md) | 48 | `result-track:f3e340d675182be2eace9aae5bb85813b9a087b881e844be1a123f4591cafc79` |
| 4 | `theorem` | [Real.uniformContinuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-uniformcontinuous-inv--37d6af58ad27eaa16773846e.md) | 52 | `result-track:37d6af58ad27eaa16773846ef1d168a8eecee0014594ee9f8c115af7d215a959` |
| 5 | `theorem` | [Real.uniformContinuous_abs](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-uniformcontinuous-abs--d76c552780e55ee5cae62578.md) | 58 | `result-track:d76c552780e55ee5cae62578db30edb54a7f4f8d66799ca141077e8e1c1d8e3d` |
| 6 | `theorem` | [Real.continuous_inv](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-continuous-inv--2eb8316b3f500a7d1bae1263.md) | 62 | `result-track:2eb8316b3f500a7d1bae12638a6c0e60d6301cda19a6b59436e31268efc3d042` |
| 7 | `theorem` | [Real.uniformContinuous_mul](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-uniformcontinuous-mul--a50aa997c9d53f83b8801c20.md) | 65 | `result-track:a50aa997c9d53f83b8801c20b997a4eb7efe0212ab0f00c4e0361e47857a5ab9` |
| 8 | `theorem` | [Real.totallyBounded_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-totallybounded-ball--d5da12e8fe90c5abe71fccfe.md) | 74 | `result-track:d5da12e8fe90c5abe71fccfefeba99b30b9dccf810a08d5bc511c32a9b4494ed` |
| 9 | `theorem` | [Real.subfield_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-subfield-eq-of-closed--e0c90e9958d84559610d24ba.md) | 77 | `result-track:e0c90e9958d84559610d24bae11f42e1d979713f768440226a2c970d71c81df5` |
| 10 | `theorem` | [Real.exists_seq_rat_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-exists-seq-rat-strictmono-tendsto--ca392d61fce3a8c23afca107.md) | 83 | `result-track:ca392d61fce3a8c23afca107b646e40cef35c2b1280e90100ae41e3074530369` |
| 11 | `theorem` | [Real.exists_seq_rat_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/real-exists-seq-rat-strictanti-tendsto--39e564fd2ba1a4fc63d2e9c1.md) | 87 | `result-track:39e564fd2ba1a4fc63d2e9c1a8d8eba043c514f86cc06e74d262bd41d6ef3c81` |
| 12 | `theorem` | [closure_of_rat_image_lt](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/closure-of-rat-image-lt--058ae68cb8722a0ff7c0c643.md) | 93 | `result-track:058ae68cb8722a0ff7c0c643ce6cec8fbb0619bb2be0630d985024a569427736` |
| 13 | `theorem` | [Periodic.compact_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/periodic-compact-of-continuous--92576a9df2d8ba8521f9ae3c.md) | 120 | `result-track:92576a9df2d8ba8521f9ae3c388f85e04fdd7e79f10e2a15c0cbe6cf4b99d651` |
| 14 | `theorem` | [Periodic.isBounded_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/declarations/periodic-isbounded-of-continuous--1943035b6d225268bcde0a9e.md) | 126 | `result-track:1943035b6d225268bcde0a9e9029472f8b4215c087cb6d42d97f9cedee2160ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
