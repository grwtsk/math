# Verification target: GRWTSK.Algebra.PolygonalQuarticSplitting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "562bd38c5dd2f696177d3070a952d49a02c86338",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolygonalQuarticSplitting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/index.md) · [Full source](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `562bd38c5dd2f696177d3070a952d49a02c86338`.

Source path: `GRWTSK/Algebra/PolygonalQuarticSplitting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolygonalQuarticSplitting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticDescent`](../../../mathematics/Algebra/PolygonalQuarticDescent.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mappedQuartic](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/mappedquartic--7d1b23cb9aae3dbb1761ec6e.md) | 36 | `declaration-track:7d1b23cb9aae3dbb1761ec6e85cad424b26b5015cbf5dcf627648afbb581e743` |
| 2 | `structure` | [QuarticRootEnumeration](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/quarticrootenumeration--06db18b707b9d2e1348cffda.md) | 41 | `declaration-track:06db18b707b9d2e1348cffda9b45dd74fa46734e9027a50e4a525f3b167f2e20` |
| 3 | `theorem` | [enumeration_of_root_card_four](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/enumeration-of-root-card-four--3a858f0580986180d95fce71.md) | 49 | `result-track:3a858f0580986180d95fce716404e6440699c3a64ad45d4a6943beb9cb50c68f` |
| 4 | `theorem` | [enumeration_of_splitting_quartic](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/enumeration-of-splitting-quartic--5d7aefd233a8cd4d608a0856.md) | 58 | `result-track:5d7aefd233a8cd4d608a08565e38c9e8b4b3456f98d4b522a8e8488d5722205b` |
| 5 | `theorem` | [factorization_of_root_enumeration](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/factorization-of-root-enumeration--9dca898fe4af254554305fd5.md) | 68 | `result-track:9dca898fe4af254554305fd5267dbb1ab6f96d24f37484080c25bb59fee6f2dc` |
| 6 | `theorem` | [monic_factorization_of_root_enumeration](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/monic-factorization-of-root-enumeration--3f04695752ad3623962b5927.md) | 81 | `result-track:3f04695752ad3623962b5927586ed916f330cbadb6c50f9b47aff65476ac702b` |
| 7 | `theorem` | [resolvent_of_mapped_quartic](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/resolvent-of-mapped-quartic--8b961561d8bb339083e0535a.md) | 93 | `result-track:8b961561d8bb339083e0535a3a68625972ac93a9c7f693740c3310ea5bad9124` |
| 8 | `theorem` | [resolvent_relabel](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/resolvent-relabel--a79a602fc68f30e60bd59237.md) | 108 | `result-track:a79a602fc68f30e60bd59237e43df42538cf5c886f4d1cb4677f4a083f2f922c` |
| 9 | `theorem` | [mappedQuartic_natDegree](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/mappedquartic-natdegree--1b207d786c714b4f249f6600.md) | 116 | `result-track:1b207d786c714b4f249f6600aefcb222bff7054a54c55cfe98dbaef49c685b7d` |
| 10 | `theorem` | [enumeration_of_splitting_degree_four](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/enumeration-of-splitting-degree-four--edc1ff2b3f28546c7fe2971b.md) | 121 | `result-track:edc1ff2b3f28546c7fe2971b87602494a1c75e0fb74befd1842454ebc901b4bd` |
| 11 | `theorem` | [enumeration_injective_of_separable](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/enumeration-injective-of-separable--c4dda60362cc0c1747709756.md) | 130 | `result-track:c4dda60362cc0c17477097566caa75729edc41042b8de26fc92d78ef67890c82` |
| 12 | `theorem` | [distinct_enumeration_of_splitting_degree_four](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/distinct-enumeration-of-splitting-degree-four--96bc3082cd0935abffb3f77a.md) | 142 | `result-track:96bc3082cd0935abffb3f77af9931acd6f8496ae579977006677e5590f666c94` |
| 13 | `theorem` | [distinct_enumeration_in_splitting_field](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/distinct-enumeration-in-splitting-field--8c180995fb700b7d36ed8894.md) | 151 | `result-track:8c180995fb700b7d36ed8894db00f5302647102eb66748272f4bdde2a792345e` |
| 14 | `theorem` | [enumerations_related_by_permutation](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/enumerations-related-by-permutation--19f9495a8884e70cfbe3cda7.md) | 160 | `result-track:19f9495a8884e70cfbe3cda7ede9d2d5e2ac730f7613365ce1c6256c5ae2b124` |
| 15 | `theorem` | [resolvent_independent_of_enumeration](../../../mathematics/Algebra/PolygonalQuarticSplitting.lean/declarations/resolvent-independent-of-enumeration--c1607fd943301273654f1360.md) | 183 | `result-track:c1607fd943301273654f1360cd2e033785cc1ed1c79b4e932e183385a2f912b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
