# GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyArithmeticRestrictions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalFourFamilyCells](declarations/canonicalfourfamilycells--22e4ed6e0c3e823fd1150a10.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [CanonicalFourFamilyRestrictionConfig](declarations/canonicalfourfamilyrestrictionconfig--71365928ac1ee02ff6b9d931.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [canonicalFourFamilyRestrictionPacket](declarations/canonicalfourfamilyrestrictionpacket--814922f3f582c73e4d3520ff.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [canonicalFourFamilyEmptyRestriction](declarations/canonicalfourfamilyemptyrestriction--15ee88579b9a70e651fb287f.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [canonicalFourFamilyFullRestriction](declarations/canonicalfourfamilyfullrestriction--59c8dcb37d36478d210a788e.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [canonicalFourFamilyRestrictionPacket_empty](declarations/canonicalfourfamilyrestrictionpacket-empty--2d3ec7a67c9ecf40f9ec5147.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [canonicalFourFamilyRestrictionPacket_full](declarations/canonicalfourfamilyrestrictionpacket-full--8140908d6cc10d6caf68d14d.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [canonicalFourFamilyRestrictionPacket_support_admissible](declarations/canonicalfourfamilyrestrictionpacket-support-admissible--1567ad704a7c6fd56a9afef6.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [CanonicalFourFamilyRestrictionDifferenceSet](declarations/canonicalfourfamilyrestrictiondifferenceset--ea3b9dcb9c6269d663e68ff1.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [canonicalFourFamilyRestrictionDifference_support_admissible](declarations/canonicalfourfamilyrestrictiondifference-support-admissible--f686c418d2d06b5d9c275932.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [canonicalFourFamilyRestrictionOmittedPacket](declarations/canonicalfourfamilyrestrictionomittedpacket--59c697d377025f159f683519.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [canonicalFourFamilyRestrictionSignedCorrection](declarations/canonicalfourfamilyrestrictionsignedcorrection--d3e10c22fc22f3a736f545c7.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [canonicalFourFamilyRestriction_omitted_matrix](declarations/canonicalfourfamilyrestriction-omitted-matrix--902f78510be7d2f2815d8e71.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [vonMangoldt_eq_restriction_corrected](declarations/vonmangoldt-eq-restriction-corrected--e216d10eb14a0bbb16690923.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [canonicalFourFamilyRestrictionCorrectedGreenCoordinate](declarations/canonicalfourfamilyrestrictioncorrectedgreencoordinate--1381977d07e43cab7197cf0e.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [centeredGreenPrimeCoordinate_eq_restriction_corrected](declarations/centeredgreenprimecoordinate-eq-restriction-corrected--f896519c3aaf6f49a940c312.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [canonicalFourFamilyTerminalRestriction](declarations/canonicalfourfamilyterminalrestriction--fc23b5efdec1cb211fa392a2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [canonicalFourFamilyTerminalRestriction_mem_difference](declarations/canonicalfourfamilyterminalrestriction-mem-difference--343dfab2fef7bcf2af6866a7.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [canonicalFourFamilyTerminalRestriction_erasure](declarations/canonicalfourfamilyterminalrestriction-erasure--24ce6f2e6632e447889725b0.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [canonicalFourFamilyTerminalRestriction_output_zero](declarations/canonicalfourfamilyterminalrestriction-output-zero--d296e7d9ff4943091fcda009.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [canonicalFourFamilyTerminalRestriction_source_energy](declarations/canonicalfourfamilyterminalrestriction-source-energy--f1f674660aae6ccd634668f0.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [not_restrictionLowerFrame_of_terminal_amplitude_ne_zero](declarations/not-restrictionlowerframe-of-terminal-amplitude-ne-zero--936212e61a514298f2354ef7.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [canonicalFourFamily_terminal_amplitude_three](declarations/canonicalfourfamily-terminal-amplitude-three--1643cd50b557fbaa920a430f.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_restrictionLowerFrame_three](declarations/not-restrictionlowerframe-three--48c963d581d836c17b7789c3.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [restriction_three_realizable_kernel](declarations/restriction-three-realizable-kernel--0e7ec5a5b41632f8ed1e478b.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [no_restriction_lower_frame_at_all_scales](declarations/no-restriction-lower-frame-at-all-scales--b1a1b808e0382a0d93bf42be.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
