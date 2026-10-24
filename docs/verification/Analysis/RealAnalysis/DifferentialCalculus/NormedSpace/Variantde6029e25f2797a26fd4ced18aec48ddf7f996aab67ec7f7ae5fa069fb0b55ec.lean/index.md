# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09d0e278e238af3a1b9ccdbfc3df6d90fbad9c49",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09d0e278e238af3a1b9ccdbfc3df6d90fbad9c49`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DifferentiableWithinAt.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiablewithinat-comp-mdifferentiablewithinat--49a229771f3a4c58df1d28e8.md) | 58 | `result-track:49a229771f3a4c58df1d28e843c9d44e66e4fff081ef3bf3cbedd288a16abf90` |
| 2 | `theorem` | [DifferentiableAt.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiableat-comp-mdifferentiablewithinat--d2aa38bf40a09a1a27219783.md) | 64 | `result-track:d2aa38bf40a09a1a27219783949dd51b7e04c21ff627e3c404dd49f5406f4f8d` |
| 3 | `theorem` | [DifferentiableAt.comp_mdifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiableat-comp-mdifferentiableat--d6f339f61963c508527f202a.md) | 69 | `result-track:d6f339f61963c508527f202a31689df068b3c060ed2295964cc27c636d9f9d86` |
| 4 | `theorem` | [Differentiable.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiable-comp-mdifferentiablewithinat--9e4fd0bb2c29440d3a38469b.md) | 74 | `result-track:9e4fd0bb2c29440d3a38469b8b981732788f748dabae9fc3a7ed4089b43776c7` |
| 5 | `theorem` | [Differentiable.comp_mdifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiable-comp-mdifferentiableat--fb1cf38b03731227d151fa0f.md) | 79 | `result-track:fb1cf38b03731227d151fa0f61e436819af2efc3db47060c0e487d852babff70` |
| 6 | `theorem` | [Differentiable.comp_mdifferentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/differentiable-comp-mdifferentiable--00ec470d7d64d9e57de8af6e.md) | 84 | `result-track:00ec470d7d64d9e57de8af6e1bf0f872b68092707c6684d09558024ee146834b` |
| 7 | `theorem` | [MDifferentiableWithinAt.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-clm-precomp--fb0fc9ddc40806f08fe67473.md) | 95 | `result-track:fb0fc9ddc40806f08fe67473cf2e2012a7b803cdba87d8fe5472c81f55d9566c` |
| 8 | `theorem` | [MDifferentiableAt.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-clm-precomp--2ce73d55be8fd6371294e26d.md) | 106 | `result-track:2ce73d55be8fd6371294e26d10b4b133e6dfa59c792b577755f3b7173a66a55a` |
| 9 | `theorem` | [MDifferentiableOn.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-clm-precomp--9aac8e43a17c0a9678f01090.md) | 114 | `result-track:9aac8e43a17c0a9678f0109040f7cc8e4f3f39f3b6d31e65a794d7b3855e4104` |
| 10 | `theorem` | [MDifferentiable.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-clm-precomp--945242be53a5c9d4096a8986.md) | 120 | `result-track:945242be53a5c9d4096a8986c3cc890444b03499b80a5736bc4e6562b04cf1b3` |
| 11 | `theorem` | [MDifferentiableWithinAt.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-clm-postcomp--77ac7572422724ede52397f2.md) | 129 | `result-track:77ac7572422724ede52397f25b45950b42b148484f8e8554eeb3984331acddd4` |
| 12 | `theorem` | [MDifferentiableAt.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-clm-postcomp--26f665a679b172049c3a3342.md) | 141 | `result-track:26f665a679b172049c3a3342d66cb4adf94fa10e8215ae2ff191bcfe4d682b2a` |
| 13 | `theorem` | [MDifferentiableOn.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-clm-postcomp--467cef78768a2059da69ee1e.md) | 150 | `result-track:467cef78768a2059da69ee1e89df98cb8ec1e6b34524a6919645635d062b51ef` |
| 14 | `theorem` | [MDifferentiable.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-clm-postcomp--d8ced380fc6813831216a83e.md) | 156 | `result-track:d8ced380fc6813831216a83ef0d0d008d768d2fadd82a346d07bb067bff96457` |
| 15 | `theorem` | [MDifferentiableWithinAt.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-clm-comp--eb3b8afe5c4636995cb6c701.md) | 162 | `result-track:eb3b8afe5c4636995cb6c7017f6fe78c5070360786e31973fbef41a94095f036` |
| 16 | `theorem` | [MDifferentiableAt.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-clm-comp--e16e6aa247cef2cf2838915f.md) | 172 | `result-track:e16e6aa247cef2cf2838915f990c0577b5ff4b146eef4436dbac970123c7fc36` |
| 17 | `theorem` | [MDifferentiableOn.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-clm-comp--41e02abd1af561dbe22e1f50.md) | 178 | `result-track:41e02abd1af561dbe22e1f50ff2173a270755383c19489c825a5517fcf758bbc` |
| 18 | `theorem` | [MDifferentiable.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-clm-comp--fa6c8296b73c47ff0be11500.md) | 184 | `result-track:fa6c8296b73c47ff0be11500550b76803a1bcc48b43cab8ba5d71c31024b360e` |
| 19 | `theorem` | [MDifferentiableWithinAt.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-clm-apply--edbbda13cb4c56d9525031a3.md) | 190 | `result-track:edbbda13cb4c56d9525031a3f053dd9037c6c4938634d920c5ed1f157b1b9dd2` |
| 20 | `theorem` | [MDifferentiableAt.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-clm-apply--3a2af394269c6655826c6d39.md) | 202 | `result-track:3a2af394269c6655826c6d390e74d84f19dc85a946abbacf4c33e69d925dd43c` |
| 21 | `theorem` | [MDifferentiableOn.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-clm-apply--e76cb017c1276844cdfe04c9.md) | 211 | `result-track:e76cb017c1276844cdfe04c9fed1a183166bff289fdf4e98fb400f993b59a07f` |
| 22 | `theorem` | [MDifferentiable.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-clm-apply--68f391752a2f0b2e7d8175fc.md) | 215 | `result-track:68f391752a2f0b2e7d8175fc5972d4318e13b5599b4a7ffb080dc8165234029f` |
| 23 | `theorem` | [MDifferentiableWithinAt.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-cle-arrowcongr--600a77709e10ac4d5a09b24b.md) | 219 | `result-track:600a77709e10ac4d5a09b24ba2fe97696e89ac6adc87e56c2821b7b770fcb523` |
| 24 | `theorem` | [MDifferentiableAt.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-cle-arrowcongr--f6153999fce0b27883c1c414.md) | 229 | `result-track:f6153999fce0b27883c1c414011dba85dc68de268f0f3bb2d6b47940b3e0af5a` |
| 25 | `theorem` | [MDifferentiableOn.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-cle-arrowcongr--a56b2d5a10fb0a98074b454b.md) | 238 | `result-track:a56b2d5a10fb0a98074b454b373c3533577a6e02b4489483527961351222d527` |
| 26 | `theorem` | [MDifferentiable.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-cle-arrowcongr--220716a9d679dd762ace4a89.md) | 245 | `result-track:220716a9d679dd762ace4a8964ecd3990ffa6de84b668ba4e4af0b5b86e03d0f` |
| 27 | `theorem` | [MDifferentiableWithinAt.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-clm-prodmap--bfdaa1a03bc4db0f1794fa08.md) | 252 | `result-track:bfdaa1a03bc4db0f1794fa0877dbc0d4b70a1e503ca348390a37b7aab23e4a3f` |
| 28 | `theorem` | [MDifferentiableAt.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-clm-prodmap--34282fab2a873d4f4f3dfb53.md) | 261 | `result-track:34282fab2a873d4f4f3dfb53a3e70ecc3ab7cf496af3eddc8962e4c08d27532d` |
| 29 | `theorem` | [MDifferentiableOn.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-clm-prodmap--051ad63bc8f9e5a4c6a8d78d.md) | 270 | `result-track:051ad63bc8f9e5a4c6a8d78d29ada09b1d846ad406c29f0b78c27d507416b67e` |
| 30 | `theorem` | [MDifferentiable.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-clm-prodmap--b407e4e63ed0b45215cb3cb7.md) | 276 | `result-track:b407e4e63ed0b45215cb3cb7461bace0a2c1d19e9cba3e0918e271b808f95244` |
| 31 | `theorem` | [MDifferentiableWithinAt.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiablewithinat-smul--20db81bf961effd542e44953.md) | 285 | `result-track:20db81bf961effd542e4495380864e24ae88c9c4f78d08b37e1a0a0a62ceb505` |
| 32 | `theorem` | [MDifferentiableAt.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableat-smul--00fdb8a7a3344ea3d9a170c2.md) | 291 | `result-track:00fdb8a7a3344ea3d9a170c2df77ec4f9c0433ad93d97612506aa0c6a9f0fbdd` |
| 33 | `theorem` | [MDifferentiableOn.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiableon-smul--f27b5dd6b5e102125791555e.md) | 295 | `result-track:f27b5dd6b5e102125791555e103d979114e783eae4cf6ec43d52a90413a61e10` |
| 34 | `theorem` | [MDifferentiable.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variantde6029e25f2797a26fd4ced18aec48ddf7f996aab67ec7f7ae5fa069fb0b55ec.lean/declarations/mdifferentiable-smul--2cf02f6a8091878d8cd456ea.md) | 299 | `result-track:2cf02f6a8091878d8cd456ea54b824ca37858c54e3fc816c1501bbd2f504c490` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
