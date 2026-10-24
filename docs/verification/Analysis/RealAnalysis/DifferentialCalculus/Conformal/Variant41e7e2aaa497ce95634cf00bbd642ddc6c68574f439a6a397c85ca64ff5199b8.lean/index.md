# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Conformal.Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "627511b4b28067f5ecb9658033aa3c16f4738bda",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `627511b4b28067f5ecb9658033aa3c16f4738bda`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean.json)

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
| 1 | `theorem` | [isConformalMap_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/isconformalmap-conj--b7bd5f3525ffcacd6498dc70.md) | 74 | `result-track:b7bd5f3525ffcacd6498dc7082f904d3c45b0f3d774c54b2fffec578f8e741fd` |
| 2 | `theorem` | [isConformalMap_complex_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/isconformalmap-complex-linear--464ee14f654cb8cb105bf2cd.md) | 81 | `result-track:464ee14f654cb8cb105bf2cd08bfab5932ae794114969ab5b36e581d9128ecf9` |
| 3 | `theorem` | [isConformalMap_complex_linear_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/isconformalmap-complex-linear-conj--39ff074c95ce20573de0bc00.md) | 96 | `result-track:39ff074c95ce20573de0bc005066a22d1d0893355067ce98a3b20e8489a1fe33` |
| 4 | `theorem` | [IsConformalMap.is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/isconformalmap-is-complex-or-conj-linear--224682a448571c3c2834954d.md) | 108 | `result-track:224682a448571c3c2834954dcaaa229d3b15ff9cc969e605fc51ed0b163737c7` |
| 5 | `theorem` | [isConformalMap_iff_is_complex_or_conj_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/isconformalmap-iff-is-complex-or-conj-linear--5d4f44fe647ea9bef2bb3b08.md) | 125 | `result-track:5d4f44fe647ea9bef2bb3b08d6c339660d554411c4811a429c0fe7c06b6527c3` |
| 6 | `theorem` | [DifferentiableAt.conformalAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/differentiableat-conformalat--f4afe8df1e24db86d50c18fa.md) | 155 | `result-track:f4afe8df1e24db86d50c18fab8e2faa3b88dfeb1597c899989c5a2d3d6408c03` |
| 7 | `theorem` | [conformalAt_iff_differentiableAt_or_differentiableAt_comp_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/conformalat-iff-differentiableat-or-differentiableat-comp-conj--10d1f3e844075485d6681ec5.md) | 163 | `result-track:10d1f3e844075485d6681ec51bf4d83f3d33f0ee2e241646eebe011cbaab8d7f` |
| 8 | `lemma` | [real_linearMap_map_smul_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/real-linearmap-map-smul-complex--8a3136bcd8bc0ea05d1dae8d.md) | 197 | `result-track:8a3136bcd8bc0ea05d1dae8d37f65deb0f00018b958e7212c67694d952870b1d` |
| 9 | `def` | [LinearMap.complexOfReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/linearmap-complexofreal--578d73571407fa1fd32e886c.md) | 215 | `declaration-track:578d73571407fa1fd32e886ce52800e37170a999fdf473c3a5f02f3655fded67` |
| 10 | `lemma` | [LinearMap.coe_complexOfReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/linearmap-coe-complexofreal--330ebc804fdaa7578c493083.md) | 220 | `result-track:330ebc804fdaa7578c4930839736bedeb5379c5b0c5546bdf6375944d1e49254` |
| 11 | `def` | [ContinuousLinearMap.complexOfReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/continuouslinearmap-complexofreal--7c55d0dda427711e7200cc78.md) | 226 | `declaration-track:7c55d0dda427711e7200cc7854b43f2fc98ed7a3d09d95760786ae463b5be6ec` |
| 12 | `lemma` | [ContinuousLinearMap.coe_complexOfReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/continuouslinearmap-coe-complexofreal--4a25c6fb86c7d5f2440cacd7.md) | 231 | `result-track:4a25c6fb86c7d5f2440cacd75c8fccbe716632f04a0033558e57538c14e01c1f` |
| 13 | `theorem` | [differentiableWithinAt_complex_iff_differentiableWithinAt_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/differentiablewithinat-complex-iff-differentiablewithinat-real--409fac34753060ccd03fce69.md) | 239 | `result-track:409fac34753060ccd03fce698eaf4015c310eb1a1691c2147d51ae833400996c` |
| 14 | `theorem` | [HasFDerivWithinAt.complexOfReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/hasfderivwithinat-complexofreal--d9b83daa2b72bbaa3733dd37.md) | 255 | `result-track:d9b83daa2b72bbaa3733dd37c84f916c938e7deadba02155d866c018c6e96b56` |
| 15 | `theorem` | [complexOfReal_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-fderivwithin--b73de4e7444cfc2a7502aa7d.md) | 264 | `result-track:b73de4e7444cfc2a7502aa7d69f8ab9c72615b06fa6c7c6083199da4a1f88edd` |
| 16 | `theorem` | [complexOfReal_hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-hasderivwithinat--92186d90039713cb462d4546.md) | 275 | `result-track:92186d90039713cb462d45460f51b33e0c17ed6a10346be3f32d8b9fa5b51884` |
| 17 | `theorem` | [complexOfReal_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-derivwithin--43e2f1cd730ede12256da052.md) | 285 | `result-track:43e2f1cd730ede12256da052dca9b020850a67679762884c2ff9ed9592e65c57` |
| 18 | `theorem` | [differentiableAt_complex_iff_differentiableAt_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/differentiableat-complex-iff-differentiableat-real--563275ee432038c9034742b3.md) | 294 | `result-track:563275ee432038c9034742b39a3ef8184d6a08fbb5f6b1609a02b17c3af44190` |
| 19 | `theorem` | [HasFDerivAt.complexOfReal_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/hasfderivat-complexofreal-hasfderivat--f3e76e79eb6585c47a985612.md) | 305 | `result-track:f3e76e79eb6585c47a9856120890008f770ce736a1576f23776d3f04f84f346c` |
| 20 | `theorem` | [complexOfReal_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-hasderivat--bbdf5e052e9ecc1afbb8a07b.md) | 314 | `result-track:bbdf5e052e9ecc1afbb8a07bd378ec790b4c98d36e09f178ee3dc0228b96d282` |
| 21 | `theorem` | [complexOfReal_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-deriv--9491c119f9df434e850c322b.md) | 324 | `result-track:9491c119f9df434e850c322bc56f531737d9e8526bfc9418af80039a3107aef0` |
| 22 | `theorem` | [complexOfReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Conformal/Variant41e7e2aaa497ce95634cf00bbd642ddc6c68574f439a6a397c85ca64ff5199b8.lean/declarations/complexofreal-fderiv--fad3cebf442af99c4e29518b.md) | 333 | `result-track:fad3cebf442af99c4e29518b9bd564d9efa677fc31db344e3ff8ac003fd5faac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
