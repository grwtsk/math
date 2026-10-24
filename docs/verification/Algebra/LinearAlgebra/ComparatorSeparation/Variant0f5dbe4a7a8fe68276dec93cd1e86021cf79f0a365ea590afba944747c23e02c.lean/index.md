# Verification target: GRWTSK.Algebra.LinearAlgebra.ComparatorSeparation.Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2c432a10a2d59d6176648ac2b768fe0be896498",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2c432a10a2d59d6176648ac2b768fe0be896498`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InterventionDefect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearComparator](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/linearcomparator--a4f6ddb9a40cd323edd601e9.md) | 46 | `declaration-track:a4f6ddb9a40cd323edd601e9728cd69a646fbfc4274b3e8231fed5a6964ebdfc` |
| 2 | `def` | [responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/responsedifference--bd5719c85d51ff16c6617318.md) | 54 | `declaration-track:bd5719c85d51ff16c6617318a78d81176e26a975d4b8a58c758cf903db778cd2` |
| 3 | `theorem` | [responseDifference_apply](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/responsedifference-apply--ac858f4dd876fb3eb4af30a3.md) | 60 | `result-track:ac858f4dd876fb3eb4af30a3ea77f0fb523c859e0a5ee3c64f44e5c2953f3342` |
| 4 | `def` | [comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap--48f6af7736559762a7c254e3.md) | 67 | `declaration-track:48f6af7736559762a7c254e39625728bff722c35ff279fb4006ae53981967b29` |
| 5 | `theorem` | [comparatorGap_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap-nonnegative--5085159255b54dbb55903adc.md) | 72 | `result-track:5085159255b54dbb55903adcfa2794bec96c7220596520c909d4d7ce62844fb1` |
| 6 | `theorem` | [comparatorGap_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap-pos-iff--39839511d5cc625d4fb21d70.md) | 79 | `result-track:39839511d5cc625d4fb21d70b52fe1addaa5b4877e0d5e358f2bf308a0f9a708` |
| 7 | `theorem` | [comparatorGap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap-eq-zero-iff--5b81f439c8ee99e3bd6adf8f.md) | 85 | `result-track:5b81f439c8ee99e3bd6adf8f2febda792f578ca54f0a98d70c0c10e569b919da` |
| 8 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/zero--50d88c3603a78a8ae2c47e08.md) | 91 | `declaration-track:50d88c3603a78a8ae2c47e08023ea7edd6aa60ff2fafca5916ab8d96f0b652a6` |
| 9 | `theorem` | [zero_readout](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/zero-readout--d76d5592261b8b112515c599.md) | 95 | `result-track:d76d5592261b8b112515c599b4dcfe1fe345cc67e2ee81ed9faba322a89c5731` |
| 10 | `theorem` | [zero_responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/zero-responsedifference--dc377dabacf1ca56417a74ec.md) | 99 | `result-track:dc377dabacf1ca56417a74ec6507837f4faef4d71a83103c41883ddc8edbb0d2` |
| 11 | `theorem` | [zero_comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/zero-comparatorgap--e0da116ec5c2ec2d13c4fb36.md) | 105 | `result-track:e0da116ec5c2ec2d13c4fb364e85cf75a90e46de19836bcda721bc8360d0d0ac` |
| 12 | `def` | [interventionSensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/interventionsensitivity--bcb9eca12a16c38b5b56b698.md) | 117 | `declaration-track:bcb9eca12a16c38b5b56b698cb56bf80e6262f3e760dd0227da60c6311fd3dce` |
| 13 | `theorem` | [interventionSensitivity_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/interventionsensitivity-nonnegative--59b9bff9272e633604e28777.md) | 122 | `result-track:59b9bff9272e633604e28777c250c6009fec687a7ffe884b73474f0aac90fd7f` |
| 14 | `theorem` | [interventionSensitivity_pos_iff_visible](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/interventionsensitivity-pos-iff-visible--ba2d79d15ba47933c47248c5.md) | 128 | `result-track:ba2d79d15ba47933c47248c5c321a4fbafbba992daec0c635a3a191c39f76534` |
| 15 | `def` | [ComparatorSectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorsectorcomplete--3cf60cdd032abc01948755e1.md) | 136 | `declaration-track:3cf60cdd032abc01948755e154c561981dbd3a6b80986e4f3ba52a2c0bb21c7d` |
| 16 | `theorem` | [zeroComparator_sectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/zerocomparator-sectorcomplete--c1959235118db2156834ac5e.md) | 142 | `result-track:c1959235118db2156834ac5e8f228e4d18add593bcbcd691bda26bb5193b3916` |
| 17 | `theorem` | [responseDifference_eq_projected](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/responsedifference-eq-projected--6532517af2fc7c8627c46ce0.md) | 149 | `result-track:6532517af2fc7c8627c46ce093460fc55172b3c0737e4636b2ef6df0552bd1ed` |
| 18 | `theorem` | [comparatorGap_eq_projected_sq](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap-eq-projected-sq--3cd578a3d1f1a4d61f69f586.md) | 159 | `result-track:3cd578a3d1f1a4d61f69f586461c486c4938cc2774ce163c72799ca833fef88a` |
| 19 | `def` | [ComparatorDetectsAt](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatordetectsat--15d6aab549014dfbb8096dbf.md) | 167 | `declaration-track:15d6aab549014dfbb8096dbfe500015aa648a86ff3231c96832b0a11d9b19a67` |
| 20 | `theorem` | [comparatorGap_pos_of_sectorComplete_detects](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorgap-pos-of-sectorcomplete-detects--2620615331d4b6d880e349ba.md) | 173 | `result-track:2620615331d4b6d880e349ba3ee53ff80645a979844d047e3fc42ec6352994df` |
| 21 | `def` | [ComparatorCompleteFor](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/comparatorcompletefor--1c6befade30aa66e02c145aa.md) | 184 | `declaration-track:1c6befade30aa66e02c145aac588aba2b53b0cea5ad866bdaa07ad191f51b99d` |
| 22 | `theorem` | [positive_sensitivity_implies_positive_gap_of_complete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/positive-sensitivity-implies-positive-gap-of-complete--eb724e9d1eb8b13965f905f0.md) | 192 | `result-track:eb724e9d1eb8b13965f905f07d14e0af4f8708b680cbf66082b65cf20642f728` |
| 23 | `theorem` | [positive_sensitivity_sectorComplete_zero_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/positive-sensitivity-sectorcomplete-zero-gap--86a19d315e6faf1d447fefa7.md) | 204 | `result-track:86a19d315e6faf1d447fefa7125ff44f5c99d7dfc9c247d7162c94287a8be5cc` |
| 24 | `theorem` | [positive_sensitivity_zero_comparator_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/positive-sensitivity-zero-comparator-gap--49c679e4af5f1d6cee045bf0.md) | 215 | `result-track:49c679e4af5f1d6cee045bf0e741b7660752b153469c2aa1d28069d16f5ff167` |
| 25 | `theorem` | [not_all_comparators_separate_of_positive_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variant0f5dbe4a7a8fe68276dec93cd1e86021cf79f0a365ea590afba944747c23e02c.lean/declarations/not-all-comparators-separate-of-positive-sensitivity--34e795b31d4488d2aec96e0a.md) | 224 | `result-track:34e795b31d4488d2aec96e0af9bb265d533ee2bf1d7e22b206428de5bb2ab5ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
