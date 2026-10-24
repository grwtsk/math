# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddTorsor.Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc46b1e28b6f836aa82984f9fecaf93e2e52950a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc46b1e28b6f836aa82984f9fecaf93e2e52950a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/isorderedvadd--79aee9fc2c98159345079c44.md) | 66 | `declaration-track:79aee9fc2c98159345079c44aea2ed134cfc7d1f661728c9b2c77fa10fb56475` |
| 2 | `class` | [IsOrderedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/isorderedsmul--00566a11ca3348e7e335508a.md) | 74 | `declaration-track:00566a11ca3348e7e335508adb817726622279b610d1e8342b0a8ae80827f5d3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/instance--1ff2b8374a76c94f3cb76dd1.md) | 79 | `declaration-track:1ff2b8374a76c94f3cb76dd186b7f7569763eeafcde669cbfb9fa6c73cda1481` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/instance--0980f9797dbadee408b9ad4a.md) | 83 | `declaration-track:0980f9797dbadee408b9ad4ad057c76a044e87b6309eec520b3304c32e1f9756` |
| 5 | `theorem` | [IsOrderedSMul.smul_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/isorderedsmul-smul-le-smul--633dcaec7c6e41896163ffc8.md) | 88 | `result-track:633dcaec7c6e41896163ffc82b4b7e2de1a4e27c6147b0c95b7b5aa5bc246740` |
| 6 | `theorem` | [Monotone.smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/monotone-smul--d19d99b7a6487cd2eaf187ff.md) | 93 | `result-track:d19d99b7a6487cd2eaf187ff01a702169ecd9144f6e503240f2b92d8e58b6645` |
| 7 | `class` | [IsOrderedCancelVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/isorderedcancelvadd--9041c14a65609b09e66c9dd2.md) | 100 | `declaration-track:9041c14a65609b09e66c9dd282c4e3a4ea6411c20447ca5a246a5984658612f1` |
| 8 | `class` | [IsOrderedCancelSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/isorderedcancelsmul--072a62733a19f7f4652b50f4.md) | 108 | `declaration-track:072a62733a19f7f4652b50f463629ced0e68145b769fc3ffbb4b75e4350ecd50` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/instance--d808f8b00fc89b129895589a.md) | 114 | `declaration-track:d808f8b00fc89b129895589a998cb80108629766b1917f78dd865311fc0a0521` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/instance--adf37217de66db9e789f2800.md) | 122 | `declaration-track:adf37217de66db9e789f2800a446ca9338026fbd902ae6facc0fb03f1d5f19d4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/instance--45226b48d357c77b8e3f01b1.md) | 127 | `declaration-track:45226b48d357c77b8e3f01b1c36700b190767be70d9bb095f366653820cfa07c` |
| 12 | `theorem` | [smul_lt_smul_of_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/smul-lt-smul-of-le-of-lt--921d7ebf0607d29ba53b910a.md) | 134 | `result-track:921d7ebf0607d29ba53b910a5064c67f4b539f884801904fdc3a2eb3c073a53e` |
| 13 | `theorem` | [smul_lt_smul_of_lt_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant921bef617f245f71379a03828f7c5f83118f04733eb0c60a2de7b194c5d5ed98.lean/declarations/smul-lt-smul-of-lt-of-le--c8ebe856fad5b72666e93e8e.md) | 145 | `result-track:c8ebe856fad5b72666e93e8e6257452e5eae755e49248e78c9b90182a4a02a30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
