# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv.Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78e88de176be3cdcd6cdc6c71938299c987810a6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78e88de176be3cdcd6cdc6c71938299c987810a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapinvolution--1e6e8abb2f77afcefb33bf2a.md) | 48 | `declaration-track:1e6e8abb2f77afcefb33bf2a1f735cc230a3bf34e75e81848d7e871b2bfc7990` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapinvolution-apply--1982f59241a26765f9c22d81.md) | 56 | `result-track:1982f59241a26765f9c22d818d10e4682f1194aec7896b7d6b1ad61043a400c7` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapinvolution-sq--aff12cbd79f9071d4b75318b.md) | 62 | `result-track:aff12cbd79f9071d4b75318b784c3af058601ccc1e949fbcf990ed0ea5e5b347` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapinvolution-comp-self--d7cedf2041e3b96cd40907a6.md) | 67 | `result-track:d7cedf2041e3b96cd40907a6a2a853138e814771e97da8e2029087c30b67aa5f` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapsymmetricprojection--bec32ec41f3d2946e5d159d1.md) | 73 | `declaration-track:bec32ec41f3d2946e5d159d1fe694ebc38301bdde62f7399e0e167e057147bd5` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapantisymmetricprojection--c8b9521c2db80c83c563eb8b.md) | 77 | `declaration-track:c8b9521c2db80c83c563eb8bc7c57d21d8b0e9df42ee4d724661adeddf0a17ce` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapsymmetricprojection-apply--4e3f079469d21531554a193c.md) | 81 | `result-track:4e3f079469d21531554a193c7224d5b5c9aa658fd1dd1bf1b17efa95ff910023` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapantisymmetricprojection-apply--eab39eef68d0f78946c8fa4c.md) | 88 | `result-track:eab39eef68d0f78946c8fa4c15e143884842527737f1a2b9334f9bf772fce58c` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swap-projection-decomposition--742b1508ce6c1382ceca2f94.md) | 95 | `result-track:742b1508ce6c1382ceca2f94ce27f38ed3c8afe0e1f4fd5b107f3f71abfad94d` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapsymmetricprojection-idempotent--86b45192536fb938d2e21516.md) | 100 | `result-track:86b45192536fb938d2e21516e72c1e19adf013cdf94f2b8a2d8e5ff47555b970` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapantisymmetricprojection-idempotent--fc6d510bcecc37c14881ce4c.md) | 107 | `result-track:fc6d510bcecc37c14881ce4cc54e95da6818dcc2b7c9f8a622b82c1ee40401ed` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapsymmetric-after-antisymmetric--a6aa860581d9e119f19e8e44.md) | 115 | `result-track:a6aa860581d9e119f19e8e44881068202f3a821751ea2eeb0f83fcd1fd6ec2cd` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapantisymmetric-after-symmetric--02d33a21fb2dc36a6277c76e.md) | 120 | `result-track:02d33a21fb2dc36a6277c76ea69837368d741b7bbffb3d9c95e638914eeec31a` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swap-on-symmetric--408797d54e208dc6756d1aca.md) | 125 | `result-track:408797d54e208dc6756d1aca0bb3e31e56a34d6b87c2371d305d58f62a0e5c64` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swap-on-antisymmetric--1f43a613dcf2a649be7635c6.md) | 131 | `result-track:1f43a613dcf2a649be7635c698e5b83b313155445d0dfaedcd22efb1bbfab99b` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swap-sector-reconstruction--2fd7875b709bf87d37c4cbe0.md) | 137 | `result-track:2fd7875b709bf87d37c4cbe0aecf4fa76356db528718341145d80e6e6f9789d1` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/doublednormsq--efe289a2d1f23df2c33c165e.md) | 149 | `declaration-track:efe289a2d1f23df2c33c165ea256210c3744be4705f045eb3ec7ce986c7767f1` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapantisymmetricprojection-doublednormsq--9492d1fd288b7df2dad01b1b.md) | 153 | `result-track:9492d1fd288b7df2dad01b1bfe2129fe80798b354fb75dd147b68718610bc5d1` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapdefect--c96c18607203ec1af914c426.md) | 166 | `declaration-track:c96c18607203ec1af914c426d5ef587370a6deb52aa3e406c3aaf57a3bd6cc7d` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapdefect-eq--b19ad80429970ea32394dca5.md) | 170 | `result-track:b19ad80429970ea32394dca55260f75c03fa065657318dd3880ddfdff2967045` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapdefect-nonnegative--f41da32a7f78e1bd22ff62b7.md) | 176 | `result-track:f41da32a7f78e1bd22ff62b75e742800c1368abd187c7ff8fb39d9dd5a9d304b` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variante3aee50167959d8cafcc7f88a86a00e32ec9dd60e3d9308a6d5ae183706cd678.lean/declarations/swapdefect-eq-zero-iff--a838bffa1043f37645d37da4.md) | 183 | `result-track:a838bffa1043f37645d37da48fbee628a24a6204f5ecb0ea30fd751af4831f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
