# GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41227433d053477cc82cf2a39b7046424e78eeec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [safeDyadicQuarticRadius](declarations/safedyadicquarticradius--4f777052fffbbe51c5e7d0ec.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [safeDyadicQuarticRadius_nonnegative](declarations/safedyadicquarticradius-nonnegative--ac297f443b5a9041b66c5001.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [safeShiftPlus_norm_le_quarticRadius](declarations/safeshiftplus-norm-le-quarticradius--c81c6e5c0624475f8fda0448.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [safeShiftMinus_norm_le_quarticRadius](declarations/safeshiftminus-norm-le-quarticradius--f9abe8fd8635fb39d8dde19d.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [safeShiftCenter_norm_le_quarticRadius](declarations/safeshiftcenter-norm-le-quarticradius--2838ae5ec5aa028cbee3a37e.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [safeDyadicQuarticBlockEnvelope](declarations/safedyadicquarticblockenvelope--a79cd874d25d1d44468a0cff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [safeDyadicQuarticBlockEnvelope_nonnegative](declarations/safedyadicquarticblockenvelope-nonnegative--2d1d81dc0ce4be4a52e9ec4d.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [safeDyadicBlock_norm_le_quarticEnvelope](declarations/safedyadicblock-norm-le-quarticenvelope--18fcbf00435a314ccc20d18e.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [safeCenterDyadicBlock](declarations/safecenterdyadicblock--709c495cbde2353921cd7581.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [safeCenterDyadicBlock_norm_le](declarations/safecenterdyadicblock-norm-le--5ea8e2626e6b67b65f4d8f9d.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [safePlusDyadicBlock_norm_le_quartic](declarations/safeplusdyadicblock-norm-le-quartic--f5a4afae314a9dfa8ba16019.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [safeMinusDyadicBlock_norm_le_quartic](declarations/safeminusdyadicblock-norm-le-quartic--c471578a291107d75cf78fc0.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeEvenDyadicBlock_norm_le_quartic](declarations/safeevendyadicblock-norm-le-quartic--5ac7cf3d334e5c265dfaa54c.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeOddDyadicBlock_norm_le_quartic](declarations/safeodddyadicblock-norm-le-quartic--44591756dc796694e854d1dc.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [safeEvenDefectDyadicBlock](declarations/safeevendefectdyadicblock--40dbda66f6f6d120cb503e9d.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_two](declarations/safeevendefectdyadicblock-norm-le-two--a7f2b28672ac313784ec15d0.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [safeAxialDyadicPoint](declarations/safeaxialdyadicpoint--231d25a9f30dcb61da3a3cb4.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [safeTransverseDyadicPoint](declarations/safetransversedyadicpoint--dbe39decfe3efd7239bb442e.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [dyadicPackingAt](declarations/dyadicpackingat--6824b997310d57db8b87342f.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [safeAxialDyadicPacking](declarations/safeaxialdyadicpacking--7434525ba7ff7268770e0551.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [safeTransverseDyadicPacking](declarations/safetransversedyadicpacking--9e49f0f28b13aef8d0b62530.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [safeAxialDyadicGram](declarations/safeaxialdyadicgram--67720f44187912fac1fb2e33.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [safeTransverseDyadicGram](declarations/safetransversedyadicgram--4373b23a5ad3d8a84b512db5.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [safeQuarticDyadicPackingValue](declarations/safequarticdyadicpackingvalue--fc89400dd9a773abcebdafc9.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [safeAxialDyadicGram_nonnegative](declarations/safeaxialdyadicgram-nonnegative--4f341c00959b5fa944d75cd9.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [safeTransverseDyadicGram_nonnegative](declarations/safetransversedyadicgram-nonnegative--d52262921b94ce1586bb714e.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [safeQuarticDyadicPackingValue_nonnegative](declarations/safequarticdyadicpackingvalue-nonnegative--7673967a2822ccd82c1f8b11.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [safeAxialDyadicPoint_normSq_le](declarations/safeaxialdyadicpoint-normsq-le--e2eb140c794692ffefba72a6.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeTransverseDyadicPoint_normSq_le](declarations/safetransversedyadicpoint-normsq-le--eb020ea769c96802cf84f804.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [PackingPoint.sub_normSq_le_two](declarations/packingpoint-sub-normsq-le-two--630ad2a4f67353ffecc1e8d8.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [safeDyadicEnvelopePairProduct](declarations/safedyadicenvelopepairproduct--5dc44916b3da8adde618324b.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [safeDyadicEnvelopePairProduct_nonnegative](declarations/safedyadicenvelopepairproduct-nonnegative--535f37846ab9e419ae9abe14.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [safeAxialDyadic_edgeProduct_le](declarations/safeaxialdyadic-edgeproduct-le--f65ebe480ca8fb6bacd2bec7.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [safeTransverseDyadic_edgeProduct_le](declarations/safetransversedyadic-edgeproduct-le--009d2abf1b655f5ee0b8ceeb.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [safeQuarticDyadicPackingValue_le_greenEnvelope](declarations/safequarticdyadicpackingvalue-le-greenenvelope--9268a7ded87c1e6992306d86.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
