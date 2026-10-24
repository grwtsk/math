# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Hom.Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef5cdabdd8e5c441c2273fa402d601c61ddee8aa",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef5cdabdd8e5c441c2273fa402d601c61ddee8aa`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.VectorBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bundle.ContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap--f481d3c990dd6fff0b09123f.md) | 57 | `declaration-track:f481d3c990dd6fff0b09123f3940270dd955e48fc1ae45753edb6b01f5b9ad32` |
| 2 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmapcoordchange--9dfe129c50d6855bb3893a20.md) | 71 | `declaration-track:9dfe129c50d6855bb3893a208bd2005073f0e738e8d2b882fa03c46e7692445c` |
| 3 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouson-continuouslinearmapcoordchange--9604af4869851bf31c0c1eae.md) | 80 | `result-track:9604af4869851bf31c0c1eae3b85848c2bbae5de61430ef0b0b635bc4cd1b8c5` |
| 4 | `def` | [continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmap--35fe0fc701d19d7498d59f1b.md) | 105 | `declaration-track:35fe0fc701d19d7498d59f1ba8c82a2979d68a6e0583bec9b5e6dc3ff14a527d` |
| 5 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmap-islinear--4db22be1b78a3937c672f6ce.md) | 133 | `declaration-track:4db22be1b78a3937c672f6cecbe7fdf17841b33bbd606a421ebab9976d59430c` |
| 6 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmap-apply--eedf4fc0cfdfaee5873fdd20.md) | 145 | `result-track:eedf4fc0cfdfaee5873fdd204076b3382c27013e178f81821dc88b7405df8b8b` |
| 7 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmap-symm-apply--4e233d8b1dad4ad15af31a24.md) | 150 | `result-track:4e233d8b1dad4ad15af31a24b6726eced29b6eb20b9cff14c4d9ba36e99e9e35` |
| 8 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmap-symm-apply--e68e628f5bf617c7a1109e00.md) | 155 | `result-track:e68e628f5bf617c7a1109e00a715f84f08a78905d727728c3e84a555470c8bcf` |
| 9 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/continuouslinearmapcoordchange-apply--d1a5a078fd66e6bbc302d843.md) | 163 | `result-track:d1a5a078fd66e6bbc302d8439f4c8ceba4187d884285b595e6719125698868d8` |
| 10 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap-vectorprebundle--8846a310a7c2f84823af0a19.md) | 191 | `declaration-track:8846a310a7c2f84823af0a19b9a6e8a990190a8bf09f2c7fbea2bc1e67921ea5` |
| 11 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--b933223fac3e130c2e1d2339.md) | 229 | `declaration-track:b933223fac3e130c2e1d2339a954555736dda8efaf875588dbe25003c45250b1` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap-fiberbundle--b654f2a76094f76e3d4ee24f.md) | 234 | `declaration-track:b654f2a76094f76e3d4ee24f5ac5b9285633e5f261868f2d63afe35df1a1d5d6` |
| 13 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap-vectorbundle--87299bb0c2cecb700938f0b4.md) | 239 | `declaration-track:87299bb0c2cecb700938f0b401d02a61e2842f6e65c8a2ed43ba336d187af79d` |
| 14 | `def` | [Trivialization.continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/trivialization-continuouslinearmap--29542dfb71b7656ba4ea473a.md) | 248 | `declaration-track:29542dfb71b7656ba4ea473a20f5661f5a44f95877ceda0051b19dd9cacd2c83` |
| 15 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--41a90b840e94daf88596a055.md) | 252 | `declaration-track:41a90b840e94daf88596a055d7f1992f61e27c9ad8347e375394415bfe8dcd05` |
| 16 | `theorem` | [Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/trivialization-baseset-continuouslinearmap--b4f1bcae425a13d8ed7429d0.md) | 261 | `result-track:b4f1bcae425a13d8ed7429d0d7bd0237dd61c715690bf7ef16a8e9a5becbf787` |
| 17 | `theorem` | [Trivialization.continuousLinearMap_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/trivialization-continuouslinearmap-apply--e6aa6073061d4ed14905c4c2.md) | 265 | `result-track:e6aa6073061d4ed14905c4c2146ff22d0e838d7668c23d0848f2fef4eb28f0dc` |
| 18 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/hom-trivializationat-apply--3664589bb0d23d97f7a77217.md) | 272 | `result-track:3664589bb0d23d97f7a77217784f7c6c0d9b6702dd570a04d0f8f73bc5f4fde6` |
| 19 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/hom-trivializationat-source--79b028cbe7e9b57ccf2b8e32.md) | 279 | `result-track:79b028cbe7e9b57ccf2b8e32640ba4ff7f91074ed76b1e512ff33dc39e4a0b78` |
| 20 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Analysis/FunctionalAnalysis/Hom/Variant3515c26d899a858390dcf7f84631c749e255be9fcca5ae419db7a6707a255c8e.lean/declarations/hom-trivializationat-target--6e0f278e642087da264f2e2f.md) | 286 | `result-track:6e0f278e642087da264f2e2f47ca9608fdf666b0a78654ee81c6f64e35ef65fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
