# GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76dd7e0b9ed14c0c013859a12283af757677df68`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [safeShiftCenter](declarations/safeshiftcenter--48b152e7f574b110b9bbe63a.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [safeShiftCenter_re](declarations/safeshiftcenter-re--b7370d8d608d56fea63f4c3d.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [safeShiftCenter_im](declarations/safeshiftcenter-im--c8da51fc5b4e412081654bdc.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [safeCenterPrimePowerTerm](declarations/safecenterprimepowerterm--6c706fd19d726030cdc35561.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [safeEvenDefectPrimePowerTerm](declarations/safeevendefectprimepowerterm--d885f7fa2703b0c77cfa32fb.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [safeShiftPlus_eq_center_of_zeroDefect](declarations/safeshiftplus-eq-center-of-zerodefect--ff7ffb42c78f2df3f410293a.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [safeShiftMinus_eq_center_of_zeroDefect](declarations/safeshiftminus-eq-center-of-zerodefect--0027baec4e6441b423a3099c.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect](declarations/safeevendefectprimepowerterm-eq-zero-of-zerodefect--de945b33b998a641dc6d48e9.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natValue_pos](declarations/natvalue-pos--3e08388850daa29831aa811e.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [natValue_ne_zero](declarations/natvalue-ne-zero--b71cb1bea1bc330cdf00dd9c.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vonMangoldtDirichletTerm_im_eq_zero_of_real](declarations/vonmangoldtdirichletterm-im-eq-zero-of-real--79eae011ff5fe43e7a652aa7.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [safePlusPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeplusprimepowerterm-im-eq-zero-of-im-zero--8267a204f3922372f7edf37e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeMinusPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeminusprimepowerterm-im-eq-zero-of-im-zero--09ec02790ff7e26e451987b4.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeOddPrimePowerTerm_im_eq_zero_of_im_zero](declarations/safeoddprimepowerterm-im-eq-zero-of-im-zero--7135d07170f151d611976019.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [safeAxialPoint](declarations/safeaxialpoint--8e653dc42b4b4529bfe2069e.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [safeTransversePoint](declarations/safetransversepoint--b2c131256641002bb893a7cb.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [safeAxialPointFamily](declarations/safeaxialpointfamily--f3c04874489494398204e08c.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [safeTransversePointFamily](declarations/safetransversepointfamily--a442c7375bd1a175cbdf5f50.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [safeAxialPackingSequence](declarations/safeaxialpackingsequence--d216942e8dc08bb65a175b83.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [safeTransversePackingSequence](declarations/safetransversepackingsequence--9099ca8cde6e0a6696db0700.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [safeAxialPacking_valueAt_nonnegative](declarations/safeaxialpacking-valueat-nonnegative--ad92c89b104db7e977facb6a.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [safeTransversePacking_valueAt_nonnegative](declarations/safetransversepacking-valueat-nonnegative--8f16747dcb68a7960d57dde4.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [safeAxialPacking_valueAt_eq_zero_of_zeroDefect](declarations/safeaxialpacking-valueat-eq-zero-of-zerodefect--3871199caf12d06adbddf501.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_zeroDefect](declarations/safetransversepacking-valueat-eq-zero-of-zerodefect--962d40d9fb2208383a9ab71c.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_im_zero](declarations/safetransversepacking-valueat-eq-zero-of-im-zero--8b00b0d900d64c36471260d8.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [safeQuarticStructuredPackingValue](declarations/safequarticstructuredpackingvalue--ee4e6a31a7b9d7f06fb64ebe.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [safeQuarticStructuredPackingValue_nonnegative](declarations/safequarticstructuredpackingvalue-nonnegative--39dce44e31e78f7ece0dcfdc.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [safeQuarticStructuredPackingValue_eq_zero_of_zeroDefect](declarations/safequarticstructuredpackingvalue-eq-zero-of-zerodefect--cc4cd12fb829fecc6b3d4510.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeQuarticStructuredPackingValue_zero_height](declarations/safequarticstructuredpackingvalue-zero-height--060bef22750275c45984a5a6.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
