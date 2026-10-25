# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6fc895a85df72688cd085d98a5a85b857866782",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6fc895a85df72688cd085d98a5a85b857866782`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapinvolution--38bd79b639e6b78057b6d26c.md) | 38 | `declaration-track:38bd79b639e6b78057b6d26c7b423d1f20489c10d2f4c5628d866d8c68647f81` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapinvolution-apply--f81fc7a1d47b85b74df6b2cc.md) | 46 | `result-track:f81fc7a1d47b85b74df6b2cc2ac122b707ac0f58bba44d56e88dfea8f1f54192` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapinvolution-sq--92a1f780dd0df81ce179d684.md) | 52 | `result-track:92a1f780dd0df81ce179d684c6ae148fd164d2c20c677286e037bfa2ff19f844` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapinvolution-comp-self--9b2da2f0eda6e1fa1f478319.md) | 57 | `result-track:9b2da2f0eda6e1fa1f478319d30b3a8496546f25ab2ee06e46c3bb9592f31b3b` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapsymmetricprojection--6bb5f6cc97ea7f3aa1c4d898.md) | 63 | `declaration-track:6bb5f6cc97ea7f3aa1c4d8983dc55423c0036b2d5ed5189c1331e1b8cb0b2e59` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapantisymmetricprojection--dcba4886e22554f7d29d2d73.md) | 67 | `declaration-track:dcba4886e22554f7d29d2d73b21c0e958f3607e895c200baa7e7a3fd9bcb1038` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapsymmetricprojection-apply--34c1dca754264fb9588ac59b.md) | 71 | `result-track:34c1dca754264fb9588ac59bc75a0d18facc6493cdf759d916fe63976ea34c93` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapantisymmetricprojection-apply--9790ed8985fd52a4c97bf03b.md) | 78 | `result-track:9790ed8985fd52a4c97bf03b94180013a99c466e12ab808a9206cf6204ffce2c` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swap-projection-decomposition--b26b8ff05034744188ba9741.md) | 85 | `result-track:b26b8ff05034744188ba9741a2984c0f308bd5768a62a49b1d7d03b3b6ae1b89` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapsymmetricprojection-idempotent--7d6082e72e4950aba8809386.md) | 90 | `result-track:7d6082e72e4950aba880938627d7bd8f392e453ba8e0c395cabdda8190c665b9` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapantisymmetricprojection-idempotent--c1a7ee27e970a38758dd5ce4.md) | 96 | `result-track:c1a7ee27e970a38758dd5ce4b92c08bb76732acd85b07a287f444ff1dc022925` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapsymmetric-after-antisymmetric--066a3a453ba4d6ce0070839d.md) | 102 | `result-track:066a3a453ba4d6ce0070839df9339895bedfb984fa48053e2e6f70d5ffc9864d` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapantisymmetric-after-symmetric--6fd8dd400ff9e55b66bd83e3.md) | 107 | `result-track:6fd8dd400ff9e55b66bd83e330ddd0d93081c11ffce3142f6e815457b13cf640` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swap-on-symmetric--4c31ddbe21739d4668577e42.md) | 112 | `result-track:4c31ddbe21739d4668577e426ba2ec82153a63d7eebf95d30faee469f234378c` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swap-on-antisymmetric--10ff1e351ef0a17c441e87b8.md) | 118 | `result-track:10ff1e351ef0a17c441e87b8d872d6e9b94471ce2d0f653f7dfb317433cc33bc` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swap-sector-reconstruction--1894753c5ea8cc46484604ac.md) | 124 | `result-track:1894753c5ea8cc46484604aca3df8ce2ff7b6243e51b4ba59a8221ed688011a7` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/doublednormsq--95db3c8e82c752b756c7693c.md) | 134 | `declaration-track:95db3c8e82c752b756c7693c21fbf63bae1e277639c14773732b4058ede84862` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapantisymmetricprojection-doublednormsq--d48ae3f8dbfe75b353d9f18b.md) | 138 | `result-track:d48ae3f8dbfe75b353d9f18bcd6045ee59319511060f50fcee5aaabfe9ea3059` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapdefect--0369e78cac9bb468116d1f1e.md) | 151 | `declaration-track:0369e78cac9bb468116d1f1e50d53ffff98abc963694474e2c79b27f47378f71` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapdefect-eq--0a5521982021e098e22ce838.md) | 155 | `result-track:0a5521982021e098e22ce83890068d41471d57dde1ab318c97511d2ae2189c4b` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapdefect-nonnegative--4342b4aa81fa81938ac80ea5.md) | 161 | `result-track:4342b4aa81fa81938ac80ea501336fca4350c4cef5a59ca0cc3fef7c6f87e66a` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantecf848a6e22d58771fb9cbdf4d5a3841bc1b63394dd831d295f7aab0ce2ba834.lean/declarations/swapdefect-eq-zero-iff--2b24374b22359ee001820b2f.md) | 168 | `result-track:2b24374b22359ee001820b2faeb6a751c03de658ab440f9222783f46200f5b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
