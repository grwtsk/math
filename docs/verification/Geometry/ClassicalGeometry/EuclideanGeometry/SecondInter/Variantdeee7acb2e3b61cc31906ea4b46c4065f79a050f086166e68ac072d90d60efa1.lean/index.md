# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SecondInter.Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1e7d7c997e835176f57fab2a54aaa83fe19c53",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1e7d7c997e835176f57fab2a54aaa83fe19c53`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sphere.secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter--c488f4a5b1491a71c44760a8.md) | 35 | `declaration-track:c488f4a5b1491a71c44760a894a0ae6b222d0c6d98d924c78b2493c4222f38bb` |
| 2 | `theorem` | [Sphere.secondInter_dist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-dist--46ddb786dbc0bb55610d444d.md) | 41 | `result-track:46ddb786dbc0bb55610d444d12d628f7d7a019b7057852e7514f548e018b9aa3` |
| 3 | `theorem` | [Sphere.secondInter_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-mem--86163fb470935dd758bafe6d.md) | 50 | `result-track:86163fb470935dd758bafe6dada5f0bfc872bbc7381b6b9c3de60572b10e28e7` |
| 4 | `theorem` | [Sphere.secondInter_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-zero--51f1b4f18ed89853169b741d.md) | 56 | `result-track:51f1b4f18ed89853169b741dfa011bea0b5898402239d3a6473836a9c565cdfa` |
| 5 | `theorem` | [Sphere.secondInter_eq_self_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-eq-self-iff--9dcf0aa90e96c4d3dcade733.md) | 61 | `result-track:9dcf0aa90e96c4d3dcade733156c897d4b3e3890c240c562b5f24663cb7b5a1a` |
| 6 | `theorem` | [Sphere.eq_or_eq_secondInter_of_mem_mk'_span_singleton_iff_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-eq-or-eq-secondinter-of-mem-mk-span-singleton-iff-mem--ee752c9ceb7007ad4888a0c0.md) | 72 | `result-track:ee752c9ceb7007ad4888a0c0e30bca632852ce7536eec6d756172a1cfebb0052` |
| 7 | `theorem` | [Sphere.secondInter_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-smul--0dc4085a148f15fc0b6953e3.md) | 92 | `result-track:0dc4085a148f15fc0b6953e3945c10f9776d05f185954905c7b21c002dcfa511` |
| 8 | `theorem` | [Sphere.secondInter_neg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-neg--1192ed3f0d05040e0c93e1c0.md) | 101 | `result-track:1192ed3f0d05040e0c93e1c028c6b5da9ef3f3229ae51b034cc3c39328a555f8` |
| 9 | `theorem` | [Sphere.secondInter_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-secondinter--dbf832940697f1fbdaf680da.md) | 107 | `result-track:dbf832940697f1fbdaf680da6819275f455075604c5efef7e7587d68691b0ae7` |
| 10 | `theorem` | [Sphere.secondInter_eq_lineMap](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-eq-linemap--044427185c3439fdb0623360.md) | 120 | `result-track:044427185c3439fdb0623360ee2e8eeecce1ded6a091fdfb608ed838312d3bb3` |
| 11 | `theorem` | [Sphere.secondInter_vsub_mem_affineSpan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-vsub-mem-affinespan--b80c911ed7155b1075d3e7c2.md) | 127 | `result-track:b80c911ed7155b1075d3e7c2ace82706cb20273d33cc4e23e11e115867cef2c3` |
| 12 | `theorem` | [Sphere.secondInter_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-secondinter-collinear--28f598a122c3ba9e3bcec35e.md) | 133 | `result-track:28f598a122c3ba9e3bcec35eefbf219d5bbc3945f18fb3108f67b89ea3261c23` |
| 13 | `theorem` | [Sphere.wbtw_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-wbtw-secondinter--f2c6eaca0d3cc2b6679db41c.md) | 143 | `result-track:f2c6eaca0d3cc2b6679db41cb7e45923436c77044b0be562cf723ccd3978566c` |
| 14 | `theorem` | [Sphere.sbtw_secondInter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SecondInter/Variantdeee7acb2e3b61cc31906ea4b46c4065f79a050f086166e68ac072d90d60efa1.lean/declarations/sphere-sbtw-secondinter--00ea6f4b3262baa40e7c5072.md) | 157 | `result-track:00ea6f4b3262baa40e7c50725641608e1917347befa8f56a8f26c5bd10e437b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
