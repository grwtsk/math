# Verification target: GRWTSK.Analysis.Extend.Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8140733071406b0be915248b2f96d7b74acca1a",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/index.md) · [Full source](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8140733071406b0be915248b2f96d7b74acca1a`.

Source path: `GRWTSK/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean.json)

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
| 1 | `theorem` | [opNorm_extend_le](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/opnorm-extend-le--0a6bc33a540e3c035c965c42.md) | 62 | `result-track:0a6bc33a540e3c035c965c42616be447fec62ab23eab6a4526cd438fe41e97f0` |
| 2 | `def` | [compLeftInverse](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/compleftinverse--0cbc6a4ab3e4dfa55fda9ae4.md) | 100 | `declaration-track:0cbc6a4ab3e4dfa55fda9ae411f7de2507fa544ba935640a1ca8aee47deb0b72` |
| 3 | `theorem` | [compLeftInverse_apply_of_bdd](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/compleftinverse-apply-of-bdd--f8ded844c9094b302a11eca9.md) | 116 | `result-track:f8ded844c9094b302a11eca94b3142cf3614647da51caf91762e2335ade25ab0` |
| 4 | `def` | [extendOfNorm](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofnorm--0803d0739cff08c6ef382c68.md) | 135 | `declaration-track:0803d0739cff08c6ef382c68391ca2a5f9e5c338c89430719f7f4b7fce91b80f` |
| 5 | `theorem` | [extendOfNorm_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofnorm-eq--a17a93de10d2a49b5fa8a45a.md) | 139 | `result-track:a17a93de10d2a49b5fa8a45ac13e09baf3dfcfe95262efe35cd2494302b35aff` |
| 6 | `theorem` | [norm_extendOfNorm_apply_le](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/norm-extendofnorm-apply-le--988849ed4937e10ebe10c237.md) | 146 | `result-track:988849ed4937e10ebe10c23741c529691acea27efbad7947b7151e4cd489b354` |
| 7 | `theorem` | [extendOfNorm_unique](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofnorm-unique--42a947cf512ea414e0e80d4e.md) | 154 | `result-track:42a947cf512ea414e0e80d4efc71fb857c9b3e8baafa8edcb625a8082eea13e8` |
| 8 | `theorem` | [opNorm_extendOfNorm_le](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/opnorm-extendofnorm-le--a47ed9f4576e80a4f470db90.md) | 174 | `result-track:a47ed9f4576e80a4f470db90921c6598266c8dfb3524f733d894086cc8f2384a` |
| 9 | `def` | [extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry--e80b6988cb866e9aa6b2d483.md) | 191 | `declaration-track:e80b6988cb866e9aa6b2d483c332a7fed3e0327440b68a035eaafde42c0da78e` |
| 10 | `theorem` | [extendOfIsometry_apply](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-apply--fbab78aefca0ebf143bd0fe9.md) | 200 | `result-track:fbab78aefca0ebf143bd0fe99cb055ebb112eee8c88521f18e7050568ea22db6` |
| 11 | `theorem` | [extendOfIsometry_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-eq--0794a2a952e11ac490c159e6.md) | 205 | `result-track:0794a2a952e11ac490c159e66fd2a93b80f697f699522d72f0959c7962bf7570` |
| 12 | `theorem` | [toContinuousLinearMap_extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/tocontinuouslinearmap-extendofisometry--494cd58303ea1a501480a054.md) | 209 | `result-track:494cd58303ea1a501480a05460fa57c997761b9e0fc3f275fee59e7c5a5db4fa` |
| 13 | `theorem` | [extendOfIsometry_unique](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-unique--a17c51ad177751a28bb8ef7c.md) | 213 | `result-track:a17c51ad177751a28bb8ef7c62aa3f1846945a4cec5d8ecb2d7d5fb106bec6ab` |
| 14 | `def` | [extend](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extend--a7bd75fe642880e25e6e2843.md) | 239 | `declaration-track:a7bd75fe642880e25e6e284300f6db89396d2b555e59383ead051aee76948c47` |
| 15 | `theorem` | [extend_apply](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extend-apply--66e0de4008cd80d306afb25e.md) | 258 | `result-track:66e0de4008cd80d306afb25ec8c6c5bc3082f2b51618227fa715ef4cc54197f8` |
| 16 | `theorem` | [extend_symm_apply](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extend-symm-apply--585fe44b805e9993deac39c1.md) | 264 | `result-track:585fe44b805e9993deac39c1711817b63c1345dd46ecd49270e3658f48487239` |
| 17 | `theorem` | [extend_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extend-eq--2c915156dcac0f1424286e2b.md) | 271 | `result-track:2c915156dcac0f1424286e2b3692d65cf41ece8674a8e2e6c1ca2b2286bf3ddb` |
| 18 | `theorem` | [extend_symm_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extend-symm-eq--ab10364c3ff0e7dcf074fcd2.md) | 277 | `result-track:ab10364c3ff0e7dcf074fcd266375e9bfba82873d8139a94fe0ca1319f28eb3c` |
| 19 | `theorem` | [norm_extend_le](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/norm-extend-le--c7492168fa8c9a6cf2a07c53.md) | 282 | `result-track:c7492168fa8c9a6cf2a07c53646a5cef9f98769d6c77ce9aa4d01fcac11e93ce` |
| 20 | `theorem` | [norm_extend_symm_le](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/norm-extend-symm-le--9d81e3541e9c028e931bb7c7.md) | 287 | `result-track:9d81e3541e9c028e931bb7c75bafe05f4f67de598522453edc2e388892cf1c51` |
| 21 | `def` | [extendOfIsometry](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry--b654828c13c52c1780b7aba6.md) | 307 | `declaration-track:b654828c13c52c1780b7aba610ac898e4a795b83948d6451f44c3df7f8184df3` |
| 22 | `theorem` | [extendOfIsometry_apply](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-apply--ca97516542f5f856b5fdb192.md) | 319 | `result-track:ca97516542f5f856b5fdb192b291b9a7e0ec3e6feaaa27fbec0a1cd904772a97` |
| 23 | `theorem` | [extendOfIsometry_symm_apply](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-symm-apply--0a915b6ad0e4207a93202e29.md) | 324 | `result-track:0a915b6ad0e4207a93202e297624442b61561c64adfc536ef80ed490a86fae2a` |
| 24 | `theorem` | [extendOfIsometry_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-eq--bb78a4e692a4a78d2eb87f58.md) | 330 | `result-track:bb78a4e692a4a78d2eb87f58e606c647931dbeea0146e84a9a0f8237ed8474aa` |
| 25 | `theorem` | [extendOfIsometry_symm_eq](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/extendofisometry-symm-eq--85ff0b384691dcf846fdae72.md) | 336 | `result-track:85ff0b384691dcf846fdae7230e800290801bb798bece6b5777af103f3dcf9e7` |
| 26 | `def` | [fromCompletion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/fromcompletion--739e9c144e29294746945245.md) | 363 | `declaration-track:739e9c144e2929474694524534afbecad68a911f3f6291edca77a35484f39a7a` |
| 27 | `theorem` | [fromCompletion_apply_coe](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/fromcompletion-apply-coe--5d4c893b8d38832cbe731758.md) | 368 | `result-track:5d4c893b8d38832cbe7317584919e79e771a68fe45e3fe972f9f31819b8e95ae` |
| 28 | `theorem` | [coe_fromCompletion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/coe-fromcompletion--286f3bcd21be65d0a33a4c4a.md) | 372 | `result-track:286f3bcd21be65d0a33a4c4afa5e355f4ce0dd6412d70feed07bd4183f6a8d29` |
| 29 | `theorem` | [toContinuousLinearMap_fromCompletion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/tocontinuouslinearmap-fromcompletion--5249838cc9c78a454c312b32.md) | 377 | `result-track:5249838cc9c78a454c312b328b781c615ffe1e65c4d5fef0a2e2d9d1529a7ef7` |
| 30 | `theorem` | [toAddMonoidHom_fromCompletion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/toaddmonoidhom-fromcompletion--ba1b40dfeda9a94f490e3a9c.md) | 381 | `result-track:ba1b40dfeda9a94f490e3a9ce54acaf5675e0b801173a769be210318d8526c67` |
| 31 | `def` | [completion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/completion--f1f88a9443375f720ee6183b.md) | 394 | `declaration-track:f1f88a9443375f720ee6183b9eb1734af37aaff5205658548eb0482134ca600e` |
| 32 | `theorem` | [completion_apply_coe](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/completion-apply-coe--9d8ca8b939712b924e8aab0b.md) | 400 | `result-track:9d8ca8b939712b924e8aab0b0ac8ae007d42d507988c6b5a836883ceb8708162` |
| 33 | `theorem` | [coe_completion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/coe-completion--3435fcb2be84e2bf985e4ec8.md) | 404 | `result-track:3435fcb2be84e2bf985e4ec8901829196aaebe4fe78b26bc749b834434b1232f` |
| 34 | `theorem` | [toContinuousLinearMap_completion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/tocontinuouslinearmap-completion--19955181f3ddef7527fe0e20.md) | 409 | `result-track:19955181f3ddef7527fe0e205d0c4c7eefcf3eb8524e330ff246023fc21ef3b6` |
| 35 | `theorem` | [toAddMonoidHom_completion](../../../../mathematics/Analysis/Extend/Variant2431beff48e2afced6743dc5aeb35dfb0a94a6490ac9481b9fb9eb7fdfba0491.lean/declarations/toaddmonoidhom-completion--d9d34619d023fc6f52f3525c.md) | 417 | `result-track:d9d34619d023fc6f52f3525cd6e17cb1bee4d7135db99edaf068afcc37bb0e83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
