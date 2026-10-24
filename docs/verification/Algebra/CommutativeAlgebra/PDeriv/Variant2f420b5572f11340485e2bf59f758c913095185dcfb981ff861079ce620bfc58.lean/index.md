# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PDeriv.Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9452b322d5a50365a3b1fc3aa8048b292af2f6f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9452b322d5a50365a3b1fc3aa8048b292af2f6f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv--40d73c5cb9a5251fb185a076.md) | 69 | `declaration-track:40d73c5cb9a5251fb185a076637024b71b462c8eca09c452394c16086d0c9bc0` |
| 2 | `theorem` | [pderiv_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-def--361a7d8c1c21f21a83683685.md) | 73 | `result-track:361a7d8c1c21f21a836836854202cfc035e316c27516974bdcd91c95ce40f5a0` |
| 3 | `theorem` | [pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-monomial--892d000ea231a49312629b61.md) | 77 | `result-track:892d000ea231a49312629b616a9ce1ac28c561119de188944840dbe94dc8c8f9` |
| 4 | `lemma` | [X_mul_pderiv_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/x-mul-pderiv-monomial--effd45e219d802943c48c211.md) | 87 | `result-track:effd45e219d802943c48c211c1e56cc791a7c3d4bb2a87a16fb9a8846c99fe61` |
| 5 | `theorem` | [pderiv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-c--d2b50bc7378de57c458f31d6.md) | 94 | `result-track:d2b50bc7378de57c458f31d6e4d41b62616cf2f90353008456fc9080eef82139` |
| 6 | `theorem` | [pderiv_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-one--2ee1332256216e96b42ef774.md) | 97 | `result-track:2ee1332256216e96b42ef774085f7f8a5e2b3f1d8936937ff0580541cf45b3a9` |
| 7 | `theorem` | [pderiv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-x--c484873ef6cb41ece0a28a04.md) | 100 | `result-track:c484873ef6cb41ece0a28a048477bf4119cc9b4dfbcb00b390e5d1b4f17c663f` |
| 8 | `theorem` | [pderiv_X_self](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-x-self--fd6cc5a5232173890cd1e866.md) | 105 | `result-track:fd6cc5a5232173890cd1e866dafd937d856cbff3dc11ab29119c1eb6b7874758` |
| 9 | `theorem` | [pderiv_X_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-x-of-ne--26054a6673e378ef1081d355.md) | 108 | `result-track:26054a6673e378ef1081d3554ec19c1d1f9a471b423e23f7ba25c5d6f141839a` |
| 10 | `theorem` | [pderiv_eq_zero_of_notMem_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-eq-zero-of-notmem-vars--d31a6728aa22c9767075f45f.md) | 111 | `result-track:d31a6728aa22c9767075f45f845e983655f97dfe5f7aea3a72285ee33683ba4d` |
| 11 | `theorem` | [pderiv_monomial_single](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-monomial-single--f806a1d62ff117a2ec0f90b0.md) | 115 | `result-track:f806a1d62ff117a2ec0f90b0f1adb375c6130bce7aaa83f2d92f78c2bb4724b7` |
| 12 | `theorem` | [pderiv_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-mul--e525003160af92c6e7bc403e.md) | 118 | `result-track:e525003160af92c6e7bc403ec26130e2bf1776b312dc61aa2e4ffb35ba35cdd0` |
| 13 | `theorem` | [pderiv_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-pow--da56f07874784c42cb09a259.md) | 122 | `result-track:da56f07874784c42cb09a25928fe3ca5f2916aeb2e8017fda48716535f7c4b36` |
| 14 | `theorem` | [pderiv_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-c-mul--75dad11502d8a4bdea420b3e.md) | 126 | `result-track:75dad11502d8a4bdea420b3e0ffc8ad073aa9f61e6779e249ccae5ecaca7984b` |
| 15 | `theorem` | [coeff_pderiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/coeff-pderiv--0fc2f7b1c41029876d861838.md) | 129 | `result-track:0fc2f7b1c41029876d8618381e852016d51705bac75789ccf8ed55b105252cbe` |
| 16 | `theorem` | [pderiv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-map--1722cf03ad6719f69e788909.md) | 144 | `result-track:1722cf03ad6719f69e78890958baef168580a175178c7f0ae1084f6712723188` |
| 17 | `lemma` | [pderiv_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-rename--4c8cd288152577397089e036.md) | 151 | `result-track:4c8cd288152577397089e036dd1c00ceca3ff5f359afc8ac0450f04f8cf5bb3c` |
| 18 | `lemma` | [aeval_sumElim_pderiv_inl](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/aeval-sumelim-pderiv-inl--b14070506a89489aece11568.md) | 163 | `result-track:b14070506a89489aece11568d0d1ec30f3bfac970d093cabf4f6b944f700a18d` |
| 19 | `lemma` | [pderiv_sumRingEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-sumringequiv--04556f9385bee5f71d107b1a.md) | 176 | `result-track:04556f9385bee5f71d107b1a33aabd8ad3fc414c30d52a169ca65e8443f06807` |
| 20 | `lemma` | [pderiv_sumAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/declarations/pderiv-sumalgequiv--f9cf4c41f68dc1311871c99f.md) | 187 | `result-track:f9cf4c41f68dc1311871c99f2de83630651e33aadf202cb69e0232998fee63ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
