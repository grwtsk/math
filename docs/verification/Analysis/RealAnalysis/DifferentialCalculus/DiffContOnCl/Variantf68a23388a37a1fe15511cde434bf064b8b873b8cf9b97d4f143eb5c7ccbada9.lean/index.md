# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DiffContOnCl.Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f7ad0b9609c6a59e48d47f91ea481a63056ab2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f7ad0b9609c6a59e48d47f91ea481a63056ab2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/diffcontoncl--2db9c7b356945314423a94ad.md) | 29 | `declaration-track:2db9c7b356945314423a94ad968d95518b84121b7ab1941c27cbb40b7c7a366a` |
| 2 | `theorem` | [DifferentiableOn.diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiableon-diffcontoncl--711eb726942537b9fa55baa3.md) | 35 | `result-track:711eb726942537b9fa55baa3a4024dbb4ab384ac9907135a51209e1b0b73a61c` |
| 3 | `theorem` | [Differentiable.diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiable-diffcontoncl--ec7d9886a504f63f4c13a9c4.md) | 38 | `result-track:ec7d9886a504f63f4c13a9c41745f4443edaa841e7626a5da0e6a5998525ebfa` |
| 4 | `theorem` | [IsClosed.diffContOnCl_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/isclosed-diffcontoncl-iff--5cb7bab93ebdbffbad5fa53e.md) | 41 | `result-track:5cb7bab93ebdbffbad5fa53e76016766d50c028d74bd33d9ec1448ebd3712eeb` |
| 5 | `theorem` | [diffContOnCl_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/diffcontoncl-univ--a1596de3d104be71b0db4730.md) | 44 | `result-track:a1596de3d104be71b0db4730ca5495cd437059fe20ce29645686088ffde7bb74` |
| 6 | `theorem` | [diffContOnCl_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/diffcontoncl-const--6886e97264a5cf5ebbd8cf62.md) | 47 | `result-track:6886e97264a5cf5ebbd8cf62097349c0c8cf5277fb5d23cd8890cc7ac2b5ee55` |
| 7 | `theorem` | [comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/comp--5aa8a45330b0cc05ad850f08.md) | 52 | `result-track:5aa8a45330b0cc05ad850f080cd24d0d7d962c719ee08fd936d48a545fafdf7f` |
| 8 | `theorem` | [continuousOn_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/continuouson-ball--12f01881c539aa8223bb6ba7.md) | 56 | `result-track:12f01881c539aa8223bb6ba7a2cea1342fc7249b0c2bf0de1187dcc864f3f71c` |
| 9 | `theorem` | [mk_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/mk-ball--b1299dbebc0a03f4c4688aaa.md) | 64 | `result-track:b1299dbebc0a03f4c4688aaafa648a3ecc1d8b9856221f4c5b92d3a374fe113e` |
| 10 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiableat--2f13342559d3b4879e9d8bc1.md) | 68 | `result-track:2f13342559d3b4879e9d8bc1cd018b65fb429a84c413e46a415a6b81770cabfd` |
| 11 | `theorem` | [differentiableAt'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiableat--1c55b55800bbdb7813f27e0f.md) | 72 | `result-track:1c55b55800bbdb7813f27e0f151d3e4873c57236e1d308d9fd1ce4e73cc3ac02` |
| 12 | `theorem` | [mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/mono--8ff1068029bff8dc922a1cf1.md) | 75 | `result-track:8ff1068029bff8dc922a1cf1923f813bc6a6542717c5dc659e63587ebae3c801` |
| 13 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/add--59e79e298936f2f305dd2849.md) | 78 | `result-track:59e79e298936f2f305dd2849815b8c990618ed6dbc35489d31697ed5f2104dc9` |
| 14 | `theorem` | [add_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/add-const--26f120d385ae1f26b0c3f54e.md) | 81 | `result-track:26f120d385ae1f26b0c3f54ee2656802f4c181cb84f78d492f44fc0076204186` |
| 15 | `theorem` | [const_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/const-add--5917774665bb2ed473daa9ef.md) | 84 | `result-track:5917774665bb2ed473daa9ef4242869c080473136d8d316eee06cacb977a357b` |
| 16 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/neg--322325fdb4af8dd50c025bee.md) | 87 | `result-track:322325fdb4af8dd50c025beebef60367647a655085d7dbe9d74b8a380295be7e` |
| 17 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/sub--4df0710673abb6be355a90ab.md) | 90 | `result-track:4df0710673abb6be355a90ab474814f03c4b324e1d07b059cc6bba9afc9721d6` |
| 18 | `theorem` | [sub_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/sub-const--89609d1cf05c6be70a4af757.md) | 93 | `result-track:89609d1cf05c6be70a4af7570450c9ecdc290aba36ff619a5a387d04eceeda1e` |
| 19 | `theorem` | [const_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/const-sub--1fa571dbc03327bcc5667ba7.md) | 96 | `result-track:1fa571dbc03327bcc5667ba72ae34115e4924970d256a2d020fba490a690f870` |
| 20 | `theorem` | [const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/const-smul--9ca4856c319c0c0fbbe44798.md) | 99 | `result-track:9ca4856c319c0c0fbbe447985ec991d0e06119eef50038defd8c68ccbb0f5e26` |
| 21 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/smul--5a0019506dd90414d84b93f4.md) | 103 | `result-track:5a0019506dd90414d84b93f4ca5a7d997e83a1cb08c1e8d93b992e0d3d57765e` |
| 22 | `theorem` | [smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/smul-const--a2a63a1060229beb4217ec4c.md) | 108 | `result-track:a2a63a1060229beb4217ec4c523529310cf56685ffeab42f6f0b8a1604075820` |
| 23 | `theorem` | [inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/inv--de8a412c55bdcc43198209e2.md) | 113 | `result-track:de8a412c55bdcc43198209e2db81c3eee5f38953bcf80a5081594b4f7c43c77c` |
| 24 | `theorem` | [Differentiable.comp_diffContOnCl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiable-comp-diffcontoncl--fda9f423558f266a7478917c.md) | 119 | `result-track:fda9f423558f266a7478917caaa2a79c345ccdd03db2193301247bc9f8cfb502` |
| 25 | `theorem` | [DifferentiableOn.diffContOnCl_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean/declarations/differentiableon-diffcontoncl-ball--10872c31b08df3b02de3f03f.md) | 123 | `result-track:10872c31b08df3b02de3f03f14de0c4f1c461aa8a47c4ef001f8def29464b780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
