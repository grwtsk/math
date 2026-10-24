# Verification target: GRWTSK.Algebra.Basic.Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dd1aee28512de1c6b336c8aac0dbe529d990bbd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dd1aee28512de1c6b336c8aac0dbe529d990bbd`.

Source path: `GRWTSK/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RingHom.isIntegralElem_map](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-map--cebdc51a0ac1970123f97281.md) | 30 | `result-track:cebdc51a0ac1970123f97281766175b2b7deb36545235bc066fa39dde7c157e3` |
| 2 | `theorem` | [isIntegral_algebraMap](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-algebramap--bf465b13bbe39296cf330703.md) | 33 | `result-track:bf465b13bbe39296cf330703c02bada07227a492348cc595f2484c41fec39c8c` |
| 3 | `lemma` | [RingHom.IsIntegralElem.map](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-map--8b9d00b0bad22f81fa108584.md) | 37 | `result-track:8b9d00b0bad22f81fa10858417bd7e216e4cd0ab3c2d5f9722718295a4965238` |
| 4 | `lemma` | [RingHom.IsIntegralElem.of_map](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-of-map--b8c402d88831583891e7dbd1.md) | 43 | `result-track:b8c402d88831583891e7dbd1e7d9fd8e76ede38bf5ee6239639ec6892d39c09c` |
| 5 | `lemma` | [RingHom.IsIntegralElem.map_iff](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-map-iff--c266e04c637408140c836c6f.md) | 50 | `result-track:c266e04c637408140c836c6fb790cd27ab236a793311a6242aafb21fc631572d` |
| 6 | `lemma` | [RingHom.IsIntegralElem.of_comp](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-of-comp--507f05260014e5aefbcf04df.md) | 63 | `result-track:507f05260014e5aefbcf04dff7b02460b9e872df8fab42301a144643bd589565` |
| 7 | `theorem` | [IsIntegral.map](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-map--2f18e97639683a645728b221.md) | 68 | `result-track:2f18e97639683a645728b22125ce2a1fa25424fa8989051a9230e01d99a80027` |
| 8 | `theorem` | [isIntegral_algHom_iff](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-alghom-iff--215db9f1ec0b584b9a77c83d.md) | 79 | `result-track:215db9f1ec0b584b9a77c83d24ebb6d3dd9f6c4bf8eac4bf61d8e52015d1a361` |
| 9 | `theorem` | [Submodule.span_range_natDegree_eq_adjoin](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/submodule-span-range-natdegree-eq-adjoin--5a054c0e0156ba2e12371eee.md) | 86 | `result-track:5a054c0e0156ba2e12371eeefa5bb7962239157d443579417641a925dbe0d6ed` |
| 10 | `theorem` | [IsIntegral.fg_adjoin_singleton](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-fg-adjoin-singleton--e840303c9f9e27906a07b10e.md) | 104 | `result-track:e840303c9f9e27906a07b10e25ebde1b23e6fbf587b308d25964e0cc986bd56e` |
| 11 | `theorem` | [RingHom.isIntegralElem_zero](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-zero--f07a0c108ea21ea28ddff69e.md) | 113 | `result-track:f07a0c108ea21ea28ddff69e70253d0619c3923a1ebc08d4aa9b557e12035a52` |
| 12 | `theorem` | [isIntegral_zero](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-zero--6dc363ba857413386d180834.md) | 116 | `result-track:6dc363ba857413386d1808346cc29f6b694e5c3171edd661a3a625a55580dc22` |
| 13 | `theorem` | [RingHom.isIntegralElem_one](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringhom-isintegralelem-one--e77993386f0845b9f487c934.md) | 119 | `result-track:e77993386f0845b9f487c9347e55b70d65d99a529ae61ac52c2aabddc6b0560c` |
| 14 | `theorem` | [isIntegral_one](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-one--3f9df82be3ea5da1705e8434.md) | 122 | `result-track:3f9df82be3ea5da1705e843439f5b0ae5c9f4cad98f902fa39ce271904f16d98` |
| 15 | `theorem` | [IsIntegral.of_pow](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-of-pow--0b9fbecec0de3810023571b3.md) | 125 | `result-track:0b9fbecec0de3810023571b3b16ed8e6f795865a603e11cc7a8388b223dc220a` |
| 16 | `theorem` | [IsIntegral.of_aeval_monic](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-of-aeval-monic--aad384ee91f19966758736e6.md) | 130 | `result-track:aad384ee91f19966758736e6c10fd7b7a21abf917673bba0fd60f6064f617d69` |
| 17 | `theorem` | [IsIntegral.map_of_comp_eq](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-map-of-comp-eq--8f34742e2a5a62729bf8783e.md) | 143 | `result-track:8f34742e2a5a62729bf8783ed2b297d2df6d63f7a5b6ab69b4ea0caa6a86bc8a` |
| 18 | `theorem` | [isIntegral_algEquiv](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-algequiv--891d24db8779694e69db10cd.md) | 152 | `result-track:891d24db8779694e69db10cd57d677b0bed9210412580e25a748a5cbc6aa27a5` |
| 19 | `theorem` | [IsIntegral.tower_top](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-tower-top--e38fd7c72829baaeb5825442.md) | 158 | `result-track:e38fd7c72829baaeb582544215c6cbd120fe8bb5438bb898b02a9ad0c1aedbe1` |
| 20 | `theorem` | [RingEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/ringequiv-isintegral-iff--f02a3c2d4b513016fbd1ac36.md) | 166 | `result-track:f02a3c2d4b513016fbd1ac3640d239e0ec676747cb148680f971519b467dcbf4` |
| 21 | `theorem` | [map_isIntegral_int](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/map-isintegral-int--5d01bdbee9efd80ad9fc377e.md) | 183 | `result-track:5d01bdbee9efd80ad9fc377e3b7cc57dc173530c29cd53839ac37f8cbf5c6cb5` |
| 22 | `theorem` | [IsIntegral.of_subring](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-of-subring--5bb83457c9f5149cd01840f7.md) | 188 | `result-track:5bb83457c9f5149cd01840f72c5123a46d36b461ba7ebdba1d5f95164540964b` |
| 23 | `theorem` | [IsIntegral.algebraMap](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-algebramap--18b458ab213d5f1669ab513c.md) | 191 | `result-track:18b458ab213d5f1669ab513cd7f8a7deaacb61cdd26f48b05ab905c76ef8cf41` |
| 24 | `theorem` | [isIntegral_algebraMap_iff](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-algebramap-iff--fecf3465748eb8c37cde10af.md) | 197 | `result-track:fecf3465748eb8c37cde10af0c3ab0f7a5b82f2863f81d95f571531065b0afe0` |
| 25 | `theorem` | [isIntegral_iff_isIntegral_closure_finite](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-iff-isintegral-closure-finite--936ed9852b2e98f124a5e7f5.md) | 201 | `result-track:936ed9852b2e98f124a5e7f511cf709c48ad80eaec737edef343b237e36fc39d` |
| 26 | `theorem` | [fg_adjoin_of_finite](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/fg-adjoin-of-finite--b59e059b59b12d27ec3305b9.md) | 211 | `result-track:b59e059b59b12d27ec3305b9f83a56e0a4fc28a1fd0c0bc47562028a72c42356` |
| 27 | `theorem` | [Algebra.finite_adjoin_of_finite_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/algebra-finite-adjoin-of-finite-of-isintegral--934d988406f56fca0d0a4c3f.md) | 223 | `result-track:934d988406f56fca0d0a4c3f84c75b6ebaf9ef44ce3e210404e3b7e4fb24b3d0` |
| 28 | `theorem` | [Algebra.finite_adjoin_simple_of_isIntegral](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/algebra-finite-adjoin-simple-of-isintegral--e32f001def7257f54017af64.md) | 227 | `result-track:e32f001def7257f54017af64cd358b059f5a0db57bb676542f2a19ac9a5b0470` |
| 29 | `theorem` | [isNoetherian_adjoin_finset](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isnoetherian-adjoin-finset--d5db68b9e3434aa24852ca61.md) | 231 | `result-track:d5db68b9e3434aa24852ca612a6a564b07758b46c686dd9ac416539f859f94b6` |
| 30 | `theorem` | [IsIntegral.pair](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-pair--1ec6e50cd2bdc1f841ee8b55.md) | 243 | `result-track:1ec6e50cd2bdc1f841ee8b5543ddd87bc979152c0cef1dd4aba57da50f25569e` |
| 31 | `theorem` | [IsIntegral.pair_iff](../../../../mathematics/Algebra/Basic/Variant168b0e9c32bebbca24efd87eb10ba31c9c7395597c2abea70f043929beddcbbd.lean/declarations/isintegral-pair-iff--90042b3a8029b93a5e9a4cde.md) | 253 | `result-track:90042b3a8029b93a5e9a4cdebc4776b1411250d46bae3e355a75be638aa6ac52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
