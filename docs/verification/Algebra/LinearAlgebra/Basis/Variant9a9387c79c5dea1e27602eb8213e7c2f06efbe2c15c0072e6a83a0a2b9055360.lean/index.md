# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72def924832a5de8d4caf8c0631a780ba19f1cdd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72def924832a5de8d4caf8c0631a780ba19f1cdd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean.json)

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
| 1 | `def` | [toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix--e46aafa9330fc3c526cd2161.md) | 51 | `declaration-track:e46aafa9330fc3c526cd2161c05e8b1c3ba6bda874ad041ce88d92364d84ae1f` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-apply--bfb2d1691f3d2471e253cfa6.md) | 55 | `result-track:bfb2d1691f3d2471e253cfa665c4efe00f747457e3d725b1b82c7787854775cc` |
| 3 | `theorem` | [toMatrix_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-transpose-apply--e44f7411fa8c93440430114d.md) | 58 | `result-track:e44f7411fa8c93440430114da338ee09d7076ef211818cb8a3f18e72b8a2771e` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-eq-tomatrix-constr--f44638bd9fc52174421866df.md) | 61 | `result-track:f44638bd9fc52174421866df532dfa98b4c0f4fdd95a55d9eba96e92fb3c6975` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/coepibasisfun-tomatrix-eq-transpose--ed27237de8195c5ba88af9d3.md) | 67 | `result-track:ed27237de8195c5ba88af9d3b311a91266eaf2b3e179f4e2bb5417b066eeb55f` |
| 6 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-self--d1dbb07f4acc1ba179a72117.md) | 73 | `result-track:d1dbb07f4acc1ba179a72117d5362ce26842200227912a9a459e30a4547e15ff` |
| 7 | `theorem` | [toMatrix_update](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-update--82137bd8fb7e270e52d0241d.md) | 78 | `result-track:82137bd8fb7e270e52d0241d521e2dc0592f5654bde0def11242beb59f827107` |
| 8 | `theorem` | [toMatrix_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-unitssmul--eef5058b06e0792bd2c68bd8.md) | 88 | `result-track:eef5058b06e0792bd2c68bd88f7b1041bae9e6cd854049b22526e51afc7178e7` |
| 9 | `theorem` | [toMatrix_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-isunitsmul--7b160001648548463017da87.md) | 96 | `result-track:7b160001648548463017da87c68dddca17bc9f45b3215f1102488f166a7e6d46` |
| 10 | `theorem` | [toMatrix_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-smul-left--2c71ac96431cf0eefc1914dd.md) | 100 | `result-track:2c71ac96431cf0eefc1914dd64a56ee9755ec882689eb1059805508baacf7e5a` |
| 11 | `theorem` | [sum_toMatrix_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/sum-tomatrix-smul-self--f7012b1e734ade9e9ab1af16.md) | 104 | `result-track:f7012b1e734ade9e9ab1af16c58272e61fbdc6d5ac6eceb004fb05b6911c2c8a` |
| 12 | `theorem` | [toMatrix_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-smul--9025bda63c5fc42380becb51.md) | 107 | `result-track:9025bda63c5fc42380becb51b36a977f70f59b88d0501688cdd18725ce92d5bd` |
| 13 | `theorem` | [toMatrix_map_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-map-vecmul--381ed200ec1a7b39b45ba35f.md) | 114 | `result-track:381ed200ec1a7b39b45ba35f218a1a2a2d3884a1c81f47e46cddaff7a760c419` |
| 14 | `theorem` | [toLin_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tolin-tomatrix--9da6ae02561363d868f35796.md) | 121 | `result-track:9da6ae02561363d868f357960aba04509cc6e90162923d234966eb4a8d7482a2` |
| 15 | `def` | [toMatrixEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrixequiv--d5f1dbae6a9bfd9e7a7a49c9.md) | 127 | `declaration-track:d5f1dbae6a9bfd9e7a7a49c973ba7e94d6201820dae999e1a0308fc0bc319caa` |
| 16 | `theorem` | [restrictScalars_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/restrictscalars-tomatrix--b32d6e76d079800ed116b7a1.md) | 150 | `result-track:b32d6e76d079800ed116b7a11bc0ad570fc1415ad3b813c76967f01b887f9632` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/linearmap-tomatrix-id-eq-basis-tomatrix--7a7d07e47991856c19e56f94.md) | 173 | `result-track:7a7d07e47991856c19e56f94c8545ecbf391b0b575e03da7b7e64591f0c004a5` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix--4750287230c44c2df5baafef.md) | 181 | `result-track:4750287230c44c2df5baafef30cda681031ec1262f326d6e83ae91534bd46438` |
| 19 | `theorem` | [basis_toMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/basis-tomatrix-mul--c7fffc6ccdc81f95470776f0.md) | 187 | `result-track:c7fffc6ccdc81f95470776f0a1b8d72a5ef6626e43573bd17062f47d21dfac70` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix--6b130649e319b4b16317a0db.md) | 196 | `result-track:6b130649e319b4b16317a0db208a16e6a932d828aec25fec4bf7872419e37924` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--54b7419d0a053f9c5ed47a57.md) | 201 | `result-track:54b7419d0a053f9c5ed47a5732e99e75b9df7350ad79b3b0a2773c872090a477` |
| 22 | `theorem` | [mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/mul-basis-tomatrix--9e1d21e95e9590de8e109d5e.md) | 207 | `result-track:9e1d21e95e9590de8e109d5eb7f82ac346b3aefd51d3035118da93b51efeb90d` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/basis-tomatrix-basisfun-mul--192d4948bade2e623de5a96f.md) | 214 | `result-track:192d4948bade2e623de5a96f17dd99a8b054496acf5a26deedeadc93d0ab6b96` |
| 24 | `theorem` | [toMatrix_reindex'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-reindex--8a721454612a8f06723e1ac5.md) | 225 | `result-track:8a721454612a8f06723e1ac54bb578cd4391cadcabfea0f597c61462f5600cfd` |
| 25 | `lemma` | [toMatrix_mulVec_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-mulvec-repr--563ecac17720e01d3da1bef5.md) | 233 | `result-track:563ecac17720e01d3da1bef57b87077d2cfbe02a47df5676a11afbf425d796ae` |
| 26 | `theorem` | [toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-mul-tomatrix--17385a6515304b7509322f0e.md) | 245 | `result-track:17385a6515304b7509322f0efb09f624b46ecd4744e0636420703ab989bb4192` |
| 27 | `theorem` | [toMatrix_mul_toMatrix_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-mul-tomatrix-flip--0b9da9baebe8c8a76075d710.md) | 254 | `result-track:0b9da9baebe8c8a76075d710d9975b4c19d2933685141eaee91d19ab75604fde` |
| 28 | `def` | [invertibleToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/invertibletomatrix--969d57cf82828cbf40210666.md) | 259 | `declaration-track:969d57cf82828cbf402106668f0edd026e792baeccd61deaf35c8c09ca30694a` |
| 29 | `theorem` | [toMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-reindex--eb6240925a99b64adf378400.md) | 264 | `result-track:eb6240925a99b64adf378400f4e62d80ae76c44b00803097c12d5169038c360c` |
| 30 | `theorem` | [toMatrix_map](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/tomatrix-map--9e7c9a1dc0a5f61c08f37587.md) | 270 | `result-track:9e7c9a1dc0a5f61c08f37587f2b852dc323b1e08ee488623c1efaf16df77c07d` |
| 31 | `lemma` | [_root_.LinearMap.toMatrix_eq_basisToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/declarations/root-linearmap-tomatrix-eq-basistomatrix--1e3b118916d2996cb1f14746.md) | 275 | `result-track:1e3b118916d2996cb1f14746174cf3347d088147b1d37674e997cef418a92e04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
