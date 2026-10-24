# Verification target: GRWTSK.NumberTheory.Moebius.CoreBoundaryUnitIntervalWeakMertens

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "588588a31a7264d3b24944f33c82c035414ca8f6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `588588a31a7264d3b24944f33c82c035414ca8f6`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreBoundaryWeightedWeakMertens`](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryWeightedWeakMertens.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weakMertensUnitKernel](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/weakmertensunitkernel--9357e047d21d2315c8c727ab.md) | 23 | `declaration-track:9357e047d21d2315c8c727ab768052f2d740b8c2dbf360131aa3fbde490af8dc` |
| 2 | `def` | [weakMertensUnitIntervalIntegral](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/weakmertensunitintervalintegral--93ee9226e1254a21fc011a78.md) | 30 | `declaration-track:93ee9226e1254a21fc011a785809a7179259e72ded9208fa49d6ff6a545fd95a` |
| 3 | `theorem` | [integral_zpow_neg_two_unit](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/integral-zpow-neg-two-unit--b164c866f6f782b7893e077a.md) | 35 | `result-track:b164c866f6f782b7893e077a26e1177a5b992d845923f5b616a8378f52a2a54c` |
| 4 | `theorem` | [weakMertensUnitIntervalIntegral_eq_kernel](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/weakmertensunitintervalintegral-eq-kernel--d57bb5ec042d26d6e376d934.md) | 54 | `result-track:d57bb5ec042d26d6e376d934f38214c8f30f6044bdd7fedfe13afe0a185951bf` |
| 5 | `theorem` | [weightedMertensPrefixSquare_le_unitKernel](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/weightedmertensprefixsquare-le-unitkernel--f29621d9a3c2b0dcca184bea.md) | 66 | `result-track:f29621d9a3c2b0dcca184bea8373d9948dbf14c6bd9d224649f3b9ab4c094eeb` |
| 6 | `def` | [boundaryLocalizedUnitWeakMertensEnergy](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/boundarylocalizedunitweakmertensenergy--545e8223b360a7ed920fe0e2.md) | 97 | `declaration-track:545e8223b360a7ed920fe0e24615d74ee34a4aa13a598d727141809ce8f85d49` |
| 7 | `theorem` | [boundaryLocalizedWeightedMertensSquareEnergy_le_unit](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/boundarylocalizedweightedmertenssquareenergy-le-unit--b3c226b1d6c3212c3ea01dfb.md) | 106 | `result-track:b3c226b1d6c3212c3ea01dfbceb028b766bbb7269c5ea5f9590dff5bb3323b2d` |
| 8 | `def` | [BoundaryUnitIntervalWeakMertensSource](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/boundaryunitintervalweakmertenssource--9ee702c628816d2a488e84f2.md) | 123 | `declaration-track:9ee702c628816d2a488e84f21e36f80efb0778b268a486d562b7900c06bc3810` |
| 9 | `theorem` | [dyadicWeightedWeakMertensBoundarySource_of_unitInterval](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/dyadicweightedweakmertensboundarysource-of-unitinterval--58435822a41c1f7e2c7c5834.md) | 131 | `result-track:58435822a41c1f7e2c7c583446cf265e357392b2de2f57c918cc3fc33d808fa2` |
| 10 | `theorem` | [subpolynomialCoreBoundarySignedPacket_of_unitWeakMertens](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/subpolynomialcoreboundarysignedpacket-of-unitweakmertens--d024abc562682e29e1857785.md) | 143 | `result-track:d024abc562682e29e1857785902d6fe1d0519a63ca07d1df7573bf84a56a7e0a` |
| 11 | `structure` | [ClassicalWeakMertensToBoundaryUnitIntervalAdapter](../../../../mathematics/NumberTheory/Moebius/CoreBoundaryUnitIntervalWeakMertens.lean/declarations/classicalweakmertenstoboundaryunitintervaladapter--933a9c0e8cbb1435a93e5174.md) | 153 | `declaration-track:933a9c0e8cbb1435a93e5174e3c9f82bdcc6234ef122e6d7335e9d0839e909f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
