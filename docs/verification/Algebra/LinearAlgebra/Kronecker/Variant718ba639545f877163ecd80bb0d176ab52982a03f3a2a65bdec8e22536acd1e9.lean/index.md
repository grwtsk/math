# Verification target: GRWTSK.Algebra.LinearAlgebra.Kronecker.Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4bd0e04d17c2cff8d335bf7e20dc4d6a5cafad6",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4bd0e04d17c2cff8d335bf7e20dc4d6a5cafad6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerMap](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap--4893c90bf4bbce98fdfc0314.md) | 66 | `declaration-track:4893c90bf4bbce98fdfc03146d5a4a8538ca437296fb8b8849330695a8d9908b` |
| 2 | `theorem` | [kroneckerMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-apply--3c921d53723313f46b45bc79.md) | 72 | `result-track:3c921d53723313f46b45bc7939446dac4a3932a00c250aa6ec28775e5dd7be3a` |
| 3 | `theorem` | [kroneckerMap_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-transpose--8eadf9e5d240917cb6e747bf.md) | 77 | `result-track:8eadf9e5d240917cb6e747bfe05c0cc6ee04eedf092d1983c18de30cf2f2adc7` |
| 4 | `theorem` | [kroneckerMap_map_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-map-left--4e11869be6e5a53de50567b2.md) | 82 | `result-track:4e11869be6e5a53de50567b28a1e3e41f539ad6a978b98e656acccb410596ac4` |
| 5 | `theorem` | [kroneckerMap_map_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-map-right--9a9941f55d974757da7c76b5.md) | 87 | `result-track:9a9941f55d974757da7c76b531768885a8d3a0254900d817cb58d41734f95f16` |
| 6 | `theorem` | [kroneckerMap_map](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-map--bb3d72bcaeb325efa39062dd.md) | 92 | `result-track:bb3d72bcaeb325efa39062ddbceadab578dfcafa3438b181e0434682e51401d0` |
| 7 | `theorem` | [kroneckerMap_zero_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-zero-left--6e96cffb211dac896d177e1d.md) | 98 | `result-track:6e96cffb211dac896d177e1d981c8db072b89d300db301336cd0fd11e8858b3d` |
| 8 | `theorem` | [kroneckerMap_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-zero-right--273602efbf05fa0b45e9e284.md) | 104 | `result-track:273602efbf05fa0b45e9e2847964bfc4095c9f70a2e7520b5a031db00ab11e1e` |
| 9 | `theorem` | [kroneckerMap_add_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-add-left--31a367c8ef04ee5e576eaf27.md) | 109 | `result-track:31a367c8ef04ee5e576eaf27619812efd0e9b6279f40f071242bfe0d3480e31b` |
| 10 | `theorem` | [kroneckerMap_add_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-add-right--3f54ea3401d06decfb810579.md) | 115 | `result-track:3f54ea3401d06decfb810579f5c64c4bfd6a69378563c6cc962acc53050c4ab0` |
| 11 | `theorem` | [kroneckerMap_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-smul-left--8ecff987826eca9b4e7f0fbe.md) | 121 | `result-track:8ecff987826eca9b4e7f0fbe491ce2d7995d8ccb39c3b686a804bce742afbc6e` |
| 12 | `theorem` | [kroneckerMap_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-smul-right--262f2b45ab42b7056bcd8595.md) | 127 | `result-track:262f2b45ab42b7056bcd859574e73c799e70c7f861f4db64176bf04f936e8eba` |
| 13 | `theorem` | [kroneckerMap_diagonal_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-diagonal-diagonal--b878d33ab62f6b6af2a2dd69.md) | 133 | `result-track:b878d33ab62f6b6af2a2dd69df35da83b816c9c3989ce4257d3c3c24c97a660e` |
| 14 | `theorem` | [kroneckerMap_diagonal_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-diagonal-right--3a075295bba1374e86c432e6.md) | 140 | `result-track:3a075295bba1374e86c432e6b6fe763f66c5dba84f1f49e7830f3acbf7995817` |
| 15 | `theorem` | [kroneckerMap_diagonal_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-diagonal-left--14e50d429379a7495c7cfa2f.md) | 147 | `result-track:14e50d429379a7495c7cfa2f8209275c87648a151d7fc898520a993fc7787af8` |
| 16 | `theorem` | [kroneckerMap_one_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-one-one--b9baffe8c48ce47413cce245.md) | 157 | `result-track:b9baffe8c48ce47413cce245e94a7a62099ffdb59e21d8dd849529b359b0f237` |
| 17 | `theorem` | [kroneckerMap_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-reindex--af1d4709aaf68ad64953e412.md) | 163 | `result-track:af1d4709aaf68ad64953e4127e964e9537049d7e22aa4c2df68382b71ceb52f3` |
| 18 | `theorem` | [kroneckerMap_reindex_left](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-reindex-left--6112518dd28fadc1364da3b9.md) | 171 | `result-track:6112518dd28fadc1364da3b9e86abd58855c075ce5f4d0028ddab543da5357da` |
| 19 | `theorem` | [kroneckerMap_reindex_right](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-reindex-right--e18f5fd638db17b5309cc5f5.md) | 178 | `result-track:e18f5fd638db17b5309cc5f5c09d92aaf9b70d78d8b1fd3e24aeb20ec66b27c2` |
| 20 | `theorem` | [kroneckerMap_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-assoc--0a94303d8af32f9fef13ce2f.md) | 185 | `result-track:0a94303d8af32f9fef13ce2f58870691c8522d08206401be44fde04a5a5b5bf4` |
| 21 | `theorem` | [kroneckerMap_assoc₁](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermap-assoc--c0343cedd21e5d3daa14e5f9.md) | 194 | `result-track:c0343cedd21e5d3daa14e5f99239a6cf4dc3763bfef4ef4d838c82bfcbee80c8` |
| 22 | `def` | [kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermapbilinear--42948dbae7b0255929a20e56.md) | 205 | `declaration-track:42948dbae7b0255929a20e56d66521fd55794475b8651efdb240678cabfe2e9f` |
| 23 | `theorem` | [kroneckerMapBilinear_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckermapbilinear-mul-mul--b4c9dc847141e0bee838611b.md) | 217 | `result-track:b4c9dc847141e0bee838611bdcd1322fbc988c2e77d8f4ee6d34d0fc0d9c698f` |
| 24 | `theorem` | [trace_kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/trace-kroneckermapbilinear--fb90fca05ea37639b7461f97.md) | 233 | `result-track:fb90fca05ea37639b7461f97d4c7f43efbf7c0662d77a683d1cc5a4fbba15491` |
| 25 | `theorem` | [det_kroneckerMapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/det-kroneckermapbilinear--bef70f91dfdc91a4958945e4.md) | 244 | `result-track:bef70f91dfdc91a4958945e4151899972a1f579599d133dcb2da88b496481aeb` |
| 26 | `def` | [kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker--70ca94cb8cc2a0a96bb5077b.md) | 276 | `declaration-track:70ca94cb8cc2a0a96bb5077bfd19f260762003a78fcdd44422c3ed20f41c46a3` |
| 27 | `theorem` | [kronecker_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-apply--2dfdeba08feabff5b02c3826.md) | 285 | `result-track:2dfdeba08feabff5b02c38262b0932232d2fc8760975de8b6ffefadd49fbe44b` |
| 28 | `def` | [kroneckerBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckerbilinear--107a043fba6cf4ab972c2de6.md) | 291 | `declaration-track:107a043fba6cf4ab972c2de69bbfc1ec8d4bd8c9ce1f6e6decdd0b159d856078` |
| 29 | `theorem` | [zero_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/zero-kronecker--55e8777398ebbca4711c35ac.md) | 301 | `result-track:55e8777398ebbca4711c35acca8c0b73438369c36b48ff0826d58635efebddce` |
| 30 | `theorem` | [kronecker_zero](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-zero--08ab569e98ba959938f2633b.md) | 306 | `result-track:08ab569e98ba959938f2633b22f3238f7a8bb6a2d26979927e4f4d65a2c67143` |
| 31 | `theorem` | [add_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/add-kronecker--072427082a2697cd3c8e73ad.md) | 310 | `result-track:072427082a2697cd3c8e73ad44fea1fe68b71d91aadc31dded56d932ac80a8df` |
| 32 | `theorem` | [kronecker_add](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-add--86134cdd2e141cb3290b5c9c.md) | 315 | `result-track:86134cdd2e141cb3290b5c9c653dc28eb42fdd3dfb44866913dc628ca03a9c66` |
| 33 | `theorem` | [smul_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/smul-kronecker--dc23270e0cef2308c9071747.md) | 320 | `result-track:dc23270e0cef2308c90717479a9088f495a2559c058d965d4aee16482c0f1bc7` |
| 34 | `theorem` | [kronecker_smul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-smul--6e7ffab08ac36a1927c34ba8.md) | 325 | `result-track:6e7ffab08ac36a1927c34ba87c9b6cfe40a9eb27fc1cf96cf07aed3d3586a3a5` |
| 35 | `theorem` | [diagonal_kronecker_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/diagonal-kronecker-diagonal--90d63dcda1a3e85464f5f94e.md) | 330 | `result-track:90d63dcda1a3e85464f5f94ee563aef6976263c04e0d7c4655332860ecd2208f` |
| 36 | `theorem` | [kronecker_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-diagonal--82b997513132f8ec31e8c904.md) | 335 | `result-track:82b997513132f8ec31e8c90403b75ca9715f4439fbced852cb0276b920dc635d` |
| 37 | `theorem` | [diagonal_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/diagonal-kronecker--539e12a2a8ae0d66a491d654.md) | 340 | `result-track:539e12a2a8ae0d66a491d6540e9aa4cc782e508d3b23eb56849f59191583d65f` |
| 38 | `theorem` | [one_kronecker_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/one-kronecker-one--0069146e565b16e908b1ea02.md) | 347 | `result-track:0069146e565b16e908b1ea02fa27855414834374259294220cb39fd3bbf69953` |
| 39 | `theorem` | [kronecker_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-one--44a19873736da46f5547871c.md) | 352 | `result-track:44a19873736da46f5547871cfbadc8d2e970b6bf7f252802ea803f30cec99b20` |
| 40 | `theorem` | [one_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/one-kronecker--eb6522f6db277d2b6d714d41.md) | 357 | `result-track:eb6522f6db277d2b6d714d419128ca8c0df47d45aad86caaf18bb3126586fd8d` |
| 41 | `theorem` | [mul_kronecker_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/mul-kronecker-mul--2f16f575b762cfe45d2a25b9.md) | 364 | `result-track:2f16f575b762cfe45d2a25b9d74b5bfe332ee7d1e69dddd999c6d2bf5aed2849` |
| 42 | `theorem` | [kronecker_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-assoc--115f991d884ba73d57220611.md) | 371 | `result-track:115f991d884ba73d572206110c2daf2f400c3acf1ceeb76c6a6135750a7cc165` |
| 43 | `theorem` | [kronecker_assoc'](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kronecker-assoc--20ef9ef049ceb2f9df975cbd.md) | 377 | `result-track:20ef9ef049ceb2f9df975cbd64a9ecd4ff168528d77b5381e10f4506edf7a354` |
| 44 | `theorem` | [trace_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/trace-kronecker--40bebb34511e3a526e1b2eb2.md) | 382 | `result-track:40bebb34511e3a526e1b2eb26ea78845fe72b141f79fe8913fec57d4286b778a` |
| 45 | `theorem` | [det_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/det-kronecker--28d5913b882b01eda6be04ad.md) | 387 | `result-track:28d5913b882b01eda6be04ad6a98a247c1a68d2aa041285cfd82622fcd0a936a` |
| 46 | `theorem` | [inv_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/inv-kronecker--701f967a19fd0e8f412f3ae9.md) | 398 | `result-track:701f967a19fd0e8f412f3ae9fa541fa0385830de6a75c360f137861d4a23628b` |
| 47 | `def` | [kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul--e4bec6bcb187bd236ae67ff3.md) | 445 | `declaration-track:e4bec6bcb187bd236ae67ff36e326fc37d02fbc838906cd455e88697d38b1366` |
| 48 | `theorem` | [kroneckerTMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-apply--f73537abde764287aa562f10.md) | 457 | `result-track:f73537abde764287aa562f1074125b80ea7cb32fd96209bf02a3fb8fd1dfe552` |
| 49 | `def` | [kroneckerTMulBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmulbilinear--88c8062b9bf7b0a0b2d31530.md) | 463 | `declaration-track:88c8062b9bf7b0a0b2d315305ba26eaa2a33a9f1430f6b81fa2ea664ed09e132` |
| 50 | `theorem` | [zero_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/zero-kroneckertmul--7abe2b79ea6e0c502cf0a949.md) | 473 | `result-track:7abe2b79ea6e0c502cf0a9494af50840471fb69d31803addf49de92dd7393cdf` |
| 51 | `theorem` | [kroneckerTMul_zero](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-zero--d8c72615a8fe0b0455c4c859.md) | 478 | `result-track:d8c72615a8fe0b0455c4c859bf162f958b44ed5d02f7d612284efc2a14ae5b49` |
| 52 | `theorem` | [add_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/add-kroneckertmul--cf1a7158985fe4e6747949f9.md) | 482 | `result-track:cf1a7158985fe4e6747949f981f7ffb2777ab671c8cd6cc222420af4b3cb9901` |
| 53 | `theorem` | [kroneckerTMul_add](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-add--9f569a2c6c3f81f97cc08e77.md) | 487 | `result-track:9f569a2c6c3f81f97cc08e770bfdcbd25cd5b4fd2494946c7f53806e7c170e03` |
| 54 | `theorem` | [smul_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/smul-kroneckertmul--4b5c2a6bd2c3fc33a426837e.md) | 492 | `result-track:4b5c2a6bd2c3fc33a426837e54e5b497477b06a2a0264a63d5186b21371a3bb2` |
| 55 | `theorem` | [kroneckerTMul_smul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-smul--e6e79d9c009498c09ce6ea7f.md) | 497 | `result-track:e6e79d9c009498c09ce6ea7fb967e88cb0aeece7c9a79112e8b2dd9364b31767` |
| 56 | `theorem` | [diagonal_kroneckerTMul_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/diagonal-kroneckertmul-diagonal--9c0222c1ff839660055cca9e.md) | 502 | `result-track:9c0222c1ff839660055cca9e284998e27036bb463bbf65203b00440a11f22c29` |
| 57 | `theorem` | [kroneckerTMul_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-diagonal--c16ad279950f76c896c770df.md) | 507 | `result-track:c16ad279950f76c896c770df1e75de85fd21cb5f425be9c2140ee037f02d419a` |
| 58 | `theorem` | [diagonal_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/diagonal-kroneckertmul--bb7fbd8939b32709eb93e51c.md) | 512 | `result-track:bb7fbd8939b32709eb93e51c820c369b0c821deb35bb9c7e48b1c083834d7478` |
| 59 | `theorem` | [kroneckerTMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-assoc--351dce88cf9251fc20e416d1.md) | 520 | `result-track:351dce88cf9251fc20e416d17dbcf89f8a65ab4523f0132e398479e82329cfa5` |
| 60 | `theorem` | [kroneckerTMul_assoc'](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/kroneckertmul-assoc--f2e79b708314698e5d9466ab.md) | 528 | `result-track:f2e79b708314698e5d9466ab6b356d177bdecfe9c5c9470a31bf609a271bb5f3` |
| 61 | `theorem` | [trace_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/trace-kroneckertmul--fce26deb0418af4ba0df56fc.md) | 533 | `result-track:fce26deb0418af4ba0df56fc60517f8de4bbb484cfe9d82256dde0af633cd2c1` |
| 62 | `theorem` | [one_kroneckerTMul_one](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/one-kroneckertmul-one--781468f27092e4e47f8fad3b.md) | 551 | `result-track:781468f27092e4e47f8fad3b531fe8370d764c8e351987be72ba71b51970d39b` |
| 63 | `theorem` | [mul_kroneckerTMul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/mul-kroneckertmul-mul--4baf4ab53f5904da6b940337.md) | 556 | `result-track:4baf4ab53f5904da6b940337c2a72e0efce1aa288d8affe46498964d33d7cc28` |
| 64 | `theorem` | [det_kroneckerTMul](../../../../../mathematics/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/declarations/det-kroneckertmul--178d26d9d7a7c8ccb6077e58.md) | 568 | `result-track:178d26d9d7a7c8ccb6077e58a470f41c681277e5d4eb3eb84611b5efda3a1bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
