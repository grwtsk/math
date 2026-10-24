# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41227433d053477cc82cf2a39b7046424e78eeec",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41227433d053477cc82cf2a39b7046424e78eeec`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftEnvelope`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftEnvelope.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuarticVolumePackingEnclosure`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuarticVolumePackingEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeDyadicQuarticRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicquarticradius--4f777052fffbbe51c5e7d0ec.md) | 41 | `declaration-track:4f777052fffbbe51c5e7d0ec296bc43db70bf530f5c5089dfbb166ba13d31757` |
| 2 | `theorem` | [safeDyadicQuarticRadius_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicquarticradius-nonnegative--ac297f443b5a9041b66c5001.md) | 44 | `result-track:ac297f443b5a9041b66c50016b1524b3e4ac7a75267ff98f8d3f174aaf6f2efc` |
| 3 | `theorem` | [safeShiftPlus_norm_le_quarticRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeshiftplus-norm-le-quarticradius--c81c6e5c0624475f8fda0448.md) | 49 | `result-track:c81c6e5c0624475f8fda04486f37713bf945d998320ffcc5dcc5fdde6aad7fb6` |
| 4 | `theorem` | [safeShiftMinus_norm_le_quarticRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeshiftminus-norm-le-quarticradius--f9abe8fd8635fb39d8dde19d.md) | 53 | `result-track:f9abe8fd8635fb39d8dde19d6f2a5b0be9fad52c6a742c3d59f789807b0738cb` |
| 5 | `theorem` | [safeShiftCenter_norm_le_quarticRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeshiftcenter-norm-le-quarticradius--2838ae5ec5aa028cbee3a37e.md) | 57 | `result-track:2838ae5ec5aa028cbee3a37e9ca27845cf2d2310356e19c217096b8acb133167` |
| 6 | `def` | [safeDyadicQuarticBlockEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicquarticblockenvelope--a79cd874d25d1d44468a0cff.md) | 62 | `declaration-track:a79cd874d25d1d44468a0cff24b397894b8646a9a453d4a64f3464f8f1e22c3c` |
| 7 | `theorem` | [safeDyadicQuarticBlockEnvelope_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicquarticblockenvelope-nonnegative--2d1d81dc0ce4be4a52e9ec4d.md) | 67 | `result-track:2d1d81dc0ce4be4a52e9ec4d042dc4dc6e44453abf518d59162d75d4d1a887fb` |
| 8 | `theorem` | [safeDyadicBlock_norm_le_quarticEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicblock-norm-le-quarticenvelope--18fcbf00435a314ccc20d18e.md) | 74 | `result-track:18fcbf00435a314ccc20d18eb236082bcca5b98830134200e61424b2451db727` |
| 9 | `def` | [safeCenterDyadicBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safecenterdyadicblock--709c495cbde2353921cd7581.md) | 105 | `declaration-track:709c495cbde2353921cd758187bf25c63f48735751ce381e036dc8dac8af7ebd` |
| 10 | `theorem` | [safeCenterDyadicBlock_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safecenterdyadicblock-norm-le--5ea8e2626e6b67b65f4d8f9d.md) | 108 | `result-track:5ea8e2626e6b67b65f4d8f9d2b1d5bcff5a93a9ec0eaa9924fce848015ca596f` |
| 11 | `theorem` | [safePlusDyadicBlock_norm_le_quartic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeplusdyadicblock-norm-le-quartic--f5a4afae314a9dfa8ba16019.md) | 117 | `result-track:f5a4afae314a9dfa8ba1601953eb13b0e3a766128154971a23513f402ac79b2c` |
| 12 | `theorem` | [safeMinusDyadicBlock_norm_le_quartic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeminusdyadicblock-norm-le-quartic--c471578a291107d75cf78fc0.md) | 126 | `result-track:c471578a291107d75cf78fc04c45d7aa42b709a9ee5b163cb2abf9ad2e545d18` |
| 13 | `theorem` | [safeEvenDyadicBlock_norm_le_quartic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeevendyadicblock-norm-le-quartic--5ac7cf3d334e5c265dfaa54c.md) | 135 | `result-track:5ac7cf3d334e5c265dfaa54ceb40a1abb3f55b7433b371bff79c5c13b8d8da26` |
| 14 | `theorem` | [safeOddDyadicBlock_norm_le_quartic](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeodddyadicblock-norm-le-quartic--44591756dc796694e854d1dc.md) | 148 | `result-track:44591756dc796694e854d1dc9894c21b5ef2d6853029521aeed97dcb6bf38cf6` |
| 15 | `def` | [safeEvenDefectDyadicBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeevendefectdyadicblock--40dbda66f6f6d120cb503e9d.md) | 161 | `declaration-track:40dbda66f6f6d120cb503e9ddb3522e0c5fe5b46966007133ec41c55c2f38a2d` |
| 16 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeevendefectdyadicblock-norm-le-two--a7f2b28672ac313784ec15d0.md) | 164 | `result-track:a7f2b28672ac313784ec15d00335830e925821426dac9de53945b7195772d1ae` |
| 17 | `def` | [safeAxialDyadicPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadicpoint--231d25a9f30dcb61da3a3cb4.md) | 176 | `declaration-track:231d25a9f30dcb61da3a3cb4278d49dca54939d4eadb890afb415e1ac0284702` |
| 18 | `def` | [safeTransverseDyadicPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadicpoint--dbe39decfe3efd7239bb442e.md) | 181 | `declaration-track:dbe39decfe3efd7239bb442e49259b816d88864d1df95f6b3eaf5d31ab5579aa` |
| 19 | `def` | [dyadicPackingAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/dyadicpackingat--6824b997310d57db8b87342f.md) | 185 | `declaration-track:6824b997310d57db8b87342f2b2499ba95d8346d2fe05a68326cfd0c19af02fe` |
| 20 | `def` | [safeAxialDyadicPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadicpacking--7434525ba7ff7268770e0551.md) | 189 | `declaration-track:7434525ba7ff7268770e0551d5aff6a61ba18ceb20acbf55312897c2c24395ba` |
| 21 | `def` | [safeTransverseDyadicPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadicpacking--9e49f0f28b13aef8d0b62530.md) | 193 | `declaration-track:9e49f0f28b13aef8d0b62530ba9a1211e676803dac62164a22655d991b314151` |
| 22 | `def` | [safeAxialDyadicGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadicgram--67720f44187912fac1fb2e33.md) | 197 | `declaration-track:67720f44187912fac1fb2e336be20f946bd24c8734aac04e7fa32b85b8d02471` |
| 23 | `def` | [safeTransverseDyadicGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadicgram--4373b23a5ad3d8a84b512db5.md) | 200 | `declaration-track:4373b23a5ad3d8a84b512db5182b9a17f05c6477718373858858cf5a54f6ae54` |
| 24 | `def` | [safeQuarticDyadicPackingValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safequarticdyadicpackingvalue--fc89400dd9a773abcebdafc9.md) | 203 | `declaration-track:fc89400dd9a773abcebdafc94c6c37337a00d6194147cc1e9f9a480c10a4df7e` |
| 25 | `theorem` | [safeAxialDyadicGram_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadicgram-nonnegative--4f341c00959b5fa944d75cd9.md) | 206 | `result-track:4f341c00959b5fa944d75cd9005e5b62e6382e0e179f91dcd96c55d4a17a9394` |
| 26 | `theorem` | [safeTransverseDyadicGram_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadicgram-nonnegative--d52262921b94ce1586bb714e.md) | 211 | `result-track:d52262921b94ce1586bb714e8e331e1d250984c69a68bdecfe7c94f13e623fc5` |
| 27 | `theorem` | [safeQuarticDyadicPackingValue_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safequarticdyadicpackingvalue-nonnegative--7673967a2822ccd82c1f8b11.md) | 216 | `result-track:7673967a2822ccd82c1f8b1169e276b902bf241f7ed67f3c13ebf2834fb8902c` |
| 28 | `theorem` | [safeAxialDyadicPoint_normSq_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadicpoint-normsq-le--e2eb140c794692ffefba72a6.md) | 224 | `result-track:e2eb140c794692ffefba72a626b0a0e18897fd2bc7f0b98e323f7b5d65b93a5d` |
| 29 | `theorem` | [safeTransverseDyadicPoint_normSq_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadicpoint-normsq-le--eb020ea769c96802cf84f804.md) | 254 | `result-track:eb020ea769c96802cf84f8047051ca4ef1c23dd257ed2d14899a98ece6602559` |
| 30 | `theorem` | [PackingPoint.sub_normSq_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/packingpoint-sub-normsq-le-two--630ad2a4f67353ffecc1e8d8.md) | 284 | `result-track:630ad2a4f67353ffecc1e8d897df5ad1f6cffe467a73ee04a706d9068747dec4` |
| 31 | `def` | [safeDyadicEnvelopePairProduct](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicenvelopepairproduct--5dc44916b3da8adde618324b.md) | 291 | `declaration-track:5dc44916b3da8adde618324bb60847f3006bf1d1084c78976f7c818d225858ce` |
| 32 | `theorem` | [safeDyadicEnvelopePairProduct_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safedyadicenvelopepairproduct-nonnegative--535f37846ab9e419ae9abe14.md) | 298 | `result-track:535f37846ab9e419ae9abe14c1937b3a45202edb1397d9f50aa6a63b490886c4` |
| 33 | `theorem` | [safeAxialDyadic_edgeProduct_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safeaxialdyadic-edgeproduct-le--f65ebe480ca8fb6bacd2bec7.md) | 305 | `result-track:f65ebe480ca8fb6bacd2bec706b78e8b24b38de741ed759d8dc0beabfa58f5e5` |
| 34 | `theorem` | [safeTransverseDyadic_edgeProduct_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safetransversedyadic-edgeproduct-le--009d2abf1b655f5ee0b8ceeb.md) | 346 | `result-track:009d2abf1b655f5ee0b8ceeb23129c23e0e343514014e602312117f61f048437` |
| 35 | `theorem` | [safeQuarticDyadicPackingValue_le_greenEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/declarations/safequarticdyadicpackingvalue-le-greenenvelope--9268a7ded87c1e6992306d86.md) | 389 | `result-track:9268a7ded87c1e6992306d86a00362a2a236aefc42969a6b2607320ed3827289` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
