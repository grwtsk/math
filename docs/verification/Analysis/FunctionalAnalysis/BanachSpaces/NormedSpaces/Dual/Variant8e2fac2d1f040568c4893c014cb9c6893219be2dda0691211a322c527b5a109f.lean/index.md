# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Dual.Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8644225bb2257576aadbe2d2a1e500116d467651",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8644225bb2257576aadbe2d2a1e500116d467651`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isClosed_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/isclosed-polar--8cd385d929c3909d9c4815b3.md) | 60 | `result-track:8cd385d929c3909d9c4815b39aad5241b81b7757d6dce330f3479a9bfee7c286` |
| 2 | `theorem` | [polar_closure](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/polar-closure--c7444d77dc89ee1f4343bcdc.md) | 67 | `result-track:c7444d77dc89ee1f4343bcdccf287d2b33e5ca254838c7a45a3ac51ae38fbed1` |
| 3 | `theorem` | [smul_mem_polar](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/smul-mem-polar--8cf33fea8005eccad2acb038.md) | 78 | `result-track:8cf33fea8005eccad2acb03853023cf0c828f7de1fae8cf4515f44a0be509e18` |
| 4 | `theorem` | [polar_ball_subset_closedBall_div](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/polar-ball-subset-closedball-div--7ddfb708c580dcb5c30a369f.md) | 92 | `result-track:7ddfb708c580dcb5c30a369f55f6d1ce54dce02eee144bc4ecd05af23e577a3f` |
| 5 | `theorem` | [closedBall_inv_subset_polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/closedball-inv-subset-polar-closedball--fabe3c8af2bd111fabfd8ad3.md) | 105 | `result-track:fabe3c8af2bd111fabfd8ad37c1828be40e02e8a414d9196eec0faf717ad11b6` |
| 6 | `theorem` | [polar_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/polar-closedball--72a0fe5d65f1d988824ec81d.md) | 118 | `result-track:72a0fe5d65f1d988824ec81d39881f96f28380ab1793cac76743632ba3f380bf` |
| 7 | `theorem` | [polar_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/polar-ball--84e3dd8bd2c42a74a64979fa.md) | 127 | `result-track:84e3dd8bd2c42a74a64979fae8ea7f4f16e7cd27218e97c8d177083f4a81d20a` |
| 8 | `theorem` | [isBounded_polar_of_mem_nhds_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/isbounded-polar-of-mem-nhds-zero--612a08e077970eca1e19ae55.md) | 134 | `result-track:612a08e077970eca1e19ae5578f5c998b798e45e7b95575438ccc52559d0c020` |
| 9 | `theorem` | [sInter_polar_eq_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/sinter-polar-eq-closedball--9eb1a94a490eb4e69e60e461.md) | 142 | `result-track:9eb1a94a490eb4e69e60e4618a328f5f3022ec3925dbef60f16f2c5ff6a733f5` |
| 10 | `theorem` | [polar_AbsConvex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/polar-absconvex--5c48817188f16d7e8f0a16aa.md) | 164 | `result-track:5c48817188f16d7e8f0a16aa9e0f91573d9d935972f27bf516238b2327cda8c2` |
| 11 | `theorem` | [NormedSpace.eq_zero_of_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/normedspace-eq-zero-of-forall-dual-eq-zero--910b88b936bd42df3afd4c89.md) | 179 | `result-track:910b88b936bd42df3afd4c89cba1a8570502d9be2145fee0fea4f1c6885975db` |
| 12 | `theorem` | [NormedSpace.eq_zero_iff_forall_dual_eq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/normedspace-eq-zero-iff-forall-dual-eq-zero--5a5131cfbb80d5dec39358cd.md) | 184 | `result-track:5a5131cfbb80d5dec39358cdc3ba71f14d0c9626700eb3eeb2a7828744f6c83a` |
| 13 | `theorem` | [NormedSpace.eq_iff_forall_dual_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Dual/Variant8e2fac2d1f040568c4893c014cb9c6893219be2dda0691211a322c527b5a109f.lean/declarations/normedspace-eq-iff-forall-dual-eq--d2e1022475ecd8be12c54e95.md) | 189 | `result-track:d2e1022475ecd8be12c54e9589ee1c90da2c0ecc3f8db5841d704bbbf3825160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
