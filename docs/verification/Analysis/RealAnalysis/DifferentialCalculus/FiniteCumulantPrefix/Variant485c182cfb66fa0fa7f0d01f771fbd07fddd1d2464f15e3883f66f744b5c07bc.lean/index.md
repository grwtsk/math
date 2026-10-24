# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteCumulantPrefix.Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "819b35aef974f3c22b9f88ab1efcd788602131e3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `819b35aef974f3c22b9f88ab1efcd788602131e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockDirectionReindexing` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstDirectionalCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/firstdirectionalcumulant--5a6baece617c3e8bacca2195.md) | 44 | `declaration-track:5a6baece617c3e8bacca219558fc769d68af4f7126373853137b0cca4f3f6ed9` |
| 2 | `def` | [secondDirectionalCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/seconddirectionalcumulant--c7dd1abbc0944be3597fb95d.md) | 49 | `declaration-track:c7dd1abbc0944be3597fb95d0556d5750b2afa491fb6c6ff4006548174a0fccb` |
| 3 | `def` | [thirdDirectionalCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/thirddirectionalcumulant--1b59ded9f8dd7b6fbddbf4e8.md) | 54 | `declaration-track:1b59ded9f8dd7b6fbddbf4e8425b24f1d12bf123a4d16d59d8d9cc226e0ec43e` |
| 4 | `def` | [fourthDirectionalCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/fourthdirectionalcumulant--430d18c92c9b25fe8612d6f1.md) | 60 | `declaration-track:430d18c92c9b25fe8612d6f13157c06375d88ddcd560e4dd39c70cb4323c9a8f` |
| 5 | `def` | [finiteCumulantPrefix4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4--b3c84b2454dd8cfdad5436a7.md) | 69 | `declaration-track:b3c84b2454dd8cfdad5436a7b0ca9f5a0d64b30153aa687d3f8c64556d08b996` |
| 6 | `theorem` | [finiteCumulantPrefix4_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-zero--b96226f699390344d24519a2.md) | 81 | `result-track:b96226f699390344d24519a2179bf0034feaf7cd4215d11442dbdde493408979` |
| 7 | `theorem` | [finiteCumulantPrefix4_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-one--63305c8da6d086e51320fcb8.md) | 87 | `result-track:63305c8da6d086e51320fcb8c1ecbf29f71b1f7332d9ba506eee6052debcb102` |
| 8 | `theorem` | [finiteCumulantPrefix4_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-two--6a2f5ddbf7566fd3ddfb6a0f.md) | 94 | `result-track:6a2f5ddbf7566fd3ddfb6a0f3b6fefc0b98af9b126c2464670fc8f550ee39b9f` |
| 9 | `theorem` | [finiteCumulantPrefix4_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-three--20f83cca16e74705316a084c.md) | 101 | `result-track:20f83cca16e74705316a084cdf6dc1e8887618d6b5a26488f6697adfaae8afe7` |
| 10 | `theorem` | [finiteCumulantPrefix4_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-four--bfddbc1711ad70a7a4fc801d.md) | 108 | `result-track:bfddbc1711ad70a7a4fc801db361cfd72529659711ece877869f41f445a001c5` |
| 11 | `theorem` | [finiteCumulantPrefix4_five](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-five--4bdc19801c008af7a2ddae21.md) | 115 | `result-track:4bdc19801c008af7a2ddae21b07cdee9cef9c18e73c11b76cc8e5241b6a81603` |
| 12 | `theorem` | [firstDirectionalCumulant_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/firstdirectionalcumulant-eq-centroid--0f2e78da3e385ee54b899249.md) | 121 | `result-track:0f2e78da3e385ee54b899249de937d057581cfb0a01d9e1b73ed54f8463ffedc` |
| 13 | `theorem` | [secondDirectionalCumulant_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/seconddirectionalcumulant-eq-covariance--8b94b7f5c004d648cd557c44.md) | 128 | `result-track:8b94b7f5c004d648cd557c443125f199ddb1030fe050322ce5e16fea14a5125f` |
| 14 | `theorem` | [thirdDirectionalCumulant_eq_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/thirddirectionalcumulant-eq-operator--e6cd15b380fd0bbfab018288.md) | 135 | `result-track:e6cd15b380fd0bbfab0182881fb9705c30bf523866acde8c204e0e16db51152e` |
| 15 | `theorem` | [fourthDirectionalCumulant_eq_covector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/fourthdirectionalcumulant-eq-covector--2333a08d00a9a17a32ceb725.md) | 143 | `result-track:2333a08d00a9a17a32ceb72584ad3484ca7355ca0d66e7b13c5912bd6804edef` |
| 16 | `theorem` | [firstDirectionalCumulant_eq_fderiv_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/firstdirectionalcumulant-eq-fderiv-logpartition--0c597e184c707cce4b95f52b.md) | 151 | `result-track:0c597e184c707cce4b95f52bce9261b7f8ad970518a261b3e6b4a592abae3ca8` |
| 17 | `theorem` | [secondDirectionalCumulant_eq_fderiv_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/seconddirectionalcumulant-eq-fderiv-logpartition--15c1ab0e118c6b83ac87f37a.md) | 159 | `result-track:15c1ab0e118c6b83ac87f37a4c420de578bfd82ba0a2356eb18c8ab300b48c24` |
| 18 | `theorem` | [thirdDirectionalCumulant_eq_fderiv_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/thirddirectionalcumulant-eq-fderiv-logpartition--af9993411b792ce25adfc3d4.md) | 170 | `result-track:af9993411b792ce25adfc3d4dccef7926ffbc751e216ffe8913b36c7e193a266` |
| 19 | `theorem` | [fourthDirectionalCumulant_eq_fderiv_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/fourthdirectionalcumulant-eq-fderiv-logpartition--2a8230da4ff9bdf635bf38d1.md) | 183 | `result-track:2a8230da4ff9bdf635bf38d1a819d9a6eef29eae98ece8583fa604ba67dfd5fa` |
| 20 | `theorem` | [blockCumulantValue_finiteCumulantPrefix4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/blockcumulantvalue-finitecumulantprefix4--8e13f9fc4d6904a000c2fb4e.md) | 201 | `result-track:8e13f9fc4d6904a000c2fb4e8d6d554d2956441af42a0f009729b3f738b157ef` |
| 21 | `structure` | [MatchesFiniteCumulantPrefix4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/matchesfinitecumulantprefix4--01bfe55fc04d202e03093539.md) | 214 | `declaration-track:01bfe55fc04d202e03093539cc51d4d4fe7cb4ccb9613c8c2f7b2318f2576fd5` |
| 22 | `theorem` | [finiteCumulantPrefix4_matches](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/finitecumulantprefix4-matches--c38f14f8b4f172caf0f3b9bb.md) | 238 | `result-track:c38f14f8b4f172caf0f3b9bb86fc9b2350fd798ca4bce79f6158ef8ef42af182` |
| 23 | `theorem` | [MatchesFiniteCumulantPrefix4.order1_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/matchesfinitecumulantprefix4-order1-eq-fderiv--06e346d6f353351e416e4144.md) | 249 | `result-track:06e346d6f353351e416e41448fcbd803b260fe7699321cf4c53c85035b3b0b37` |
| 24 | `theorem` | [MatchesFiniteCumulantPrefix4.order2_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/matchesfinitecumulantprefix4-order2-eq-fderiv--2c8babd59fe097f62c71cddb.md) | 259 | `result-track:2c8babd59fe097f62c71cddbb83bbf5e21a68012360dcefc4074930774fa98f8` |
| 25 | `theorem` | [MatchesFiniteCumulantPrefix4.order3_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/matchesfinitecumulantprefix4-order3-eq-fderiv--f1d8a588344fa1e8a6ac2561.md) | 270 | `result-track:f1d8a588344fa1e8a6ac2561648b10fc14f39589200e316d2c13dc21d5a2cb51` |
| 26 | `theorem` | [MatchesFiniteCumulantPrefix4.order4_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/declarations/matchesfinitecumulantprefix4-order4-eq-fderiv--6de6fb1d3e0fd7ac60fc3daf.md) | 284 | `result-track:6de6fb1d3e0fd7ac60fc3dafc8f184a0e01a0b61a354fffe9c4079f30d891122` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
