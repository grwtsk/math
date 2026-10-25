# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b4217ef1b2cbf1a24a4fa6699fcf2740ad2ab8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b4217ef1b2cbf1a24a4fa6699fcf2740ad2ab8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean.json)

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
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapinvolution--d98c50699ef1747f6feedfd4.md) | 40 | `declaration-track:d98c50699ef1747f6feedfd4f395d3a1c69ab20919f473094d4483e8a4c98f3d` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapinvolution-apply--7855da9d269a1c81c87f116a.md) | 48 | `result-track:7855da9d269a1c81c87f116afaf68717d5317974d0bfbeeccdfc91127d14e023` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapinvolution-sq--7138f5fb48ab04002bed6102.md) | 53 | `result-track:7138f5fb48ab04002bed6102cf2c9553c686c9658485533471e95f52f51160f5` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapinvolution-comp-self--8bd9b1c29087a3872b55e5d6.md) | 58 | `result-track:8bd9b1c29087a3872b55e5d611c68a4ef98a43ec5b0d77e98fa52c4d552a87b0` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapsymmetricprojection--88527be85745087d12c3b581.md) | 64 | `declaration-track:88527be85745087d12c3b58120de00726e12e56264b75497820e0a9e71037c0d` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapantisymmetricprojection--8bc05b507d29fbf67d1b9bc3.md) | 68 | `declaration-track:8bc05b507d29fbf67d1b9bc395850d5eca36a96551529e38679653d7421ee979` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapsymmetricprojection-apply--6708406f386cba3ded4209af.md) | 72 | `result-track:6708406f386cba3ded4209aff74f2fa5c73d812086c0d76163a3d056b8115d56` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapantisymmetricprojection-apply--a1c2cb36f8daa2c9e0d4664d.md) | 79 | `result-track:a1c2cb36f8daa2c9e0d4664d6d3b2da1d4ae6c9baa2f9295b0bc489231ef82cd` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swap-projection-decomposition--5fab0124b8f2c3747dc8341b.md) | 86 | `result-track:5fab0124b8f2c3747dc8341bef28727113b953924bdf849475ef9e53d41620b5` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapsymmetricprojection-idempotent--96e5cc8ce4297bac76377660.md) | 91 | `result-track:96e5cc8ce4297bac763776601c26d193d352a82522ae46dee697cb213311b813` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapantisymmetricprojection-idempotent--390119a85c6bc5759c71e0a3.md) | 98 | `result-track:390119a85c6bc5759c71e0a3da41c99f8802704403f569da3e22a68ea6fad695` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapsymmetric-after-antisymmetric--c0882f0a5deae5ff7aacc736.md) | 106 | `result-track:c0882f0a5deae5ff7aacc7366475d5ae625800bf117d14b68ebcc5c41a1d6949` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapantisymmetric-after-symmetric--caf052815d6b096c06393755.md) | 111 | `result-track:caf052815d6b096c06393755f9920e92d513c46fe2978493e64378d6f8f9287e` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swap-on-symmetric--590a0bb6e6101b9782b2b1fb.md) | 116 | `result-track:590a0bb6e6101b9782b2b1fb45cbe6ad903ed930b1324864fdf220d58f8f8bd9` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swap-on-antisymmetric--e75413edba6d98376039305c.md) | 122 | `result-track:e75413edba6d98376039305cfac9be1ae98e4ffe9fd4560ac24f98db90525f3a` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swap-sector-reconstruction--0834c6fe9c222e4d0e5f868a.md) | 128 | `result-track:0834c6fe9c222e4d0e5f868a67654e2e1e1491757c425b147d7dbad77e6fdb48` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/doublednormsq--d3bda6e18f5398b5a5dbb6f1.md) | 140 | `declaration-track:d3bda6e18f5398b5a5dbb6f1dc48786796181522c8842a75f850a8564c81624b` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapantisymmetricprojection-doublednormsq--f9e3d932becc7fb1b9aca644.md) | 144 | `result-track:f9e3d932becc7fb1b9aca644caae730be60c0eb79eaf9182cc557308a924ff15` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapdefect--5057a404fda20ec850e8254a.md) | 157 | `declaration-track:5057a404fda20ec850e8254a4163de88668f78aa77ebdc198258e69daabe46e5` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapdefect-eq--bd65a6d0fd76c9e2fd778e1f.md) | 161 | `result-track:bd65a6d0fd76c9e2fd778e1fd41f18edd922b674290a422eccab5a1c8c769978` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapdefect-nonnegative--7bf76a84aa15bfe39c98e3cc.md) | 167 | `result-track:7bf76a84aa15bfe39c98e3cc49bc667a990c576ad46127149957320d8e16b7ea` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuadraticSwapInvolution/Variantfd843b2af21632bbd68ca8b30aeb854f04e9ca5d6a3fc4555729b7c1c6533476.lean/declarations/swapdefect-eq-zero-iff--d4f01156ff986fb79e0f4b54.md) | 174 | `result-track:d4f01156ff986fb79e0f4b547216d77fead204b0732c80fa7ff41880aebe1c35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
