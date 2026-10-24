# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Comp.Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7dee1ff3320db9442853106989cda47b2c0a221",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7dee1ff3320db9442853106989cda47b2c0a221`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean.json)

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
| 1 | `theorem` | [HasFDerivAtFilter.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivatfilter-comp--74c06f594802a383d64e37c7.md) | 49 | `result-track:74c06f594802a383d64e37c7d8026d98bdec8e564c6120a8080115b1e34ce58a` |
| 2 | `theorem` | [HasStrictFDerivAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasstrictfderivat-comp--1c32cc613d0ccb410226cd64.md) | 70 | `result-track:1c32cc613d0ccb410226cd6442328a303f868660f8e5f15fca29117ef4f15340` |
| 3 | `theorem` | [HasFDerivWithinAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivwithinat-comp--131e157e87365916c92b74f6.md) | 76 | `result-track:131e157e87365916c92b74f665befdb5c96758739c46e8fda11503bb3a3bbdfe` |
| 4 | `theorem` | [HasFDerivAt.comp_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivat-comp-hasfderivwithinat--769c18d33578faa7f8f066d8.md) | 83 | `result-track:769c18d33578faa7f8f066d88bc2310675b3a1e8d9fa389ba56ae6743d91f5c8` |
| 5 | `theorem` | [HasFDerivWithinAt.comp_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivwithinat-comp-of-tendsto--b6f3ba9a92883306b9809f00.md) | 89 | `result-track:b6f3ba9a92883306b9809f00389dc6cb9f8873cd3a8e434c67b6b90b045a8ac8` |
| 6 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivwithinat-comp-hasfderivat--820f0bc5803b2d2f6d40bd89.md) | 94 | `result-track:820f0bc5803b2d2f6d40bd898f4de0a369462f30a997c41d8292a924c3c800d7` |
| 7 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivwithinat-comp-hasfderivat-of-eq--87ee3b973903e982efdeeb25.md) | 100 | `result-track:87ee3b973903e982efdeeb25f81501f334553a63b6c7963ff9d08edf56a4030b` |
| 8 | `theorem` | [HasFDerivAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivat-comp--ab4798ad01f77ae574109c17.md) | 107 | `result-track:ab4798ad01f77ae574109c17e1f37fc3f783d1862966815f35988a8d2a82b5b4` |
| 9 | `theorem` | [DifferentiableWithinAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiablewithinat-comp--dc2181473ead40bb60cae5bd.md) | 112 | `result-track:dc2181473ead40bb60cae5bd56ba4736ede05aebab699275dee3395d7d4d69e4` |
| 10 | `theorem` | [DifferentiableWithinAt.comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiablewithinat-comp--e325a0a5eb96a5d14697ad8b.md) | 118 | `result-track:e325a0a5eb96a5d14697ad8bee8d070983a3f7ac67946f1d336df1fa05f4d7bd` |
| 11 | `theorem` | [DifferentiableAt.fun_comp'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableat-fun-comp--8de769ddcb6c25bee670f4f1.md) | 124 | `result-track:8de769ddcb6c25bee670f4f1f6cce75bb0324de66126930e4cada467882719aa` |
| 12 | `theorem` | [DifferentiableAt.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableat-comp--8e07e0bd6fe84d1eca7000ad.md) | 129 | `result-track:8e07e0bd6fe84d1eca7000ada9a9a4637b5cf2ad80c7c67d9107e90dc84eb504` |
| 13 | `theorem` | [DifferentiableAt.comp_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableat-comp-differentiablewithinat--755b5fbe131b8d786c9cbb31.md) | 134 | `result-track:755b5fbe131b8d786c9cbb31eba60caabc99f10b9d53102eb7590f2614f570c6` |
| 14 | `theorem` | [fderivWithin_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderivwithin-comp--032fe4c8757aa489c4a5c60c.md) | 142 | `result-track:032fe4c8757aa489c4a5c60cac46033d4f3f5752bac93516e9a1de4896ddc999` |
| 15 | `theorem` | [fderivWithin_comp_of_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderivwithin-comp-of-eq--478aeade4b54938a21ef866a.md) | 148 | `result-track:478aeade4b54938a21ef866a5978f7ed4f4cc788a47caf92ec8452c3ec43e2d0` |
| 16 | `theorem` | [fderivWithin_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderivwithin-fderivwithin--255f00b4a303ac3b59ea16e5.md) | 159 | `result-track:255f00b4a303ac3b59ea16e5533385cdfd8087ba6e4f96f6bfffeee5812a1a0f` |
| 17 | `theorem` | [fderivWithin_comp₃](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderivwithin-comp--9e9aa00bc383988b504510af.md) | 168 | `result-track:9e9aa00bc383988b504510aff3ac752a1382b951dd849689842f93fdc703cc33` |
| 18 | `theorem` | [fderiv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderiv-comp--2fa9919e48982532c3fac6c7.md) | 179 | `result-track:2fa9919e48982532c3fac6c7bf79d3bb1a891f6c9251cc0dfab9c0c3c00d52c6` |
| 19 | `theorem` | [fderiv_comp_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/fderiv-comp-fderivwithin--0b0b01f6e111a046e63ae1c9.md) | 184 | `result-track:0b0b01f6e111a046e63ae1c92956a5f29878d689ccf0083e9a34d1e4ad4a8aa9` |
| 20 | `theorem` | [DifferentiableOn.fun_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableon-fun-comp--ed7ea9ffcef3b6b45ac15fd9.md) | 190 | `result-track:ed7ea9ffcef3b6b45ac15fd997e866069f68f670a24435ed523d04fc33647a1d` |
| 21 | `theorem` | [DifferentiableOn.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableon-comp--bf26509383d8b9f27ebc96f3.md) | 196 | `result-track:bf26509383d8b9f27ebc96f3ddd78b448f9f678ad6e565ee9c82cd9ac860e67c` |
| 22 | `theorem` | [Differentiable.fun_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiable-fun-comp--a7fa686c40364f11a37bc958.md) | 201 | `result-track:a7fa686c40364f11a37bc958903851085a77f76d5db3a8d67c90f9905e4cf06d` |
| 23 | `theorem` | [Differentiable.comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiable-comp--233962f7f2195e51e64fd2e0.md) | 206 | `result-track:233962f7f2195e51e64fd2e095672f4769de4c78c613d03fb869f8ca5a646f7c` |
| 24 | `theorem` | [Differentiable.comp_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiable-comp-differentiableon--83f4cdecdb348d0c347a15a7.md) | 211 | `result-track:83f4cdecdb348d0c347a15a78ad9abc2b8b907c1544156a172cd138b04e0a00f` |
| 25 | `theorem` | [Differentiable.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiable-iterate--02ac9a0b0152aa426b515131.md) | 217 | `result-track:02ac9a0b0152aa426b51513130825f64ab9cd784a6d5fa9f947117a72d4bc925` |
| 26 | `theorem` | [DifferentiableOn.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableon-iterate--b41e08694f99af6296c0cf0b.md) | 222 | `result-track:b41e08694f99af6296c0cf0b80d550cf4c9acb0c17b88bb4d398a993a17cdc9d` |
| 27 | `theorem` | [HasFDerivAtFilter.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivatfilter-iterate--5e2193e0c0b97c268a8c0e4c.md) | 228 | `result-track:5e2193e0c0b97c268a8c0e4cd2811006cfcc5a201e19f0614a06ec39125b8090` |
| 28 | `theorem` | [HasFDerivAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivat-iterate--168dae2e1890c2be3d516f10.md) | 238 | `result-track:168dae2e1890c2be3d516f103a847c996aca6b7546a53f35596910ddf11bafdb` |
| 29 | `theorem` | [HasFDerivWithinAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasfderivwithinat-iterate--a95a22f631262466069eb88c.md) | 244 | `result-track:a95a22f631262466069eb88c6938c4cd5f4033001242999c14b1b8b8930ec482` |
| 30 | `theorem` | [HasStrictFDerivAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/hasstrictfderivat-iterate--a9f707f55bd4a40d3610a2dc.md) | 251 | `result-track:a9f707f55bd4a40d3610a2dceb150b3aab799f52fb7ea6fbf6d980e93605e9b4` |
| 31 | `theorem` | [DifferentiableAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiableat-iterate--0eda9fce28f1eaae234ceb16.md) | 258 | `result-track:0eda9fce28f1eaae234ceb16043e7a693ac3e38437a0f5de92004bd3ab7ac480` |
| 32 | `theorem` | [DifferentiableWithinAt.iterate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantb25791b5363ec250130d10d34fd77b9c2b24af63bfd89479b9b3c8443ebf74ed.lean/declarations/differentiablewithinat-iterate--cbef468c9ec4e0949899b2c2.md) | 263 | `result-track:cbef468c9ec4e0949899b2c248cc35398adf7fe04bbe9c93e64b7221f845d1a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
