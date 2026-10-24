# Verification target: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyThinGreenMatrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f71dbe475e99bce6b8ea8c633f320b118d69b6d5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f71dbe475e99bce6b8ea8c633f320b118d69b6d5`.

Source path: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.AnchoredAuthenticCenteredDefectComparison`](../../../../mathematics/NumberTheory/Moebius/AnchoredAuthenticCenteredDefectComparison.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CanonicalFourFamily](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamily--4d06c7d6de5bdfe6cb9e2a71.md) | 54 | `declaration-track:4d06c7d6de5bdfe6cb9e2a7101f3457bc32e3cdd81dee01884806c832b56a4e3` |
| 2 | `def` | [canonicalFourFamilyShiftSet](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyshiftset--27ca2b981c831a5c2504aee8.md) | 58 | `declaration-track:27ca2b981c831a5c2504aee8ad1ef39daac8558c9184a32a2e9e8d8a9776593c` |
| 3 | `def` | [canonicalFourFamilyEndpointParity](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyendpointparity--8080482fbe6ee8166e1b9283.md) | 64 | `declaration-track:8080482fbe6ee8166e1b92832a0d0588377452191416add36b7cf318131184f9` |
| 4 | `def` | [canonicalFourFamilyOfAnchor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyofanchor--c94003c89eb3e57d14a3421a.md) | 69 | `declaration-track:c94003c89eb3e57d14a3421addbd12b926335458026ccec92dd68d3773c85dcb` |
| 5 | `theorem` | [canonicalFourFamilyEndpointParity_of_anchor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyendpointparity-of-anchor--3d20ba5c7154fa1abb6d1590.md) | 73 | `result-track:3d20ba5c7154fa1abb6d1590fb74e8c00187487dcff4b2bcac928457bb40be9d` |
| 6 | `theorem` | [canonicalFourFamily_selected_shift_mem](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamily-selected-shift-mem--84bc56acabf0852cd641fa40.md) | 85 | `result-track:84bc56acabf0852cd641fa406d22bf10016caa0900dc140be638f14a9dad5856` |
| 7 | `theorem` | [canonicalFourFamily_anchor_center_mem_range](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamily-anchor-center-mem-range--a869b538e8bfd2048858d3fe.md) | 113 | `result-track:a869b538e8bfd2048858d3fe1b6ff4b2ec23675cfbb96bba59da57d45de7e530` |
| 8 | `def` | [canonicalFourFamilyCenteredData](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilycentereddata--ca973244359f385dade433d0.md) | 122 | `declaration-track:ca973244359f385dade433d04a6e11548e4e801f54d7b155913df7e6c304d87e` |
| 9 | `theorem` | [canonicalFourFamily_anchor_cell_minus_other_eq_coefficient](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamily-anchor-cell-minus-other-eq-coefficient--c0ef4b8c457e169799a3f9b4.md) | 130 | `result-track:c0ef4b8c457e169799a3f9b4e6e1e82625879449631a23b5f2136fe03f955625` |
| 10 | `def` | [canonicalFourFamilyGreenMatrixEntry](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilygreenmatrixentry--2b7a72d836acaf1b244b14d2.md) | 152 | `declaration-track:2b7a72d836acaf1b244b14d21b5148920ffa53fe735d3712293f1cc6d2239472` |
| 11 | `def` | [canonicalFourFamilyGreenMatrixApply](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilygreenmatrixapply--e60ee8a959dbd5fa672945e5.md) | 163 | `declaration-track:e60ee8a959dbd5fa672945e5516a156285a8f0fb15957d4833645972912fb1e0` |
| 12 | `theorem` | [canonicalFourFamily_oneHot](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamily-onehot--f4eb7868ce8068ab009111e6.md) | 170 | `result-track:f4eb7868ce8068ab009111e66a055989e6afbcfc68ac6eae6db31b9c4dc008e4` |
| 13 | `theorem` | [canonicalFourFamilyGreenMatrixApply_eq_divisor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilygreenmatrixapply-eq-divisor--85e14c77ae0197d7222a04c3.md) | 195 | `result-track:85e14c77ae0197d7222a04c32179771c89ec9e030d4ffb4036cb6a778931a138` |
| 14 | `def` | [canonicalFourFamilyOtherShiftDivisor](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyothershiftdivisor--0a8f6eb26dcaf9d3266c6f51.md) | 259 | `declaration-track:0a8f6eb26dcaf9d3266c6f5113f645fb263199d64d31e376c9cb9e43ef28775b` |
| 15 | `theorem` | [canonicalFourFamilyMatrix_minus_other_eq_positiveAnchored](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilymatrix-minus-other-eq-positiveanchored--b7cedc9ce7d982bb49611217.md) | 272 | `result-track:b7cedc9ce7d982bb49611217edc1452a394674af2a9a84fa53533d6b4b881244` |
| 16 | `def` | [canonicalFourFamilyZeroShiftBoundary](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyzeroshiftboundary--e6c81fe21b2eb12128560a30.md) | 309 | `declaration-track:e6c81fe21b2eb12128560a3012caf021e91a883726789daa2b3f0c854050e9d7` |
| 17 | `theorem` | [vonMangoldt_eq_canonicalFourFamilyMatrix_corrected](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/vonmangoldt-eq-canonicalfourfamilymatrix-corrected--32275cd82cff5b527f6b1022.md) | 316 | `result-track:32275cd82cff5b527f6b1022b9d71ca7325f904446f72c8bbbbf9c98f918697a` |
| 18 | `def` | [canonicalFourFamilyFourierMatrixEntry](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilyfouriermatrixentry--573d98012b17d5dc1a7dd432.md) | 335 | `declaration-track:573d98012b17d5dc1a7dd432cb16547caa3bfefe4f20679fcb99826ad0a6db6b` |
| 19 | `def` | [canonicalFourFamilyThinFourierCoordinate](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfouriercoordinate--ab13bcd9ddae90e674713beb.md) | 344 | `declaration-track:ab13bcd9ddae90e674713bebb9c2d7f5317f7870e9b9ad1cefbe76009050762b` |
| 20 | `theorem` | [canonicalFourFamilyThinFourierCoordinate_eq_thinGreen](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfouriercoordinate-eq-thingreen--92c7bb4acc7f2cf44e3d0c4e.md) | 355 | `result-track:92c7bb4acc7f2cf44e3d0c4e6f31494eab44fbb5a26cbdae06f34ffb71015bf4` |
| 21 | `def` | [canonicalFourFamilyThinFourierShell](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfouriershell--af51a453424d2bd1e23a3734.md) | 378 | `declaration-track:af51a453424d2bd1e23a373444b7cac048a8302505fe46a6f357f9701219330c` |
| 22 | `def` | [canonicalFourFamilyThinFourierHead](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfourierhead--5ba735e70b229d9643b33e49.md) | 382 | `declaration-track:5ba735e70b229d9643b33e494f6259d1586bc380e36b218cc6eb38e5d9a3fa48` |
| 23 | `def` | [originalThinGreenFourierHead](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/originalthingreenfourierhead--6b237bbbbd190c0b25920660.md) | 388 | `declaration-track:6b237bbbbd190c0b259206609bf07dd9fa2c2587d835c0670381760dc85a5777` |
| 24 | `theorem` | [canonicalFourFamilyThinFourierHead_eq_originalThinHead](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfourierhead-eq-originalthinhead--8924871579e818173b667846.md) | 394 | `result-track:8924871579e818173b6678467328b27ca8e852adfab5ab9bc5daf9f930677a86` |
| 25 | `theorem` | [canonicalFourFamilyThinFourierHead_nonneg](../../../../mathematics/NumberTheory/Moebius/CanonicalFourFamilyThinGreenMatrix.lean/declarations/canonicalfourfamilythinfourierhead-nonneg--737081555ffd3c23c5977216.md) | 409 | `result-track:737081555ffd3c23c5977216fcc4edbb6b5448f6fcfe5efb650fdcdb19bfd714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
