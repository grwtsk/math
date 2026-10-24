# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gronwall.Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8baf1a4b2c803603ebc385e55ff72ee2d0c08c15`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound--31ee2063892488651aff8266.md) | 43 | `declaration-track:31ee2063892488651aff82660330ecc2d40178eb24ddaeb97a906ea8b1d96f3f` |
| 2 | `theorem` | [gronwallBound_K0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-k0--57a652ac17086c19831f001e.md) | 46 | `result-track:57a652ac17086c19831f001e626fdf9eb02d12f81375c7dc504c9b28b48dd2c0` |
| 3 | `theorem` | [gronwallBound_of_K_ne_0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-of-k-ne-0--f19cf49b63cff47cb0e3b9f0.md) | 49 | `result-track:f19cf49b63cff47cb0e3b9f0b47c50238fac01efe0be76322ce164d4cb19820f` |
| 4 | `theorem` | [hasDerivAt_gronwallBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/hasderivat-gronwallbound--4af17ce9d50c7ec1da8dad3a.md) | 53 | `result-track:4af17ce9d50c7ec1da8dad3ab13d7d1d9e13a95f9485e29691d61ce32a2510a8` |
| 5 | `theorem` | [hasDerivAt_gronwallBound_shift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/hasderivat-gronwallbound-shift--5b43d8de2500f98a6b80f778.md) | 67 | `result-track:5b43d8de2500f98a6b80f77819fdd2b3790adcba7608439c07f8efefaaac10ff` |
| 6 | `theorem` | [gronwallBound_x0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-x0--4ef6253ce6bc1582b6598064.md) | 72 | `result-track:4ef6253ce6bc1582b6598064b63641c617c5acfa17af92556e8f1536eba7becc` |
| 7 | `theorem` | [gronwallBound_ε0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-0--79bfa041f129b4e15a420ba6.md) | 78 | `result-track:79bfa041f129b4e15a420ba698e01dd37a10795e8a9630d6437c18ab73645d76` |
| 8 | `theorem` | [gronwallBound_ε0_δ0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-0-0--8c29ce12ac9dc9efb34cc91d.md) | 83 | `result-track:8c29ce12ac9dc9efb34cc91d325b26674915a9b4b132d6138906ef4ba9acd0c7` |
| 9 | `theorem` | [gronwallBound_continuous_ε](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-continuous--8d68642e0412140b34b83eba.md) | 86 | `result-track:8d68642e0412140b34b83ebaaa751f35e39320318cd5327cadb6f3daaa4bccfc` |
| 10 | `lemma` | [gronwallBound_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/gronwallbound-mono--6a0b33b5885547293637095b.md) | 94 | `result-track:6a0b33b5885547293637095bd9a9d3f1ffd904c222714e78c32768aa4b860b7e` |
| 11 | `theorem` | [le_gronwallBound_of_liminf_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/le-gronwallbound-of-liminf-deriv-right-le--e67ee2bb25d3dbc84af61a49.md) | 112 | `result-track:e67ee2bb25d3dbc84af61a49649dde62598bd05759364dba75396fd902f77793` |
| 12 | `theorem` | [norm_le_gronwallBound_of_norm_deriv_right_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/norm-le-gronwallbound-of-norm-deriv-right-le--d4b1c9978b6714c4ef73c3f4.md) | 134 | `result-track:d4b1c9978b6714c4ef73c3f4c93ea034f875f929c193e24566587bab82001ccf` |
| 13 | `theorem` | [eq_zero_of_abs_deriv_le_mul_abs_self_of_eq_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/eq-zero-of-abs-deriv-le-mul-abs-self-of-eq-zero-right--bbfd4ef1d6cf870e2bd6bcf9.md) | 143 | `result-track:bbfd4ef1d6cf870e2bd6bcf9cd7e837c309b8e0453b90276b7ab9cbf57ce2b5d` |
| 14 | `theorem` | [dist_le_of_approx_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/dist-le-of-approx-trajectories-ode-of-mem--abd8e5ab45deaaae3b7eda98.md) | 162 | `result-track:abd8e5ab45deaaae3b7eda98a2be15138cbf95c044eb026ca5054dae7f624fd0` |
| 15 | `theorem` | [dist_le_of_approx_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/dist-le-of-approx-trajectories-ode--8f8f066a7692ce8e336eb077.md) | 188 | `result-track:8f8f066a7692ce8e336eb07701c9c8916aa041b98f765c0ba92eafe8309349c4` |
| 16 | `theorem` | [dist_le_of_trajectories_ODE_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/dist-le-of-trajectories-ode-of-mem--c10dec9688c5a320688e5228.md) | 208 | `result-track:c10dec9688c5a320688e5228621348486940ba5921c8a46cc3fba49c027b5769` |
| 17 | `theorem` | [dist_le_of_trajectories_ODE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/declarations/dist-le-of-trajectories-ode--78c8e8fa773240636472db8b.md) | 228 | `result-track:78c8e8fa773240636472db8bfd647fb6bb062c0826f8b673e8f691b7511da8ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
