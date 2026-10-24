# Verification target: GRWTSK.NumberTheory.Moebius.FinitePrimeProductDebt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8306cc01af4928e3056636576250f63490b8522",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8306cc01af4928e3056636576250f63490b8522`.

Source path: `GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FinitePrimeProductDebt.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteTranslationProduct`](../../../../mathematics/NumberTheory/Moebius/FiniteTranslationProduct.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialWeight](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/exponentialweight--dea0b400c4e71c28079317df.md) | 28 | `declaration-track:dea0b400c4e71c28079317df02212d062c6a5e3350c839ecd21275fd7c3c858a` |
| 2 | `def` | [rawPrimeProduct](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/rawprimeproduct--ebe590253c9f2dc4cb4199f7.md) | 32 | `declaration-track:ebe590253c9f2dc4cb4199f72489bc26e9b44586cfa4c357cd5946293b5eeced` |
| 3 | `def` | [unbornDebt](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/unborndebt--ca58c4fc55d4118aac5eb52e.md) | 37 | `declaration-track:ca58c4fc55d4118aac5eb52ec692378dd09862d63fbec32cdce6a90bece75980` |
| 4 | `def` | [dirichletPrefix](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/dirichletprefix--53ac6e8a6f7716bf5ebce9ac.md) | 43 | `declaration-track:53ac6e8a6f7716bf5ebce9ac8549fba688b3e51b983d7c1a655285c881b49208` |
| 5 | `theorem` | [exponentialWeight_mul](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/exponentialweight-mul--4b96dd093b11730daeabeb8d.md) | 47 | `result-track:4b96dd093b11730daeabeb8d9a05dab008b5d96d7b489c4bdcc02a724ca2717c` |
| 6 | `theorem` | [exponentialWeight_primeProduct](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/exponentialweight-primeproduct--3e03063edd5ef29d7bc1decf.md) | 55 | `result-track:3e03063edd5ef29d7bc1decfb04f1814ff2684d9d86611fb0b89bb0975882cf8` |
| 7 | `theorem` | [rawPrimeProduct_expansion](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/rawprimeproduct-expansion--5922bcf137acefcb7d993f7a.md) | 72 | `result-track:5922bcf137acefcb7d993f7a2dec5b6835d978e359449bf42115dc3eda6041cd` |
| 8 | `theorem` | [subset_squarefree_reindex](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/subset-squarefree-reindex--535d57c22dcc4ef752518974.md) | 88 | `result-track:535d57c22dcc4ef7525189748ae90062e123356d74ab3cc0c54f94f7fa0e48c9` |
| 9 | `theorem` | [bornSubsetSum_eq_dirichletPrefix](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/bornsubsetsum-eq-dirichletprefix--ebb4569cb0aea4bb7759c13f.md) | 122 | `result-track:ebb4569cb0aea4bb7759c13f6a610e6c2b960aa835de77369faeeddd1ee57525` |
| 10 | `theorem` | [rawPrimeProduct_eq_prefix_add_debt](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/rawprimeproduct-eq-prefix-add-debt--0175c12dad56c9bf22b66d31.md) | 138 | `result-track:0175c12dad56c9bf22b66d31c98ccae5d107774f660fc3e10b4372b6a12864db` |
| 11 | `theorem` | [dirichletPrefix_eq_pickupDirichletPrefix](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/dirichletprefix-eq-pickupdirichletprefix--ca1a5876f28008a5398be262.md) | 159 | `result-track:ca1a5876f28008a5398be262b384f07fbab082ad19c45c34edb123f01b3769a6` |
| 12 | `theorem` | [rawPrimeProduct_eq_pickupPrefix_add_debt](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/rawprimeproduct-eq-pickupprefix-add-debt--9abcb70b0bc448599ad0c59c.md) | 168 | `result-track:9abcb70b0bc448599ad0c59c76e0d080b2debd88c66c818b38204d46bb564b8c` |
| 13 | `theorem` | [rawPrimeProduct_zero](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/rawprimeproduct-zero--8d3ef57a61e6b79d432df5e1.md) | 174 | `result-track:8d3ef57a61e6b79d432df5e179aaad47af3dba5464481df6b77e234d29a5e0c9` |
| 14 | `theorem` | [pickupDirichletPrefix_zero](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/pickupdirichletprefix-zero--3c908d3f72ea939417393221.md) | 180 | `result-track:3c908d3f72ea939417393221ecb5484d4362963acef6505cc36c7780f29146df` |
| 15 | `theorem` | [unbornDebt_zero](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/unborndebt-zero--ac0bfb4b8884134e258c6858.md) | 189 | `result-track:ac0bfb4b8884134e258c685862083483e0139b6341428249161a574662c782b7` |
| 16 | `def` | [cutoffCorrection](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/cutoffcorrection--a66bbba4e6f00d62478fae9e.md) | 198 | `declaration-track:a66bbba4e6f00d62478fae9ea61d4ad52a98fb7566982d3aa052a5165620c1b5` |
| 17 | `theorem` | [wholePickup_cutoff_laplace_prime_product](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/wholepickup-cutoff-laplace-prime-product--233cea2d3d9380af0657b0fb.md) | 207 | `result-track:233cea2d3d9380af0657b0fbace880cc3f376db493c5b57b89325e17d19032d5` |
| 18 | `theorem` | [unborn_atom_zero](../../../../mathematics/NumberTheory/Moebius/FinitePrimeProductDebt.lean/declarations/unborn-atom-zero--8fe5590a14c55f47223a3506.md) | 226 | `result-track:8fe5590a14c55f47223a3506eef6e5862aa505f79cec52f7fad33567611ab150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
