# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EmlTorsionScatteringBoundary.Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea5202d6d52efac57654be6dc093068c66196939",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea5202d6d52efac57654be6dc093068c66196939`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.EmlKakeyaMedoidBoundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TorsionScatteringResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionscatteringresidue--e21e047bcde889c79b8f7418.md) | 10 | `declaration-track:e21e047bcde889c79b8f74184e55681fcde7c9c3abe0e015764376666055d105` |
| 2 | `def` | [TorsionScatteringResidue.token](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionscatteringresidue-token--794511b3b8b4f7bd42c522ef.md) | 18 | `declaration-track:794511b3b8b4f7bd42c522ef81d2767e5539e41be73ff7617cdeedfa62b2ffb7` |
| 3 | `structure` | [TorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionclass--7cbe1129f167f5c737c5e767.md) | 30 | `declaration-track:7cbe1129f167f5c737c5e767203c39f7a304db3c6d18bd0682e9d5bcfce0952e` |
| 4 | `def` | [torsionPhiResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionphiresidues--aa2cd943aa9d9fb33e86e2f5.md) | 38 | `declaration-track:aa2cd943aa9d9fb33e86e2f54becf73fd7123a2f6fb952812247ac7c075f4af0` |
| 5 | `structure` | [EmlTorsionPacket](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/emltorsionpacket--e8f662776b97da41b0526dad.md) | 50 | `declaration-track:e8f662776b97da41b0526dad483a3fa20ff16217248847a14a1c0545f14ed165` |
| 6 | `def` | [PhiTorsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/phitorsion--5a4b29c2abf32854ed5ccf2a.md) | 59 | `declaration-track:5a4b29c2abf32854ed5ccf2a349b8cfcdaf6e199d192e341c84e3270d6e588e1` |
| 7 | `inductive` | [ScatteringProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/scatteringprogression--e6c1da1460bcfa25afcea8bc.md) | 75 | `declaration-track:e6c1da1460bcfa25afcea8bcea37877f6f6c603d57268d31df27c5062b82e039` |
| 8 | `def` | [monomialScatteringOperator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/monomialscatteringoperator--fa8385aadf23e8488ea6a3ee.md) | 81 | `declaration-track:fa8385aadf23e8488ea6a3eee5d104faf1a8b970d60dc4eafe10e89961a98c1c` |
| 9 | `def` | [scatteringIsRingProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/scatteringisringprogression--75c3eeda425d127e19fc8b1f.md) | 92 | `declaration-track:75c3eeda425d127e19fc8b1f694f70917bda40b0514fbe1229d5e3e07dd78a01` |
| 10 | `def` | [scatterTorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/scattertorsionclass--deff2b3f8f7719273901f3ef.md) | 98 | `declaration-track:deff2b3f8f7719273901f3ef9b61f2eb0ede37c71e8d066fc141cad6fd1e282b` |
| 11 | `def` | [scatterTorsionClasses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/scattertorsionclasses--36a863e3ad1990a2b027ddb2.md) | 102 | `declaration-track:36a863e3ad1990a2b027ddb2967bf7a726502d845a1de4ae98e380e875aa28dd` |
| 12 | `def` | [signedRingProgressions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/signedringprogressions--70e5fa9ea98883abe807538b.md) | 107 | `declaration-track:70e5fa9ea98883abe807538b96319427a72b0542641ba162a281811fc78ae693` |
| 13 | `def` | [torsionResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionresidues--5bdf4cbdfcf38f26b9ae5123.md) | 116 | `declaration-track:5bdf4cbdfcf38f26b9ae51233cbb50bceedcd1b2142f1b51348c62d442f8720a` |
| 14 | `def` | [strictlyOrderedTorsionClasses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/strictlyorderedtorsionclasses--249525632bf987c12ff79eb1.md) | 121 | `declaration-track:249525632bf987c12ff79eb1a6073b51cdf720bcf4ef0631763858d9c3e0686b` |
| 15 | `def` | [nonAdmissibleForcedIntoRingAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/nonadmissibleforcedintoringalgebra--d6701b491bee85788decbab5.md) | 129 | `declaration-track:d6701b491bee85788decbab5ecbc399880200b4c26c1e4004408e16224c4a89e` |
| 16 | `structure` | [AdmissibleEllipticCurveWithTorsion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/admissibleellipticcurvewithtorsion--1886f346681eaad74eba0d6d.md) | 135 | `declaration-track:1886f346681eaad74eba0d6d99c04b9d14572a4346cda238caa19083a1547d12` |
| 17 | `def` | [torsionCurveSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsioncurvesurface--a987f9459f8358a4cb93eaad.md) | 143 | `declaration-track:a987f9459f8358a4cb93eaadba3fedefa1acb6bb74a9d018843d22dd5ea4be43` |
| 18 | `def` | [torsionMordellWeilSurface](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionmordellweilsurface--0e7ea328c1390c0ce6bc0615.md) | 147 | `declaration-track:0e7ea328c1390c0ce6bc0615a7e4c960f4918e6663bd69fab528ffa8b56c1bbf` |
| 19 | `def` | [positiveTorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/positivetorsionclass--6129e59e76178f4599ca9b93.md) | 154 | `declaration-track:6129e59e76178f4599ca9b935de99808a1717fb73867c5b10319e303bb8ddd77` |
| 20 | `def` | [negativeTorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/negativetorsionclass--851f92fa3aec0b0e36386f90.md) | 161 | `declaration-track:851f92fa3aec0b0e36386f90f57116e03233d258d5f2711718a218958faec719` |
| 21 | `def` | [zeroTorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/zerotorsionclass--f15e89ad66b4f6e1625c9919.md) | 168 | `declaration-track:f15e89ad66b4f6e1625c99196d3f9386a4f0a84b1db66e1ede42840414cc4fa1` |
| 22 | `def` | [nonAdmissibleTorsionClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/nonadmissibletorsionclass--e9634dafa3db7b7221d5ddf6.md) | 175 | `declaration-track:e9634dafa3db7b7221d5ddf63be91555a0fc1f2139e80c5a6d265adcfc8c4aea` |
| 23 | `def` | [orderedTorsionClasses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/orderedtorsionclasses--a4da342d5eda09a450275b79.md) | 182 | `declaration-track:a4da342d5eda09a450275b79c015200016e5272f01764a89761e749b3b184ec7` |
| 24 | `def` | [torsionCurveWithOrderedClasses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsioncurvewithorderedclasses--6de1aebb49dfef05dad04b4e.md) | 188 | `declaration-track:6de1aebb49dfef05dad04b4eccbf771f81e8c37ce88565686c8d701367074024` |
| 25 | `structure` | [TorsionRingAlgebraProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionringalgebraprogression--d591d4fbb7af0eef4708453e.md) | 196 | `declaration-track:d591d4fbb7af0eef4708453e61318acf33f59a929e4d1c01548e6a8adc01fbae` |
| 26 | `def` | [torsionRingAlgebraProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsionringalgebraprogression--46b857d39d70c881d606724a.md) | 206 | `declaration-track:46b857d39d70c881d606724a751739a007f80ef81ab0323133f54cdc758c2f3b` |
| 27 | `def` | [defaultTorsionRingAlgebraProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/defaulttorsionringalgebraprogression--1f0b055708658faca3e7aade.md) | 219 | `declaration-track:1f0b055708658faca3e7aadeadbf42e79d671e33e41e5f9ffa70241ac6de4d8c` |
| 28 | `def` | [nonAdmissibleTorsionProgression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/nonadmissibletorsionprogression--2bfbdc6149975ca6dfb63e67.md) | 223 | `declaration-track:2bfbdc6149975ca6dfb63e676af4c9f9cf4bed79e13be33d52a186e9f74d43df` |
| 29 | `theorem` | [torsion_classes_are_naturally_ordered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsion-classes-are-naturally-ordered--2513340d53f71d10c8a45661.md) | 232 | `result-track:2513340d53f71d10c8a45661f07e7452f2a4dc38b6194758f468ee9b9a7437f4` |
| 30 | `theorem` | [phi_torsion_positive_maps_to_positive_progression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/phi-torsion-positive-maps-to-positive-progression--5e5d3da882ddd0f862fccb70.md) | 236 | `result-track:5e5d3da882ddd0f862fccb70f66218c43a6941eca4bb80102d9a06637f6f0530` |
| 31 | `theorem` | [phi_torsion_negative_maps_to_negative_progression](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/phi-torsion-negative-maps-to-negative-progression--3748b167824b9c8f24f1bb01.md) | 241 | `result-track:3748b167824b9c8f24f1bb0192f4b6b49271e17f13153c8591ed830701b1b0e6` |
| 32 | `theorem` | [phi_torsion_zero_maps_to_refusal_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/phi-torsion-zero-maps-to-refusal-residue--25778429cf96bc0bb6322c2b.md) | 246 | `result-track:25778429cf96bc0bb6322c2bf07d61fc841caafb30aa4a64348f361548bc8791` |
| 33 | `theorem` | [nonadmissible_torsion_emits_residue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/nonadmissible-torsion-emits-residue--462e44284db64c17424fd8cd.md) | 253 | `result-track:462e44284db64c17424fd8cd6edf86d72f77a3df5a7fc6396ccfa22983f1ca67` |
| 34 | `theorem` | [ring_algebra_progresses_by_signed_eml_polarity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/ring-algebra-progresses-by-signed-eml-polarity--e728ea02a1597f6354f7b693.md) | 263 | `result-track:e728ea02a1597f6354f7b693f028b05a80e3590970603c65462d6a5e4a0f2d42` |
| 35 | `theorem` | [nonadmissible_torsion_not_forced_into_ring_algebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/nonadmissible-torsion-not-forced-into-ring-algebra--bfad6e214fb095a1fafa7853.md) | 278 | `result-track:bfad6e214fb095a1fafa7853d4e3a58b1c4f5729a882a229def65aad9afda960` |
| 36 | `theorem` | [torsion_scattering_has_no_theorem_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmlTorsionScatteringBoundary/Variant1ab470e226a8a25cd7b015ad8a2801fe722a0f62e4a9a3568da588fe097a21cc.lean/declarations/torsion-scattering-has-no-theorem-authority--2456809ed141eb1b9f35521f.md) | 287 | `result-track:2456809ed141eb1b9f35521ffc88483188ec538d817a35b1cbc6b5f202d6a247` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
