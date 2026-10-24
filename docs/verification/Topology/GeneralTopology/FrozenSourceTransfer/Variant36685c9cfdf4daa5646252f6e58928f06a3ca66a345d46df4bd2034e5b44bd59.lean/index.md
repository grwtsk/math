# Verification target: GRWTSK.Topology.GeneralTopology.FrozenSourceTransfer.Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb3a4e05d3ee70ba135372f1237d9522a157470",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb3a4e05d3ee70ba135372f1237d9522a157470`.

Source path: `GRWTSK/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transferProduct](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/transferproduct--39d0c72ab063a156c56b4e94.md) | 13 | `declaration-track:39d0c72ab063a156c56b4e9478e5838ece35ef1e5a7b38a9c33499496bec86eb` |
| 2 | `def` | [removedPoleValue](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/removedpolevalue--0c20d05502fed047c4b777a5.md) | 17 | `declaration-track:0c20d05502fed047c4b777a5afc4097e775a13f10be435420d6982b781eccec1` |
| 3 | `theorem` | [positive_pole_shift_tendsto](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/positive-pole-shift-tendsto--bc9b485b78dfa183caa0a262.md) | 20 | `result-track:bc9b485b78dfa183caa0a262de67190e8f8dcb524fc11fb89b7ff028f4d533b7` |
| 4 | `theorem` | [shifted_zeta_residue](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/shifted-zeta-residue--0b15ee111169b53fc1f2d0d1.md) | 36 | `result-track:0b15ee111169b53fc1f2d0d1f6bf00e7707601f51490d6fe58df22780bd720f8` |
| 5 | `theorem` | [transferProduct_removed_pole_limit](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/transferproduct-removed-pole-limit--3ce7c15db87a47152939f216.md) | 46 | `result-track:3ce7c15db87a47152939f21615cca4f87e757aa9cd79cf01758db12d4bb68a20` |
| 6 | `def` | [repairedTransfer](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer--cd1e12d58556c6391b7d208a.md) | 65 | `declaration-track:cd1e12d58556c6391b7d208a9e22b47c9049e339acdd7a389783bc855680de5d` |
| 7 | `theorem` | [repairedTransfer_at_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-at-pole--cd1adc9fb1cb6f84b0292262.md) | 70 | `result-track:cd1adc9fb1cb6f84b02922629fd792524c5bdee6cae6b25f6a2e562b36c6b395` |
| 8 | `theorem` | [repairedTransfer_eq_product](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-eq-product--3eafba26df178e3d8b429857.md) | 75 | `result-track:3eafba26df178e3d8b429857587eb4c72e6a37198379fd7359be95bc82db0737` |
| 9 | `theorem` | [repairedTransfer_continuousAt_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-continuousat-pole--fbdf2b81635d9a7022521629.md) | 81 | `result-track:fbdf2b81635d9a702252162940313e9a31a0dfd5af5f2c2b9fbe43acd4277063` |
| 10 | `theorem` | [removedPoleValue_ne_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/removedpolevalue-ne-zero--c52d284d4986991b89cae9e7.md) | 86 | `result-track:c52d284d4986991b89cae9e70c1eacf393279fa2269b45b7e5e0f1d72d05d2ca` |
| 11 | `theorem` | [repairedTransfer_pole_ne_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-pole-ne-zero--ae2fbe89cf00ca166ed76359.md) | 91 | `result-track:ae2fbe89cf00ca166ed763590fa4a427df03c9c10a03cbf0778e50df53706903` |
| 12 | `theorem` | [repairedTransfer_zero_of_zeta_zero](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-zero-of-zeta-zero--fffd0c01da2142418267bceb.md) | 96 | `result-track:fffd0c01da2142418267bceb26eb312940ce4078f959df04c6eadf81127f2cc0` |
| 13 | `theorem` | [repairedTransfer_zero_of_nontrivial](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-zero-of-nontrivial--9fb1541e52ee41763804a5e0.md) | 107 | `result-track:9fb1541e52ee41763804a5e021cf194fef42f10463534fb2c7a14e49bbba1c83` |
| 14 | `theorem` | [repairedTransfer_zero_occurrence](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/repairedtransfer-zero-occurrence--4fb714a14021c9e0e8e751f5.md) | 113 | `result-track:4fb714a14021c9e0e8e751f5c1d469b39c48b1e32580fa14cfd16cc713cbd4f1` |
| 15 | `theorem` | [finite_factor_product_at_pole](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/finite-factor-product-at-pole--1a25ff80df7597dbae1cbf0f.md) | 121 | `result-track:1a25ff80df7597dbae1cbf0f20b1865d887de75ea9105053e1c7644fd769f18a` |
| 16 | `theorem` | [finite_factor_product_limit](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/finite-factor-product-limit--3893c254b311db902eff117a.md) | 126 | `result-track:3893c254b311db902eff117ac9e654bfd161a731e1c48ffe49847440e0a96d4e` |
| 17 | `theorem` | [finite_factor_pole_discrepancy](../../../../../mathematics/Topology/GeneralTopology/FrozenSourceTransfer/Variant36685c9cfdf4daa5646252f6e58928f06a3ca66a345d46df4bd2034e5b44bd59.lean/declarations/finite-factor-pole-discrepancy--de37701dde0991d5eb867acd.md) | 134 | `result-track:de37701dde0991d5eb867acd5e67719d3fc53aec1323a39375eeb393f3069a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
