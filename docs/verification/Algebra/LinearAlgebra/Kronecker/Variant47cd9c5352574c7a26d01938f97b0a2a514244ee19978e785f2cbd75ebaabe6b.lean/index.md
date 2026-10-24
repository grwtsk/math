# Verification target: GRWTSK.Algebra.LinearAlgebra.Kronecker.Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeac634e4c5a0cbcbc8485bf9bca2e394a1f166`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerMap](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap--fc7b43c998690813e2f33cc1.md) | 58 | `declaration-track:fc7b43c998690813e2f33cc19a4a69be218cf75ad1c5258614bb4129ddbd89ef` |
| 2 | `theorem` | [kroneckerMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-apply--0df8773a8e233fc95acae04b.md) | 64 | `result-track:0df8773a8e233fc95acae04bb4de6e77a490f9397de310ef9e74722a8be953d1` |
| 3 | `theorem` | [kroneckerMap_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-transpose--30db8ceaadc4cc566bb65d67.md) | 69 | `result-track:30db8ceaadc4cc566bb65d672ef56e5a14432345f32c8c6dab48a879b1c738ee` |
| 4 | `theorem` | [kroneckerMap_map_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-map-left--75dbe42d849c8932ad26b2f9.md) | 74 | `result-track:75dbe42d849c8932ad26b2f9e9dbc1f24f1eb438b54e2078fc570c968d734604` |
| 5 | `theorem` | [kroneckerMap_map_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-map-right--98fb1458d224dda0f4ffd680.md) | 79 | `result-track:98fb1458d224dda0f4ffd6802a1a062a44ece73883558ff7b93863535bd5742c` |
| 6 | `theorem` | [kroneckerMap_map](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-map--3924fd1cdafd29898dc5aaa2.md) | 84 | `result-track:3924fd1cdafd29898dc5aaa2d581d37517dafc06113845c7a03401da0131087c` |
| 7 | `theorem` | [kroneckerMap_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-zero-left--54f0311e89a26f71c79e80bb.md) | 90 | `result-track:54f0311e89a26f71c79e80bb114aa95f61837608344c79c84521f5b4d15d39a8` |
| 8 | `theorem` | [kroneckerMap_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-zero-right--24227cff5758a13c182fae31.md) | 96 | `result-track:24227cff5758a13c182fae31f76876f7aba360df3b3f8801cc27edd1f5a52590` |
| 9 | `theorem` | [kroneckerMap_add_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-add-left--fd96aa6af2ac9166c19459d3.md) | 101 | `result-track:fd96aa6af2ac9166c19459d3235fbee28de25db80d7c49d46e269d3ef291897f` |
| 10 | `theorem` | [kroneckerMap_add_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-add-right--29f7e743dc45d8731e891020.md) | 107 | `result-track:29f7e743dc45d8731e8910206e46a50b18459051e9421f8e1720e8e769ea998a` |
| 11 | `theorem` | [kroneckerMap_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-smul-left--003eba9afc33ae2811ab7175.md) | 113 | `result-track:003eba9afc33ae2811ab71752ebd83e3a67de3a1c5b1ed9ecfa6553cd579ce55` |
| 12 | `theorem` | [kroneckerMap_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-smul-right--c86668623e6e0e7228cbaa24.md) | 119 | `result-track:c86668623e6e0e7228cbaa2460ab1ed9a0977fea9097afb47dad93b960fc162b` |
| 13 | `theorem` | [kroneckerMap_diagonal_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-diagonal-diagonal--e694b2f43737048117529288.md) | 125 | `result-track:e694b2f43737048117529288801581461e75344f9546c01fb4e65c7d62279c47` |
| 14 | `theorem` | [kroneckerMap_diagonal_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-diagonal-right--321a526353133bcb772a4a46.md) | 132 | `result-track:321a526353133bcb772a4a46e07314b6cd96a07b57d4430fdb119548483ad063` |
| 15 | `theorem` | [kroneckerMap_diagonal_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-diagonal-left--d2fcf1580ecf51c9ef869c75.md) | 139 | `result-track:d2fcf1580ecf51c9ef869c7531d4bd2842f981e0730a109d5ad14a0c6f396675` |
| 16 | `theorem` | [kroneckerMap_one_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-one-one--de826d86e62949d2d836ab16.md) | 149 | `result-track:de826d86e62949d2d836ab1635d415d2d2709c0d99686915641d9b42aff6daa2` |
| 17 | `theorem` | [kroneckerMap_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-reindex--872f43903df1c61448c01c95.md) | 155 | `result-track:872f43903df1c61448c01c95ffe19b905c6f5349f85e7387b1a016dc36341ce4` |
| 18 | `theorem` | [kroneckerMap_reindex_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-reindex-left--b38eacfcb2c6aa3bd0e8a15d.md) | 163 | `result-track:b38eacfcb2c6aa3bd0e8a15de60f24fbed431818533eca06c199f12c27d11284` |
| 19 | `theorem` | [kroneckerMap_reindex_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-reindex-right--7a50d69d773f4105db9e4d9f.md) | 170 | `result-track:7a50d69d773f4105db9e4d9f78909f77b557fc638f5c7957d8e109e7bd9c507c` |
| 20 | `theorem` | [kroneckerMap_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-assoc--7d35ccf5a1ca9a56208e6328.md) | 177 | `result-track:7d35ccf5a1ca9a56208e6328149416de7c42e55e1b0140e30f1c3be49aa05c1b` |
| 21 | `theorem` | [kroneckerMap_assoc₁](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermap-assoc--223d8a4c124adc49ad8fcb7f.md) | 186 | `result-track:223d8a4c124adc49ad8fcb7f0f5a6c603b7daed542be45f1e29fd98dfd55bfee` |
| 22 | `def` | [kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermapbilinear--17f2ababb404e46ac2f238c7.md) | 197 | `declaration-track:17f2ababb404e46ac2f238c7cb11601719ba9c66517c35ce19938cd56a163a65` |
| 23 | `theorem` | [kroneckerMapBilinear_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckermapbilinear-mul-mul--b178431eebea6649b72ef8e6.md) | 209 | `result-track:b178431eebea6649b72ef8e622ee4e0f94baa0aa58936b0a6e8998cc81cb83b0` |
| 24 | `theorem` | [trace_kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/trace-kroneckermapbilinear--60a04643bca6208df11f015d.md) | 225 | `result-track:60a04643bca6208df11f015d33d025e9d0c8c296d8b4710fa74c445075e656de` |
| 25 | `theorem` | [det_kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/det-kroneckermapbilinear--2f8dd8ef0b42b611d783ec7b.md) | 236 | `result-track:2f8dd8ef0b42b611d783ec7b4e187679be40edbe586f5e1719bfe40cce606c4d` |
| 26 | `def` | [kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker--440a65e89779bddf6559d3b7.md) | 268 | `declaration-track:440a65e89779bddf6559d3b7c54e6aa2b1611a00de0778d6513fa7d502cb2fb0` |
| 27 | `theorem` | [kronecker_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-apply--51c8765b28f853a28653b96e.md) | 277 | `result-track:51c8765b28f853a28653b96eef5e1a266982426dce201ce347e8a947ec362645` |
| 28 | `def` | [kroneckerBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckerbilinear--284cd53e0d7f336038da5fda.md) | 283 | `declaration-track:284cd53e0d7f336038da5fdafe98fbe77de343514e5732386164c1bc319c9fb3` |
| 29 | `theorem` | [zero_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/zero-kronecker--f6b71c47f24f62e68c07f1a8.md) | 293 | `result-track:f6b71c47f24f62e68c07f1a892e028edc314ce8509f133c3b93714c810484f76` |
| 30 | `theorem` | [kronecker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-zero--0ab42e4c0fc0cf78b53367ce.md) | 298 | `result-track:0ab42e4c0fc0cf78b53367ceac268df05b3d045e1c36054ef43f5094fc73504e` |
| 31 | `theorem` | [add_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/add-kronecker--955a00bfe93850b015b32e09.md) | 302 | `result-track:955a00bfe93850b015b32e09bd61da7c265ac70ce39cf066ec162a0ebf904b1c` |
| 32 | `theorem` | [kronecker_add](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-add--d1d416a1808d0288f79dc658.md) | 307 | `result-track:d1d416a1808d0288f79dc6582cf7cbbe5909941173f94a13b46aa2a2cd14e5a2` |
| 33 | `theorem` | [smul_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/smul-kronecker--733aeed85d9353bc9c2ca599.md) | 312 | `result-track:733aeed85d9353bc9c2ca5993d6a1e6acafeab19b59c7efe3c3e245228f73d5b` |
| 34 | `theorem` | [kronecker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-smul--f14329ccd3f15bef3c0b4dca.md) | 317 | `result-track:f14329ccd3f15bef3c0b4dcaedb6c515a78d5e991b4db7c7c58667e93d290639` |
| 35 | `theorem` | [diagonal_kronecker_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/diagonal-kronecker-diagonal--647ae53c9f589abbd9260851.md) | 322 | `result-track:647ae53c9f589abbd9260851b8ea2e629521cafc6e5fb6af8112a8ddc88379e1` |
| 36 | `theorem` | [kronecker_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-diagonal--1e57e46d64db7141927e9fe5.md) | 327 | `result-track:1e57e46d64db7141927e9fe5931ad070bed5ade9fcdc34265a4a595f7aaaf530` |
| 37 | `theorem` | [diagonal_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/diagonal-kronecker--09a2b86835775409aad4e95e.md) | 332 | `result-track:09a2b86835775409aad4e95ea3268a768495b053c09e37ffb0fc6ddeba3bf5af` |
| 38 | `theorem` | [one_kronecker_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/one-kronecker-one--e7c25c33acf2fd702c48986e.md) | 339 | `result-track:e7c25c33acf2fd702c48986e7ba742fae192010994280059e439dc6ceff22e88` |
| 39 | `theorem` | [kronecker_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-one--8c70ed031415479b031a3ab9.md) | 344 | `result-track:8c70ed031415479b031a3ab942b87dccb2cccc749416fca5324ddced3e41049f` |
| 40 | `theorem` | [one_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/one-kronecker--86782327eb90a5c9efe2dd0b.md) | 349 | `result-track:86782327eb90a5c9efe2dd0bd038467832522990973796b9d091bcb2c209152f` |
| 41 | `theorem` | [mul_kronecker_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/mul-kronecker-mul--3f2c069138023c94d19e2c15.md) | 356 | `result-track:3f2c069138023c94d19e2c1559600846a1e6aa2e99b7e3167c5ba39af582a02b` |
| 42 | `theorem` | [kronecker_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-assoc--c1f17d8e78e28fa185ebaa0b.md) | 363 | `result-track:c1f17d8e78e28fa185ebaa0b0a12384750f3c4d8cebc9f46cc6a28e5db29ee2f` |
| 43 | `theorem` | [kronecker_assoc'](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kronecker-assoc--b3aa5af7e920a82df155f90b.md) | 369 | `result-track:b3aa5af7e920a82df155f90b6ef6cd5ab7737dd3814b6a4755ec9cabe335cb89` |
| 44 | `theorem` | [trace_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/trace-kronecker--dd5a71e4133dabb503fc7bcc.md) | 374 | `result-track:dd5a71e4133dabb503fc7bcc9240a13f4ae66ff62708d19185c3d37e4f8a504e` |
| 45 | `theorem` | [det_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/det-kronecker--475f2aa4ea03b756bae2021c.md) | 379 | `result-track:475f2aa4ea03b756bae2021cf807920aa020c346517819a43477b1c9a0540aeb` |
| 46 | `theorem` | [inv_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/inv-kronecker--65e18f8c52291b06c2e6babc.md) | 390 | `result-track:65e18f8c52291b06c2e6babceccfd93c3f9cab32e368ad59494210a314af15f6` |
| 47 | `def` | [kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul--33a51ffff336c13b256c82a0.md) | 437 | `declaration-track:33a51ffff336c13b256c82a0081723e9a621418fa178bdea2f0d4210dff13b36` |
| 48 | `theorem` | [kroneckerTMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-apply--8d5ed3574e10cd45b6626135.md) | 449 | `result-track:8d5ed3574e10cd45b66261351461f9f39fdb6db7dd5c6f7a9f1eac3f87875621` |
| 49 | `def` | [kroneckerTMulBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmulbilinear--c5fecf72b5cba1403c9cd4a5.md) | 455 | `declaration-track:c5fecf72b5cba1403c9cd4a505978e320baa16e562c696457485bb3bf9575fab` |
| 50 | `theorem` | [zero_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/zero-kroneckertmul--49f56393817910b0494d02b4.md) | 465 | `result-track:49f56393817910b0494d02b4c5be5d46e3cd766d59d0486d61529402ee77c357` |
| 51 | `theorem` | [kroneckerTMul_zero](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-zero--9cb6a838edc3644a937cd8af.md) | 470 | `result-track:9cb6a838edc3644a937cd8af99d79d2e1ae4ddaa90cad6349c4c241a113a5dbd` |
| 52 | `theorem` | [add_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/add-kroneckertmul--b2a27dba8d3d73abc98152cb.md) | 474 | `result-track:b2a27dba8d3d73abc98152cb141f0d9c5cdff47b9ac7da2d17db5fd57d70f7dc` |
| 53 | `theorem` | [kroneckerTMul_add](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-add--64ce03bd3595814ebc20b857.md) | 479 | `result-track:64ce03bd3595814ebc20b8571af5954a4b58e65826793c102661a3050557f4ad` |
| 54 | `theorem` | [smul_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/smul-kroneckertmul--2b010c65d9138adebaf1ce36.md) | 484 | `result-track:2b010c65d9138adebaf1ce36cd53af425bb7842d801099d281962dd34e4a339d` |
| 55 | `theorem` | [kroneckerTMul_smul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-smul--b9e75b21195c40e1c19643e8.md) | 489 | `result-track:b9e75b21195c40e1c19643e8c7981da0407562139fd6446af39646afdc197bd7` |
| 56 | `theorem` | [diagonal_kroneckerTMul_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/diagonal-kroneckertmul-diagonal--350189c3e213212ed0dd67ca.md) | 494 | `result-track:350189c3e213212ed0dd67cab4e9efe6163cdc7e9ec6f624d1e5dbedf6337565` |
| 57 | `theorem` | [kroneckerTMul_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-diagonal--94a8011c72db52f8dda95c20.md) | 499 | `result-track:94a8011c72db52f8dda95c20f04cdb49143825d70ea8e68a8ec5eb0e3cc1bdc5` |
| 58 | `theorem` | [diagonal_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/diagonal-kroneckertmul--f59b5b8fe43a6607d2a63253.md) | 504 | `result-track:f59b5b8fe43a6607d2a63253cc80392ba40e0e3a4e3979b860047ff8cdfd3703` |
| 59 | `theorem` | [kroneckerTMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-assoc--5ca75f537f791bb708c29931.md) | 512 | `result-track:5ca75f537f791bb708c2993160fd77eca7e6965296dc205835d552cbac5542dc` |
| 60 | `theorem` | [kroneckerTMul_assoc'](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/kroneckertmul-assoc--74d4d7fe889eaf3f8b175470.md) | 520 | `result-track:74d4d7fe889eaf3f8b17547008d4e7029762482ef5f42bb891e9ce1987f74793` |
| 61 | `theorem` | [trace_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/trace-kroneckertmul--1b26066ff67d9fc3abe712a6.md) | 525 | `result-track:1b26066ff67d9fc3abe712a6fd0dd2930fffd16501fa6902baaa5470a0603e8f` |
| 62 | `theorem` | [one_kroneckerTMul_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/one-kroneckertmul-one--c0a162c582aeb493e3df7a05.md) | 543 | `result-track:c0a162c582aeb493e3df7a058452a80c536c9b959fd8443b7038471c957ec1e4` |
| 63 | `theorem` | [mul_kroneckerTMul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/mul-kroneckertmul-mul--d63bd0167e8482d089200aaf.md) | 548 | `result-track:d63bd0167e8482d089200aaf73b5b21b45371413b092f0a2a919699217fac4e1` |
| 64 | `theorem` | [det_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant47cd9c5352574c7a26d01938f97b0a2a514244ee19978e785f2cbd75ebaabe6b.lean/declarations/det-kroneckertmul--72a57b4fb697072dc96b9838.md) | 560 | `result-track:72a57b4fb697072dc96b9838030550d3485a43e0818b79587313a6fcad9c8f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
