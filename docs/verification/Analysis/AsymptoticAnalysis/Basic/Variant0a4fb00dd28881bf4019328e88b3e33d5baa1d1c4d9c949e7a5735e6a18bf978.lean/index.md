# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fde4002d242155609497fc30e009e920b66a329",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fde4002d242155609497fc30e009e920b66a329`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Topology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/macro-rules--d7430f374eb54c96eddcfada.md) | 37 | `declaration-track:d7430f374eb54c96eddcfada98ba68fe8ef2469341d28d5e1bd260489e26b0f2` |
| 2 | `def` | [jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/jacobitheta--ff4d4bce70ef2a6cedb91b22.md) | 40 | `declaration-track:ff4d4bce70ef2a6cedb91b2253ce93de1b5a94fe9593ae6a7472c877ae5ad595` |
| 3 | `theorem` | [norm_exp_mul_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/norm-exp-mul-sq-le--69229bfeb431b31fbb1525df.md) | 44 | `result-track:69229bfeb431b31fbb1525df8f17c61bf41ab5640e016a6f1869f1ab1124a171` |
| 4 | `theorem` | [exists_summable_bound_exp_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/exists-summable-bound-exp-mul-sq--13eb6809272c7cc08409f5bf.md) | 61 | `result-track:13eb6809272c7cc08409f5bf8c8be156def00a170a1013a910d686a2ed76f56c` |
| 5 | `theorem` | [summable_exp_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/summable-exp-mul-sq--f0032d38fab5d47f1c80104e.md) | 75 | `result-track:f0032d38fab5d47f1c80104e3c3a3b490330fa28998c43e82d656edd8ae246c3` |
| 6 | `theorem` | [jacobiTheta_two_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/jacobitheta-two-add--45465f84ba44de324e2fbbf1.md) | 81 | `result-track:45465f84ba44de324e2fbbf1fcf389e10368421028244d9eaad42dc720e84c44` |
| 7 | `theorem` | [jacobiTheta_T_sq_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/jacobitheta-t-sq-smul--b5392c7e137d67d9cfaa2e4b.md) | 88 | `result-track:b5392c7e137d67d9cfaa2e4bd299507dc9d95bcb7baed5a89c3fce9e5c314d97` |
| 8 | `theorem` | [jacobiTheta_S_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/jacobitheta-s-smul--bd2db382239fbe7782f28353.md) | 96 | `result-track:bd2db382239fbe7782f28353adef994327d3a60e1365757e7f6579785268f84f` |
| 9 | `theorem` | [hasSum_nat_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/hassum-nat-jacobitheta--e25e3c2e88b920f17a3d3270.md) | 124 | `result-track:e25e3c2e88b920f17a3d3270283932dbc67f2c7d61e0b55fdeef9eff93b45aa6` |
| 10 | `theorem` | [jacobiTheta_eq_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/jacobitheta-eq-tsum-nat--7afd344c4fe5ca50d62e6572.md) | 136 | `result-track:7afd344c4fe5ca50d62e6572a49b0d336fb899133394b627f29800b6088f79d7` |
| 11 | `theorem` | [norm_jacobiTheta_sub_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/norm-jacobitheta-sub-one-le--f8a949368f364b1a429cad42.md) | 143 | `result-track:f8a949368f364b1a429cad420183d46e83fc691264192230266d1bd280e7018e` |
| 12 | `theorem` | [isBigO_at_im_infty_jacobiTheta_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/isbigo-at-im-infty-jacobitheta-sub-one--22ce24c48a56798258c5e35d.md) | 169 | `result-track:22ce24c48a56798258c5e35de1a4cff82501c7b5fcf0af77aab6ae6002c5a83a` |
| 13 | `theorem` | [differentiableAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/differentiableat-jacobitheta--be90497c666cdbe8448dd775.md) | 184 | `result-track:be90497c666cdbe8448dd7750eafcfed196c4726bc9bf9a234d60dcd48665fd5` |
| 14 | `theorem` | [continuousAt_jacobiTheta](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/declarations/continuousat-jacobitheta--f08b06a6297440b2f3dfc4e7.md) | 200 | `result-track:f08b06a6297440b2f3dfc4e711f2d361754da75d3747d9c0b9fd34a24ff4dfc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
