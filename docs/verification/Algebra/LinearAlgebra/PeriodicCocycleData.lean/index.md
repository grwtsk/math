# Verification target: GRWTSK.LinearAlgebra.PeriodicCocycleData

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff6f0d46062815a8a21c34cefd3debb6bcda6517",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/PeriodicCocycleData.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff6f0d46062815a8a21c34cefd3debb6bcda6517`.

Source path: `GRWTSK/LinearAlgebra/PeriodicCocycleData.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/PeriodicCocycleData.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.CocycleProduct`](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPureCoboundary](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/ispurecoboundary--d5df211cf07c67380b6a6603.md) | 57 | `declaration-track:d5df211cf07c67380b6a6603f1923b68c0dfea05d13d4e8dd3ed88ebfa50b1c6` |
| 2 | `theorem` | [cocycleProduct_one](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/cocycleproduct-one--9c1dbf120eea5ff65a271b7a.md) | 62 | `result-track:9c1dbf120eea5ff65a271b7ae632ccdc91ebe084f302693ab608231577cf903a` |
| 3 | `theorem` | [pureCoboundary_product](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/purecoboundary-product--45fd205888ca3d398a9631f7.md) | 73 | `result-track:45fd205888ca3d398a9631f7ad4eda779e4e61619cec007313620ffaea20cd4e` |
| 4 | `theorem` | [pureCoboundary_periodic_identity](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/purecoboundary-periodic-identity--133c3fc14d0808469d624320.md) | 89 | `result-track:133c3fc14d0808469d624320b198569a40b2bd8215239503bdefa63697093892` |
| 5 | `theorem` | [nontrivial_periodic_product_not_coboundary](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/nontrivial-periodic-product-not-coboundary--f52feb41a61faebedbb18c48.md) | 104 | `result-track:f52feb41a61faebedbb18c480d5216b1a4ff0beb5a47c40d9b4c7e979ce67bb0` |
| 6 | `theorem` | [periodic_gauge_product_conjugate](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/periodic-gauge-product-conjugate--d7dd113281cd27086ff17403.md) | 116 | `result-track:d7dd113281cd27086ff17403851c8ec814fe24d674fca77cee1d7c124b7c8000` |
| 7 | `theorem` | [periodic_gauge_product_one_iff](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/periodic-gauge-product-one-iff--5f93b7dd4efd86db7937d3d9.md) | 126 | `result-track:5f93b7dd4efd86db7937d3d93cd6b07e0632ecd30638eb17b12f564343bbc519` |
| 8 | `theorem` | [periodic_nontrivial_persists_under_gauge](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/periodic-nontrivial-persists-under-gauge--9b63df2cffc19062f415b0cd.md) | 143 | `result-track:9b63df2cffc19062f415b0cd96df8e13258db837f7286267e29bc86d700671b8` |
| 9 | `theorem` | [no_gauge_trivializes_nontrivial_period](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/declarations/no-gauge-trivializes-nontrivial-period--c7333bb547d187d1148a7158.md) | 154 | `result-track:c7333bb547d187d1148a71582c105ef2731cb98f07e2ca5ae7e016466cd1268f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
