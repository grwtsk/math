# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousLinearMap.Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5332a7b25cbac894f0e4e997de90b90e039ea166",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5332a7b25cbac894f0e4e997de90b90e039ea166`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean.json)

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
| 1 | `def` | [LinearMap.mkContinuous](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuous--f40169939322b995aed9a6d3.md) | 63 | `declaration-track:f40169939322b995aed9a6d3d7a4761b0522faa113bf15fd36ab5ddb8de79053` |
| 2 | `def` | [LinearMap.mkContinuousOfExistsBound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuousofexistsbound--358e9b0cc71912f50d2457b5.md) | 69 | `declaration-track:358e9b0cc71912f50d2457b5e1ae9afb5ed963a4b6ad306a576c4e3fbe7932a5` |
| 3 | `theorem` | [continuous_of_linear_of_boundₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuous-of-linear-of-bound--0204a0caa11943ebd90310b8.md) | 74 | `result-track:0204a0caa11943ebd90310b8e8a81e21a5061d52d14fca2419744e116abba68f` |
| 4 | `theorem` | [continuous_of_linear_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuous-of-linear-of-bound--8171ce7f03cb1300f8cf4886.md) | 83 | `result-track:8171ce7f03cb1300f8cf4886001c3b45d6978606ace91896f3e2894a4ba6f0a7` |
| 5 | `theorem` | [LinearMap.mkContinuous_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuous-coe--4b7db4374df109be02245ad2.md) | 89 | `result-track:4b7db4374df109be02245ad2f59f3bd43ec4e485a8f85867eeb1db09f686812f` |
| 6 | `theorem` | [LinearMap.mkContinuous_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuous-apply--265d95e2175535fc8c163476.md) | 94 | `result-track:265d95e2175535fc8c163476afc106333044cd147ffbc001b3d208e5c8421fa4` |
| 7 | `theorem` | [LinearMap.mkContinuousOfExistsBound_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuousofexistsbound-coe--3eb52d72357c62792c71481a.md) | 99 | `result-track:3eb52d72357c62792c71481aafedf30f514c2937b11826e4ca015896889acfa6` |
| 8 | `theorem` | [LinearMap.mkContinuousOfExistsBound_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-mkcontinuousofexistsbound-apply--ed10db1bef79f893a35f6be7.md) | 104 | `result-track:ed10db1bef79f893a35f6be7bc0c3c23d37915dc3016300c114f106be2f0b563` |
| 9 | `theorem` | [antilipschitz_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/antilipschitz-of-bound--acd7e5bab2127ad50093efb1.md) | 110 | `result-track:acd7e5bab2127ad50093efb1a8877fa8df027a9afec32140cccc5af3e86e85b4` |
| 10 | `theorem` | [bound_of_antilipschitz](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/bound-of-antilipschitz--338891606b14968c6cefeb73.md) | 114 | `result-track:338891606b14968c6cefeb73201399490367ad4a724f95419d01ffbef069fb5f` |
| 11 | `def` | [LinearEquiv.toContinuousLinearEquivOfBounds](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearequiv-tocontinuouslinearequivofbounds--b99b3c0a26181a26a5a3f386.md) | 126 | `declaration-track:b99b3c0a26181a26a5a3f386276c6c106edfc848d3f9994d6081ed98bb6331cf` |
| 12 | `def` | [LinearMap.toContinuousLinearMap₁](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-tocontinuouslinearmap--902bef71c34a0aa844b68498.md) | 143 | `declaration-track:902bef71c34a0aa844b68498f015a4bb2fb03a907081b041f4a8fc2adfb443d4` |
| 13 | `theorem` | [LinearMap.toContinuousLinearMap₁_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-tocontinuouslinearmap-coe--4a647a2826c3c7cbec54e0a2.md) | 149 | `result-track:4a647a2826c3c7cbec54e0a27bd6efba037200fb0d290abc4844c65968245088` |
| 14 | `theorem` | [LinearMap.toContinuousLinearMap₁_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/linearmap-tocontinuouslinearmap-apply--885b6c53ea01f61e4d1669a5.md) | 154 | `result-track:885b6c53ea01f61e4d1669a572aaf79c740f8e42123e02e93b9841c977c66aba` |
| 15 | `theorem` | [ContinuousLinearMap.isUniformEmbedding_of_bound](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuouslinearmap-isuniformembedding-of-bound--d26ac5a75d404ec6d15e61c3.md) | 165 | `result-track:d26ac5a75d404ec6d15e61c3b9c0f8cf8091e262d363d14c6f1bf406108a5448` |
| 16 | `def` | [ContinuousLinearMap.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuouslinearmap-ofhomothety--1f829c918cac5293c53b11da.md) | 184 | `declaration-track:1f829c918cac5293c53b11da811c41ffcf2bd7824a1cab55eb53b9fbc91c03fd` |
| 17 | `theorem` | [ContinuousLinearEquiv.homothety_inverse](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuouslinearequiv-homothety-inverse--d8a0372ddbf01391594e43ba.md) | 190 | `result-track:d8a0372ddbf01391594e43ba61d12c21ac0a4709ec26f67f1317f5ff8a285865` |
| 18 | `def` | [ContinuousLinearEquiv.ofHomothety](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousLinearMap/Variant7387748a12188fc8d768b6e1cd221223caee693e43d3d57549473cd6df53a3ef.lean/declarations/continuouslinearequiv-ofhomothety--d5c39925930ea43aa5d5c0ee.md) | 196 | `declaration-track:d5c39925930ea43aa5d5c0ee40af856252146d55cdb6bbdfea28e01c3abf4c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
