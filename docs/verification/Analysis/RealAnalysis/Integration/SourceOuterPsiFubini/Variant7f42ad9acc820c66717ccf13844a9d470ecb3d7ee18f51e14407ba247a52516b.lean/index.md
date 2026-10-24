# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "275531729b68a573081599656479fa768cfdc2ee",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `275531729b68a573081599656479fa768cfdc2ee`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFullXiCesaroConsumer` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/finitedensity--f0b6e63162926ac1e60ab456.md) | 24 | `declaration-track:f0b6e63162926ac1e60ab456fb87d4be86aa5a752225ace13173f9c648724540` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/threshold-order--2b4e4efe656859edb73388ee.md) | 29 | `result-track:2b4e4efe656859edb73388eef817e43fc07e3251fab58a486710bc793f0b3dd1` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/finitedensity-integrable--58b3235adf7eb7ea04f8045c.md) | 33 | `result-track:58b3235adf7eb7ea04f8045c32791eb664f906adb335a152266ce2011cdcebe5` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/density-left-slice--f555024e8399d096ac396f88.md) | 88 | `result-track:f555024e8399d096ac396f88db78760559d34b443b15c5f252a61f0314b6585b` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/density-right-slice--8106e8015c5c37ab156eeff4.md) | 110 | `result-track:8106e8015c5c37ab156eeff45a7ef1f7b0222671a0eb09c959cb223900e4f909` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/actualfinitesecondreadout-outer-fubini--5d9e0e0e5ceec34378bee4b1.md) | 136 | `result-track:5d9e0e0e5ceec34378bee4b132f1ac85a85ff245be64fc61555d5925106a9778` |
| 7 | `theorem` | [signedCesaroPairing_eq_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/signedcesaropairing-eq-actual-xi-plain-pairing--648bc7b20f70ceed788c616d.md) | 161 | `result-track:648bc7b20f70ceed788c616d77410802ffd293db86a354b3b4b7015cde16b810` |
| 8 | `theorem` | [remainingAtomWork_eq_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/remainingatomwork-eq-actual-xi-plain-pairing--eb36acff4978f248281fb1a3.md) | 167 | `result-track:eb36acff4978f248281fb1a3d87faa9fe37bf0bc33eabf378781fddf61a8467b` |
| 9 | `theorem` | [estimate_of_actual_Xi_plain_pairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant7f42ad9acc820c66717ccf13844a9d470ecb3d7ee18f51e14407ba247a52516b.lean/declarations/estimate-of-actual-xi-plain-pairing--097f78e1a06b880a3d27c3fe.md) | 177 | `result-track:097f78e1a06b880a3d27c3fe54f59076ac444e5b715d8a32a1d12cd417299870` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
