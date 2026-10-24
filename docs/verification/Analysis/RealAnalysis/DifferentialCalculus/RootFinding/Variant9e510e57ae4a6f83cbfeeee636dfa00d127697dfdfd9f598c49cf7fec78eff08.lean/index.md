# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootFinding.Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb77cfffd986ec01707cbbb5deb70cfe0d09f56f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.RootFinding.Main` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RootConfig](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/rootconfig--4d0c675febda538af56088a6.md) | 44 | `declaration-track:4d0c675febda538af56088a658812e3dcb770215686faecec0f1f97ea1b70b28` |
| 2 | `structure` | [NewtonConfig](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/newtonconfig--fbb0ad1247ded90481654f66.md) | 52 | `declaration-track:fbb0ad1247ded90481654f66057f1c1a59bab1ea5bfe691c9bd59b63144871bc` |
| 3 | `def` | [checkSignChange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/checksignchange--05896c3277a8d389c6bc3eac.md) | 63 | `declaration-track:05896c3277a8d389c6bc3eac06f29dca44d0dd68516b24c0bdeb3d70bb6049c0` |
| 4 | `def` | [checkNoRoot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/checknoroot--b9b35a1ca021d2fd51abdd75.md) | 75 | `declaration-track:b9b35a1ca021d2fd51abdd7594ae239e0b38fc0e377420e88532defe2d2bd467` |
| 5 | `def` | [newtonStepCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/newtonstepcore--aa034cef1e13e080d48d90fc.md) | 87 | `declaration-track:aa034cef1e13e080d48d90fc469795ff3548707470503c097459c0d8216e0abc` |
| 6 | `lemma` | [newtonStepCore_extract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/newtonstepcore-extract--134481bdae22a9ac5b11ea73.md) | 108 | `result-track:134481bdae22a9ac5b11ea735f60f844235c6d137c705b5f419b586d022c4626` |
| 7 | `def` | [checkNewtonContractsCore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/checknewtoncontractscore--9543700357982e0e01ec3381.md) | 142 | `declaration-track:9543700357982e0e01ec338195d7febbbd1953408f881319fae98bf502ac9480` |
| 8 | `def` | [checkNewtonContracts](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/checknewtoncontracts--f27429a7b417d9d97fb6b029.md) | 153 | `declaration-track:f27429a7b417d9d97fb6b0290300e5e22ea97dbe6071bfd390c3a839c7047cfb` |
| 9 | `theorem` | [verify_no_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-no-root--318111fc3156e005b5329b0c.md) | 165 | `result-track:318111fc3156e005b5329b0ca5376eae1154d1134b5cd34b28c8ff0516402195` |
| 10 | `theorem` | [verify_unique_root_newton](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-unique-root-newton--6e2ead9d669a08e2cb27d67a.md) | 196 | `result-track:6e2ead9d669a08e2cb27d67a875728bc9e759f850d58bc13cc7ed5d3cd5144a2` |
| 11 | `lemma` | [mvt_lower_bound_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-lower-bound-core--bec76344b8e0f0309a1dc325.md) | 226 | `result-track:bec76344b8e0f0309a1dc3259adac12c7da3ab6e1443ff230d69609c236a36a2` |
| 12 | `lemma` | [mvt_upper_bound_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-upper-bound-core--5251518528b42109e3b22bbc.md) | 250 | `result-track:5251518528b42109e3b22bbc122af9c0542568097ca949b6f79b4e6f8cf7279d` |
| 13 | `theorem` | [verify_unique_root_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-unique-root-core--1c7a1224b60e1274dcbc2632.md) | 286 | `result-track:1c7a1224b60e1274dcbc263227bcbc358117a8854568bb8edd42eedddd3ca0b6` |
| 14 | `theorem` | [newton_preserves_root_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/newton-preserves-root-core--b6a04a03c8a454999866e08e.md) | 304 | `result-track:b6a04a03c8a454999866e08e2c8dadb11bd2e5b1f841245f8c557f48d106f971` |
| 15 | `theorem` | [newton_step_core_at_most_one_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/newton-step-core-at-most-one-root--bba80f9142240dd49c5874cd.md) | 356 | `result-track:bba80f9142240dd49c5874cd9080c56f9d2bc3d461e895edd35b021e38737086` |
| 16 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-fc-lower-bound-pos-increasing-core--a00de33d719f759d6a61eb32.md) | 420 | `result-track:a00de33d719f759d6a61eb328c385cb9f7814eb0085c3d05dc8c542173f2db4f` |
| 17 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-fc-upper-bound-pos-increasing-core--87534e6241a07c630b4ff3c1.md) | 457 | `result-track:87534e6241a07c630b4ff3c1ed6762c89d019667964e9acb831cc8c5bdc3bb14` |
| 18 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-fc-upper-bound-neg-decreasing-core--46843bcc3fe0e2ac8ac62e16.md) | 494 | `result-track:46843bcc3fe0e2ac8ac62e16daea75c38f6cb41c5c074c6a981c9d8264d9b518` |
| 19 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/mvt-fc-lower-bound-neg-decreasing-core--d2d9872285efa098f9141ab4.md) | 531 | `result-track:d2d9872285efa098f9141ab47a5df0823f87df5d01a26778ccc7290c4fc59519` |
| 20 | `theorem` | [verify_unique_root_computable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-unique-root-computable--ac15b1d500f575d9fafb8f31.md) | 572 | `result-track:ac15b1d500f575d9fafb8f31a1760a9ba5b32ab3cb2e6f681cef603862dc469b` |
| 21 | `theorem` | [verify_sign_change](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-sign-change--79d0bbd358f82486ad99ad24.md) | 789 | `result-track:79d0bbd358f82486ad99ad24e24f5069a95a08d7cafe861aa25f5d1a10a13fc9` |
| 22 | `def` | [checkHasRoot](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/checkhasroot--cd0ab4e0ecf045f5482f5bc1.md) | 868 | `declaration-track:cd0ab4e0ecf045f5482f5bc1539823de255c1c12453007517a419a7962976794` |
| 23 | `theorem` | [verify_has_root](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/declarations/verify-has-root--1d8490c29d829d6616d2823d.md) | 880 | `result-track:1d8490c29d829d6616d2823df729695397e5f17137a757d9803a10b0b1b33af2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
