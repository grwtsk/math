# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPatchCertificate`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPatchCertificate.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/rectangle--2ab32947cee0aa9a97767092.md) | 25 | `declaration-track:2ab32947cee0aa9a977670925b97b2cd74663485984cd197df134cb3ec1ebe8e` |
| 2 | `def` | [WellFormed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/wellformed--7ba76577417158b4896a9c6c.md) | 34 | `declaration-track:7ba76577417158b4896a9c6cf99ad01630a0e387bded6752ecff9041c30d3b12` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/instance--364cfda0524e16a760b3a0e5.md) | 36 | `declaration-track:364cfda0524e16a760b3a0e5bdc69ac2bd235adf4e63f638999722ee50c0ff71` |
| 4 | `def` | [west](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/west--c7ec2e86a186898362dd945c.md) | 39 | `declaration-track:c7ec2e86a186898362dd945cd2d5b3d755007b7ddddfedf541426f2150465175` |
| 5 | `def` | [east](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/east--664e8062d24fab66d1e0b324.md) | 40 | `declaration-track:664e8062d24fab66d1e0b32423a910e72c9c612a6356fee6f5ab8360bf5b4e8f` |
| 6 | `def` | [south](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/south--c93921e2e5f77c99636af2b5.md) | 41 | `declaration-track:c93921e2e5f77c99636af2b55a752dee9f29f55f036bdf4898dc0ddd9cffd732` |
| 7 | `def` | [north](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/north--d2070d971bcb73e78468b04d.md) | 42 | `declaration-track:d2070d971bcb73e78468b04ddb983322295c5bd0a4ad14723c9c1feb51b0d4ef` |
| 8 | `structure` | [Disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/disk--fcec287ca4f10a4fe82c884c.md) | 46 | `declaration-track:fcec287ca4f10a4fe82c884c8a76a5d0691bf8a92c4fd2fa581341219e57b07e` |
| 9 | `def` | [realReach](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/realreach--9e89ea2b41b747c2c9b4799d.md) | 54 | `declaration-track:9e89ea2b41b747c2c9b4799dfd4cad8b33fe62018f55d189441bad044d9c6388` |
| 10 | `def` | [imagReach](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/imagreach--6e5a2b873c3a43ae12d76807.md) | 57 | `declaration-track:6e5a2b873c3a43ae12d768072f8e3b4fa9b2c185f669137c02e84f60dcdbf683` |
| 11 | `def` | [ContainsBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/containsbox--9293f8ab200e239b790a91e0.md) | 61 | `declaration-track:9293f8ab200e239b790a91e0b6e926acd2dd0270024d41bfc5e68a38c3987934` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/instance--e38a8219a007b0c94b831686.md) | 64 | `declaration-track:e38a8219a007b0c94b831686e477d41af6a2ba620bc8edb8141c4d85aa6bd345` |
| 13 | `inductive` | [Tree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/tree--4a27e3033d0ff0ff34aedda8.md) | 71 | `declaration-track:4a27e3033d0ff0ff34aedda8ca92304e9a1f445d9cea25cb385f8500bd243b4e` |
| 14 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/check--1c3659a2c3f5e137cc1c828a.md) | 80 | `declaration-track:1c3659a2c3f5e137cc1c828a6fa74b67e0698d70af2a7aafd7fe0b376915b81e` |
| 15 | `def` | [leafCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/leafcount--68472f13e9f58ef1aced7f05.md) | 89 | `declaration-track:68472f13e9f58ef1aced7f05cea976771fe200a009b6fb18fde10de423be084b` |
| 16 | `def` | [Rectangle.carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/rectangle-carrier--e33db00ad8b13d0dd39dff07.md) | 99 | `declaration-track:e33db00ad8b13d0dd39dff07ac0b2a9970ad2a090dca2163c63e04491b8ea988` |
| 17 | `def` | [Disk.center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/disk-center--a6f5549ffb0f468cfe0e066d.md) | 103 | `declaration-track:a6f5549ffb0f468cfe0e066ddc705176cf198d54b93d4bd12a0bcdbbd79a4cc3` |
| 18 | `def` | [Disk.carrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/disk-carrier--73ad6e9bd58cfebe2fc3369e.md) | 104 | `declaration-track:73ad6e9bd58cfebe2fc3369ea7c8d4941341008bd43baf3aff3bd35144199215` |
| 19 | `lemma` | [Rectangle.carrier_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/rectangle-carrier-nonempty--b802635e82d6c44bea124104.md) | 106 | `result-track:b802635e82d6c44bea1241046337d35462674bbe4e0353b071692b2ca96eaa1b` |
| 20 | `lemma` | [abs_sub_le_endpoint_max](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/abs-sub-le-endpoint-max--8c97480a3fd778e1001cb312.md) | 113 | `result-track:8c97480a3fd778e1001cb3121f515f59ee77316068b3b124b057607ec64ea043` |
| 21 | `theorem` | [Disk.containsBox_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/disk-containsbox-sound--5e66352b5fe3a8eff2dfdbc8.md) | 125 | `result-track:5e66352b5fe3a8eff2dfdbc8b82466a07acb320a553e88ff61c4b2575992f895` |
| 22 | `theorem` | [Rectangle.west_east_union](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/rectangle-west-east-union--b3ceb242eb33d462a9d74acc.md) | 153 | `result-track:b3ceb242eb33d462a9d74acc53912172087ac35299416307dccb99e674c03ae0` |
| 23 | `theorem` | [Rectangle.south_north_union](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/rectangle-south-north-union--ffaf8931a7c4e6e16a89fa7b.md) | 168 | `result-track:ffaf8931a7c4e6e16a89fa7bfa4875c66aea0d0246987f3c379a619c5c51c10e` |
| 24 | `theorem` | [check_wellFormed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/check-wellformed--3b43fda69a4d05012ba7890e.md) | 186 | `result-track:3b43fda69a4d05012ba7890e326e9608fc5c3e4848e45338a5da1f260ed9b405` |
| 25 | `theorem` | [check_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/check-covers--9be972da557590a428a319f7.md) | 206 | `result-track:9be972da557590a428a319f7ae82b2bb27ee3a2e73275060b7b5d8bdd4721e2f` |
| 26 | `theorem` | [count_pos_of_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/count-pos-of-check--0270a9b12522b40afeec52bc.md) | 233 | `result-track:0270a9b12522b40afeec52bc32bac0d9c30950760734708fe33e9381f9e7be19` |
| 27 | `def` | [toFiniteVariationCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/tofinitevariationcover--49d87c3f5030548bc5b8c9e9.md) | 240 | `declaration-track:49d87c3f5030548bc5b8c9e90d4c87af2668e929453be069e86b0735467b44e2` |
| 28 | `def` | [toTargetCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/totargetcover--70240833b5eb5b790d7aa2a5.md) | 252 | `declaration-track:70240833b5eb5b790d7aa2a5cdc784ee5dc55e49ad29f61db5a72b6cc01e2b90` |
| 29 | `theorem` | [not_check_of_uncovered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/not-check-of-uncovered--24ee10735a748e3fcdb37381.md) | 263 | `result-track:24ee10735a748e3fcdb373810e4f333e3a1acfe1f2ec031c6115158ed884a76e` |
| 30 | `theorem` | [not_check_of_source_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/declarations/not-check-of-source-zero--087173996d22e6673e4aec03.md) | 272 | `result-track:087173996d22e6673e4aec03e4d2b0beef5e8d5f3d3a9c4091ac8d9727b243bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
