# Verification target: GRWTSK.Topology.GeneralTopology.BoundsRound3Source.Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a6f5451b53faaf00804b52b39a7ebe0aefea395",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a6f5451b53faaf00804b52b39a7ebe0aefea395`.

Source path: `GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Matrix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderedPivotFintype](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/orderedpivotfintype--9b307f1334c697c74d38ef2e.md) | 36 | `declaration-track:9b307f1334c697c74d38ef2e6f6dd3d37bbdd0c96503275e35c1bae0e145b659` |
| 2 | `theorem` | [card_orderedPivots](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/card-orderedpivots--317aeb4b2afc95210006739b.md) | 40 | `result-track:317aeb4b2afc95210006739b78375e92d93fe88872ac23e84df451c46d7e5ebb` |
| 3 | `def` | [orderedPermutationEquiv](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/orderedpermutationequiv--0e70896cf23f0d3c67246668.md) | 46 | `declaration-track:0e70896cf23f0d3c67246668a1850dbbc831328bd5e1711c2f23b73b496a0b36` |
| 4 | `theorem` | [columnMinor_comp_perm_sq](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/columnminor-comp-perm-sq--58a7a393b1d911bf3a1e23f4.md) | 71 | `result-track:58a7a393b1d911bf3a1e23f429c6a05b3b78b4b79db172b0dc168e3356d4d6c1` |
| 5 | `theorem` | [sum_columnMinor_sq](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/sum-columnminor-sq--03a6acaf759809a4811ee1ae.md) | 82 | `result-track:03a6acaf759809a4811ee1ae54ab3f814597cf4471b5589aa7603b090db011c9` |
| 6 | `theorem` | [sum_orderedMinor_sq_eq_one](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/sum-orderedminor-sq-eq-one--e67c3c369c5241c151be5476.md) | 103 | `result-track:e67c3c369c5241c151be5476edf9615df01de5e4d394d957074914cbf98d43bf` |
| 7 | `theorem` | [exists_orderedMinor_sq_margin](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/exists-orderedminor-sq-margin--1ef9ae161a44fae48303ccfe.md) | 117 | `result-track:1ef9ae161a44fae48303ccfe772437b4c621d5fd3ddde1a16a90f02d99facfeb` |
| 8 | `theorem` | [exists_orderedMinor_margin](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/exists-orderedminor-margin--391094e662eb29ebcf931b63.md) | 139 | `result-track:391094e662eb29ebcf931b63a9e561596f408698bc5dfe95e2dde58f1add3d13` |
| 9 | `theorem` | [abs_columnMinor_mul_left](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/abs-columnminor-mul-left--1b79d2f4ad255a273da1bc06.md) | 152 | `result-track:1b79d2f4ad255a273da1bc06f7daabecc3546ce383e3d1a50e29be147d7ed799` |
| 10 | `theorem` | [l2_opNorm_le_one_of_orthonormalRows](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/l2-opnorm-le-one-of-orthonormalrows--aacfdf9084db7684a47ec446.md) | 159 | `result-track:aacfdf9084db7684a47ec4468d8d1cda5e7f3074ebccfd2d5906a8bf5c250e02` |
| 11 | `theorem` | [euclidean_norm_restrict_le](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/euclidean-norm-restrict-le--c7053adb042e2dfe27c80b10.md) | 173 | `result-track:c7053adb042e2dfe27c80b100f31c35d0e418857d09f1a099d124c411072eb8a` |
| 12 | `theorem` | [l2_opNorm_columnSubmatrix_le](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/l2-opnorm-columnsubmatrix-le--f97d497e6ec1199962efb718.md) | 184 | `result-track:f97d497e6ec1199962efb718d6ce998c2fea112f17c1f9f678321bc0cc390e7e` |
| 13 | `theorem` | [det_sq_mul_norm_sq_le_image](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/det-sq-mul-norm-sq-le-image--18bb6fbe292db5cb19fed01d.md) | 206 | `result-track:18bb6fbe292db5cb19fed01dd6ed96536968cb29f9b5f4e885de7a9f3c8c374e` |
| 14 | `theorem` | [l2_opNorm_inverse_le_margin](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/l2-opnorm-inverse-le-margin--9fbce6b6b5c3fdb9abf66d47.md) | 268 | `result-track:9fbce6b6b5c3fdb9abf66d47870e057c530cfca0094a730118401e86d058fd19` |
| 15 | `theorem` | [controlled_pivot_operator_bounds](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlled-pivot-operator-bounds--a03fd3afd00a5703e1edbc75.md) | 296 | `result-track:a03fd3afd00a5703e1edbc751298dbad33613c71818a5ede8ee3beb2d67f9a76` |
| 16 | `theorem` | [controlled_transition_operator_bounds](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlled-transition-operator-bounds--5a72670ad274cab1582d1d0a.md) | 318 | `result-track:5a72670ad274cab1582d1d0a19142e834f1b49361259074a707ffde43b48e728` |
| 17 | `theorem` | [orthonormalRows_dimension_le](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/orthonormalrows-dimension-le--898b5ebdeed4a151b75160b9.md) | 343 | `result-track:898b5ebdeed4a151b75160b95f5c13b68a3f82a5dfbff55b4e60a01abad814aa` |
| 18 | `def` | [controlledPivotThreshold](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledpivotthreshold--fd80925d163437b96751f7dd.md) | 349 | `declaration-track:fd80925d163437b96751f7ddae925f1d452c9bc1a126ca48dd914d8e2e7cf52a` |
| 19 | `def` | [controlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledpivotdomain--6fe3d1c08d044a29e3b34521.md) | 353 | `declaration-track:6fe3d1c08d044a29e3b345218cbbf182264815495519a970bac832294bbd6d01` |
| 20 | `theorem` | [isOpen_controlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/isopen-controlledpivotdomain--90a1ae42864743140e41c33a.md) | 357 | `result-track:90a1ae42864743140e41c33a3f1652ea14e073c056fced062f078654a0477f35` |
| 21 | `theorem` | [controlledPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledpivotdomain-cover--62b451dbe9f34f386a7a9f24.md) | 366 | `result-track:62b451dbe9f34f386a7a9f249d0e950a40c2b6d8d4033ad5cdbcf3cf604852cd` |
| 22 | `theorem` | [controlledCover_normalization_bound](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledcover-normalization-bound--638adc55f67691a59465b64d.md) | 380 | `result-track:638adc55f67691a59465b64d3b8208bf4453e212fb6c6d8448cbaacef8f676ce` |
| 23 | `theorem` | [controlledCover_transition_bounds](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledcover-transition-bounds--b5ea0d883e62384dfa8052af.md) | 394 | `result-track:b5ea0d883e62384dfa8052af95180a85e3cc1b721d9531a17d7a184497bf63e5` |
| 24 | `theorem` | [abs_det_eq_one_of_orthogonal](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/abs-det-eq-one-of-orthogonal--2717ef595bc75a24cc856e1f.md) | 409 | `result-track:2717ef595bc75a24cc856e1fc87d6ded5b2a3f15398e177d5e60555fe529447d` |
| 25 | `theorem` | [controlledPivotDomain_orthogonal_iff](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledpivotdomain-orthogonal-iff--78afb2126e306d33a268d300.md) | 417 | `result-track:78afb2126e306d33a268d300c1ee691a72a8749cf03b5977c0c0471142b90730` |
| 26 | `theorem` | [controlledCover_rank_zero](../../../../../mathematics/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/declarations/controlledcover-rank-zero--6c63d6bcb3ab1343fc13e79a.md) | 425 | `result-track:6c63d6bcb3ab1343fc13e79a8c69a5f2baa1ef24de4421099e9d8645578ecf63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
