# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ScaleRoots.Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39eea03aa4745efc5bd2f3e803d1c9455d3325da",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39eea03aa4745efc5bd2f3e803d1c9455d3325da`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean.json)

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
| 1 | `def` | [scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots--3ac39a56244e7a38de69c2a2.md) | 37 | `declaration-track:3ac39a56244e7a38de69c2a2fde34c43d0fbd839299d2d83a8f9744d91abc5df` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/coeff-scaleroots--5b04200e90610db7af4b06bd.md) | 41 | `result-track:5b04200e90610db7af4b06bdd123caf5a31f9f487fb1a0d2a1b7acb6887e0b92` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/coeff-scaleroots-natdegree--a0c27fa7f2eb191fac26162f.md) | 45 | `result-track:a0c27fa7f2eb191fac26162fbf5fc52b7952901952fb618f4da05b2e688aba4c` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/zero-scaleroots--6dbd0e24d5185020ef535856.md) | 50 | `result-track:6dbd0e24d5185020ef535856d512381a60b66e9f2638b10944fc873ad898282c` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-ne-zero--fc67fc3ac1e0390a47005cbe.md) | 54 | `result-track:fc67fc3ac1e0390a47005cbe7549593d7f2863bafceecc6bbe26f61580c3a45c` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/support-scaleroots-le--5f8597f3bf4650aaa570cb45.md) | 61 | `result-track:5f8597f3bf4650aaa570cb4513d93d094c294392a049c1b577c646db6bcff86a` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/support-scaleroots-eq--a16af3250cfeb12fdae5f850.md) | 65 | `result-track:a16af3250cfeb12fdae5f8502afb3c8ab93ebd556c2cce2649cc3fcd3555f491` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/degree-scaleroots--c8ce276c4ea0a71c7b300990.md) | 75 | `result-track:c8ce276c4ea0a71c7b3009905ddae09510287b0f50c8b71226c9dba701ef0864` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/natdegree-scaleroots--b2ef5d31169143fe82a10958.md) | 86 | `result-track:b2ef5d31169143fe82a10958d6829830bb5d4c06f4ed4b7a4f74c15fcb7e3e9b` |
| 10 | `lemma` | [leadingCoeff_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/leadingcoeff-scaleroots--b8eb09748fa16380df932471.md) | 90 | `result-track:b8eb09748fa16380df932471520e62d84c420a159301197607c2c7c462cd52cb` |
| 11 | `theorem` | [monic_scaleRoots_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/monic-scaleroots-iff--34958927928378bbe0d89c71.md) | 94 | `result-track:34958927928378bbe0d89c719a9c4ba83b11307483c48b6d81a50567b84dca75` |
| 12 | `theorem` | [map_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/map-scaleroots--c10e6ff26659723e853b839f.md) | 97 | `result-track:c10e6ff26659723e853b839f315c746243df678ce77b13c8338d0ac87f1f70aa` |
| 13 | `lemma` | [scaleRoots_C](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-c--87d0c05a43c9deb7181947e3.md) | 103 | `result-track:87d0c05a43c9deb7181947e32d01baafd01e7826aec41eada218f81c5c3928b9` |
| 14 | `lemma` | [scaleRoots_one](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-one--581062290f47ffa1c367b364.md) | 107 | `result-track:581062290f47ffa1c367b3646a4140e3f255c4d08295b354c10e950551b0a2e8` |
| 15 | `lemma` | [scaleRoots_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-zero--e10b8d64f0db588d50d9cd93.md) | 111 | `result-track:e10b8d64f0db588d50d9cd939123ee5bee85b7c8a5dcb800d18280902031dc81` |
| 16 | `lemma` | [one_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/one-scaleroots--9f81c8aef8d0bf235797f102.md) | 123 | `result-track:9f81c8aef8d0bf235797f1029132a5932f8e057cdb8ee66cbdb6301eacf344f8` |
| 17 | `lemma` | [X_add_C_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/x-add-c-scaleroots--10451c4dfc2dc7c20c61294f.md) | 127 | `result-track:10451c4dfc2dc7c20c61294fb9e2331659268fe5d10eb951ca2ba8cd503d526a` |
| 18 | `theorem` | [scaleRoots_eval₂_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-eval-mul-of-commute--962873101ca70331d08ce09a.md) | 137 | `result-track:962873101ca70331d08ce09adae3a426fe484287bf046e29f706395527bd9ba0` |
| 19 | `theorem` | [scaleRoots_eval₂_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-eval-mul--993bbb19c49128185db092c1.md) | 157 | `result-track:993bbb19c49128185db092c1cabe5e3bb69f49f0070d2a03c7bc66d1d38f842e` |
| 20 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-eval-eq-zero--b5d9ca1c206896167311e74e.md) | 161 | `result-track:b5d9ca1c206896167311e74e24657bf35b73a08f2d3fff7348c9830e2c370149` |
| 21 | `lemma` | [scaleRoots_eval_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-eval-mul--16da1df03536edf698af8608.md) | 164 | `result-track:16da1df03536edf698af8608ce60b306b98fac9746bd20b897a8674a46b2abe1` |
| 22 | `lemma` | [scaleRoots_aeval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-aeval-smul--5a7d5d2f10cd1641a33d8e26.md) | 168 | `result-track:5a7d5d2f10cd1641a33d8e2677382138f40295f33bef522b48ca89d1271e02d7` |
| 23 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-aeval-eq-zero--d62f4c8e5e84e0364d92da53.md) | 173 | `result-track:d62f4c8e5e84e0364d92da5390f3065fee95a497d63a0ac6e4130e2b6076f265` |
| 24 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero--8b4b2f9b42c9ef5f5203087c.md) | 179 | `result-track:8b4b2f9b42c9ef5f5203087c17d389e80fc99a1b3e4f02261783a4ec339e5773` |
| 25 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero--f82853d563ab6ecfd669d062.md) | 188 | `result-track:f82853d563ab6ecfd669d06286a02e1a9fb47f21d6abfa2cb12e562df94e9eac` |
| 26 | `lemma` | [scaleRoots_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-mul--31fe64ff22eafdfdbc60cfef.md) | 195 | `result-track:31fe64ff22eafdfdbc60cfefea1bfa6ae649c16b79ad36a8d86d453630ea2b58` |
| 27 | `lemma` | [mul_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/mul-scaleroots--4f3b9d017989345620df0ca0.md) | 201 | `result-track:4f3b9d017989345620df0ca04fb5f9e6f3fc4b5e383a97f932cde0514b0ead56` |
| 28 | `lemma` | [mul_scaleRoots'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/mul-scaleroots--3ff2bcac7d90d8fb66edf2f0.md) | 225 | `result-track:3ff2bcac7d90d8fb66edf2f0da54451d7eefb769eaee83354a9eefdc96fcb6c2` |
| 29 | `lemma` | [mul_scaleRoots_of_noZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/mul-scaleroots-of-nozerodivisors--14e22fb7dfc11e9249c7c0ce.md) | 229 | `result-track:14e22fb7dfc11e9249c7c0ceccbe9b14d636b9e43a0b884913e9bd516ccbcebc` |
| 30 | `lemma` | [pow_scaleRoots'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/pow-scaleroots--c92eb898d78a99a35c954781.md) | 236 | `result-track:c92eb898d78a99a35c95478108f1ae8153b2b24a8fc23d3d21ef44b62b579dfb` |
| 31 | `lemma` | [pow_scaleRoots_of_isReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/pow-scaleroots-of-isreduced--bac3c39e40a7a71c45206953.md) | 246 | `result-track:bac3c39e40a7a71c4520695303825be61d867206455d19b526ff6f63dd34a3c1` |
| 32 | `lemma` | [add_scaleRoots_of_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/add-scaleroots-of-natdegree-eq--7bf5697bfef2dba6ffe7f24e.md) | 254 | `result-track:7bf5697bfef2dba6ffe7f24e0a74eb7a7278c80d3fe0a2597fa6bc5338d6eaf1` |
| 33 | `lemma` | [scaleRoots_dvd'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-dvd--ce2093c082c53ad36600fbdc.md) | 268 | `result-track:ce2093c082c53ad36600fbdcc424b95e3ad301620e170503191c4b46cbeebbd3` |
| 34 | `lemma` | [scaleRoots_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-dvd--9ad9a9e6f405f1c4c55197b6.md) | 275 | `result-track:9ad9a9e6f405f1c4c55197b6e61ea2ef7ea29a5353c9d53b396af07d09bff658` |
| 35 | `lemma` | [scaleRoots_dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/scaleroots-dvd-iff--c5a18386c114bf5f63d06960.md) | 282 | `result-track:c5a18386c114bf5f63d069609297bce47c895b15fc4f5d883b04318f8f80208e` |
| 36 | `lemma` | [isCoprime_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/iscoprime-scaleroots--e5e6fcb96cc544aa413f1499.md) | 288 | `result-track:e5e6fcb96cc544aa413f14992fe0acf4930327ba9354d07bc190693d2e9da0a4` |
| 37 | `lemma` | [Splits.scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/splits-scaleroots--64520e87edeb78b6472f2eb6.md) | 303 | `result-track:64520e87edeb78b6472f2eb62f216ccfae8a85d5ab803aa496548a246bc00088` |
| 38 | `lemma` | [X_sub_C_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/x-sub-c-scaleroots--ccbd6f6c5304bf5b51bcdf73.md) | 328 | `result-track:ccbd6f6c5304bf5b51bcdf73e5fec2e3799d197d191bb797ae0551da14e28232` |
| 39 | `lemma` | [rootMultiplicity_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/rootmultiplicity-scaleroots--6b8b6042ef5f1c759105cc41.md) | 339 | `result-track:6b8b6042ef5f1c759105cc41349f0860ba54dfefdf1793bd35bffe26bf29de01` |
| 40 | `lemma` | [roots_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Variant36c2e7168cfa25a90bc76f330a7a534012d85d012aa072684605353bbb40b435.lean/declarations/roots-scaleroots--73229669416ee239bfa517a6.md) | 358 | `result-track:73229669416ee239bfa517a613ab0a52616b27fde003a58709777973a2e1933f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
