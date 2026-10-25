# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv.Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b2f1c167f9fd7a504be38ac8de036a9c4bb6d9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b2f1c167f9fd7a504be38ac8de036a9c4bb6d9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean.json)

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
| 1 | `def` | [swapInvolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapinvolution--f1fd3eede7880a0053d1542e.md) | 40 | `declaration-track:f1fd3eede7880a0053d1542eed7725af502b0d1c04d2bc72498ed66285e31be2` |
| 2 | `theorem` | [swapInvolution_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapinvolution-apply--94aab401104449fafeea188a.md) | 48 | `result-track:94aab401104449fafeea188ab1b830abd452a3792733335b4e3a47266e1eac11` |
| 3 | `theorem` | [swapInvolution_sq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapinvolution-sq--e9e9183ed420a63b2b1f1e9b.md) | 54 | `result-track:e9e9183ed420a63b2b1f1e9b1aef988138d6edcc72ee510415d668dd94c1d7b2` |
| 4 | `theorem` | [swapInvolution_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapinvolution-comp-self--754c3b713d2eeee6e75cb62a.md) | 59 | `result-track:754c3b713d2eeee6e75cb62aa8b4e970d719d04f282b02b85e6d8731d0074ef4` |
| 5 | `def` | [swapSymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapsymmetricprojection--68fd58d9209697264cdc35bc.md) | 65 | `declaration-track:68fd58d9209697264cdc35bc6f276849228df75468ead2db498439a400898f7b` |
| 6 | `def` | [swapAntisymmetricProjection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapantisymmetricprojection--1b80231d00e6308182c2687c.md) | 69 | `declaration-track:1b80231d00e6308182c2687cf109df1543bb51ad059adcf9aa15f642abd0cd7d` |
| 7 | `theorem` | [swapSymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapsymmetricprojection-apply--8fd255d46ba724ea49b48f5e.md) | 73 | `result-track:8fd255d46ba724ea49b48f5e42892923c28baa70aa5119156f18abde0ef9a245` |
| 8 | `theorem` | [swapAntisymmetricProjection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapantisymmetricprojection-apply--460712fc74ab7a6ebcf29101.md) | 80 | `result-track:460712fc74ab7a6ebcf2910121f480f158e9ca9259747668739fabc766d6c1cb` |
| 9 | `theorem` | [swap_projection_decomposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swap-projection-decomposition--3c1b0fb32725c2f73b95b450.md) | 87 | `result-track:3c1b0fb32725c2f73b95b450f81828b7e5616f51e54500913a06db54b59f8e3b` |
| 10 | `theorem` | [swapSymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapsymmetricprojection-idempotent--eba54ecd5fdbc2d012267f97.md) | 92 | `result-track:eba54ecd5fdbc2d012267f979d382268c95bbf8bb2abfa8d1b8eac9d70da766d` |
| 11 | `theorem` | [swapAntisymmetricProjection_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapantisymmetricprojection-idempotent--4b17fa49c9c57da66b0d1a57.md) | 99 | `result-track:4b17fa49c9c57da66b0d1a57ac3fc8464f620a92c29aabb64768a5d81646069a` |
| 12 | `theorem` | [swapSymmetric_after_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapsymmetric-after-antisymmetric--3aebe597fdf18fbc84d1b2f4.md) | 107 | `result-track:3aebe597fdf18fbc84d1b2f4c7deec5d611d6f65e4360dea105456f42f7dfda6` |
| 13 | `theorem` | [swapAntisymmetric_after_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapantisymmetric-after-symmetric--12c3b4d407e543d3b6b2d2c5.md) | 112 | `result-track:12c3b4d407e543d3b6b2d2c5722e8d560733121ef05e4ddad98d313964df5489` |
| 14 | `theorem` | [swap_on_symmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swap-on-symmetric--c6b9d3a8cd65daef83485c9a.md) | 117 | `result-track:c6b9d3a8cd65daef83485c9a7ac9ce2f0fea1b630374842bf1e6ceeeaca63618` |
| 15 | `theorem` | [swap_on_antisymmetric](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swap-on-antisymmetric--87685ed15f5035383f6afb61.md) | 123 | `result-track:87685ed15f5035383f6afb612ae758650cc573607b33d303a16c7118c753e9a6` |
| 16 | `theorem` | [swap_sector_reconstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swap-sector-reconstruction--a55637d1de46436e8f4e3771.md) | 129 | `result-track:a55637d1de46436e8f4e37717815535ba7d6df23f1c27d91e1395774766d6f5c` |
| 17 | `def` | [doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/doublednormsq--16fb25d19811e57212ebb0ea.md) | 141 | `declaration-track:16fb25d19811e57212ebb0ea70f579c610c09e98ad8561b09640239b56fad4cc` |
| 18 | `theorem` | [swapAntisymmetricProjection_doubledNormSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapantisymmetricprojection-doublednormsq--51dbec302260f4af787bfc66.md) | 145 | `result-track:51dbec302260f4af787bfc669c0c7cbce101c4a4d454285ad75b01a2ebac577b` |
| 19 | `def` | [swapDefect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapdefect--bbb2d48f43de37f3b0798d88.md) | 158 | `declaration-track:bbb2d48f43de37f3b0798d88a9e5449504daa4e6d8417bdbf52ab03fbf6b05d4` |
| 20 | `theorem` | [swapDefect_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapdefect-eq--88c3a0b5996b8f9e8b89d0eb.md) | 162 | `result-track:88c3a0b5996b8f9e8b89d0eb957b84a6a85a6bc4bd6339c0fa2e4453155ba36a` |
| 21 | `theorem` | [swapDefect_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapdefect-nonnegative--32d0e7d93a2a99dd85666c90.md) | 168 | `result-track:32d0e7d93a2a99dd85666c9040658d091bd8143d8f7bbd905661d16237bcdd11` |
| 22 | `theorem` | [swapDefect_eq_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901ccaQuadraticSwapInv/Variant3c450aa65ebc34197205d32b64e4eb9c42b65f59d2a082a0c451cabfaf901cca.lean/declarations/swapdefect-eq-zero-iff--023772881a1170696e1fb48c.md) | 175 | `result-track:023772881a1170696e1fb48c146e4815f1849549080e98e3234b1df6e8aea3ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
