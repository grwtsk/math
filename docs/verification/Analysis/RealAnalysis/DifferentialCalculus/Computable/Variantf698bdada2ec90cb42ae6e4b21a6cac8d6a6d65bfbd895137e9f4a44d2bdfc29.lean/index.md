# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Computable.Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `747babc0407118a18da9ff930c8c65b2fc3ff6ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Correctness` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/expcore--19e70bc1d7f8e80c95d2d9fa.md) | 46 | `declaration-track:19e70bc1d7f8e80c95d2d9fa1367d306c1c85a96490aa6d0a317c49af1de39bb` |
| 2 | `def` | [sinCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/sincore--f033358b180a2b5fdb047462.md) | 52 | `declaration-track:f033358b180a2b5fdb047462c9d044308e1a4eed4df8c3987eede8d3ca6db5a5` |
| 3 | `def` | [cosCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/coscore--298fc9d2e8e162478a8487c8.md) | 57 | `declaration-track:298fc9d2e8e162478a8487c86a1dc4e7854ecf59df083651390b97489d804986` |
| 4 | `def` | [logCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/logcore--aa9d9ef617b8b387eb4c4a09.md) | 63 | `declaration-track:aa9d9ef617b8b387eb4c4a090ac5d7363322eed3649c0cfaa89e393461923ef2` |
| 5 | `def` | [sinhCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/sinhcore--19ad9436330d48c03d3f09bb.md) | 69 | `declaration-track:19ad9436330d48c03d3f09bbb56c7249fdbdb323464eddd1ab55a490372550f6` |
| 6 | `def` | [coshCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/coshcore--98ea1b6f598cfe062e78c829.md) | 74 | `declaration-track:98ea1b6f598cfe062e78c82924fa1fcbf250b2ce1961162916c4708d720f2939` |
| 7 | `def` | [tanhCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/tanhcore--45ba0ba5afbb3a62743e1161.md) | 80 | `declaration-track:45ba0ba5afbb3a62743e116176c6a701edd4bdd86ef140e8db27c9df406eed9e` |
| 8 | `def` | [evalDualCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/evaldualcore--2c3aca177a307113eea29265.md) | 94 | `declaration-track:2c3aca177a307113eea29265fa6f53edbda0b65da0d35d70baab93738ea41a1d` |
| 9 | `def` | [derivIntervalCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/derivintervalcore--3c01bac462156b8b252c1a73.md) | 118 | `declaration-track:3c01bac462156b8b252c1a730fb061a65a68055bf9db97a449a24e3b06e8b0f8` |
| 10 | `def` | [evalDomainValidDual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/evaldomainvaliddual--5cba1b2f5501e47588fb2823.md) | 124 | `declaration-track:5cba1b2f5501e47588fb28236fc04644a2816c8ac7df3d28e1790fd9818d8dbf` |
| 11 | `theorem` | [evalDualCore_val_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/evaldualcore-val-correct--28dafbe2c85cb4d9b82b0472.md) | 150 | `result-track:28dafbe2c85cb4d9b82b0472a70ea4b269c529ea9c6282c32bc02ca4aa72610c` |
| 12 | `theorem` | [evalDomainValidDual_of_ExprSupported](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/evaldomainvaliddual-of-exprsupported--35fda5cf38135cb5d400b2b3.md) | 217 | `result-track:35fda5cf38135cb5d400b2b3bf3b8e8eb4d3f319f186a5b03226e0afd6f698c2` |
| 13 | `theorem` | [evalDualCore_der_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/evaldualcore-der-correct--255981110a2581915d3f17f4.md) | 231 | `result-track:255981110a2581915d3f17f4573b52503a2aeb7d2d8b832fb73fcc914c7cbb80` |
| 14 | `theorem` | [derivIntervalCore_correct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/derivintervalcore-correct--2dd7e17f3eb7e2a9bc4df560.md) | 294 | `result-track:2dd7e17f3eb7e2a9bc4df5609cd92ce50f4ff08e39ffe5e75e38b2481b7ae712` |
| 15 | `theorem` | [derivIntervalCore_nonzero_implies_deriv_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/derivintervalcore-nonzero-implies-deriv-nonzero--cfef8699fffd122ce47af9ba.md) | 301 | `result-track:cfef8699fffd122ce47af9bac1214f47844d0b8bbcbc5da091657f225d9690af` |
| 16 | `theorem` | [derivIntervalCore_pos_implies_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/derivintervalcore-pos-implies-deriv-pos--0d65526368f19cb7db4293ed.md) | 315 | `result-track:0d65526368f19cb7db4293ed0cc83ba9f278f894b83b5d33a656d47e64eb6f97` |
| 17 | `theorem` | [derivIntervalCore_neg_implies_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/derivintervalcore-neg-implies-deriv-neg--fb31d03594deb4a2be17cecc.md) | 326 | `result-track:fb31d03594deb4a2be17cecc038fcb37b57bc1144ca0f5c24a8ac088ad51f82b` |
| 18 | `theorem` | [strictMonoOn_of_derivIntervalCore_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/strictmonoon-of-derivintervalcore-pos--6d9b3a2f82b806e05824bd6a.md) | 337 | `result-track:6d9b3a2f82b806e05824bd6a198e19e9e9394fd26a16f03aca320fcae3eb7683` |
| 19 | `theorem` | [strictAntiOn_of_derivIntervalCore_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/declarations/strictantion-of-derivintervalcore-neg--cc1d0c90ebb5fd716daa0b8c.md) | 353 | `result-track:cc1d0c90ebb5fd716daa0b8c02d2f5050bf6bdc7d22266d42aed1e5778f64d94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
