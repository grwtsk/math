# Verification target: GRWTSK.Analysis.Basic.Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7300465a16327cc540fe33a4a064c58cbc074888",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7300465a16327cc540fe33a4a064c58cbc074888`.

Source path: `GRWTSK/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extDeriv](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv--6cf2ab24d9ea4db5eb5a51e5.md) | 81 | `declaration-track:6cf2ab24d9ea4db5eb5a51e51b3373940caac9164d15e7a1a0e9ef5ccdbcb360` |
| 2 | `def` | [extDerivWithin](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin--a56d052a0874925bd18c77e8.md) | 96 | `declaration-track:a56d052a0874925bd18c77e8357e68260060d4f55175b401cc67c1a1f72f02a4` |
| 3 | `theorem` | [extDerivWithin_univ](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-univ--76419ac561aaa48b9d5e8f33.md) | 101 | `result-track:76419ac561aaa48b9d5e8f3322466914744dc752f59529e026b1ec46322fee00` |
| 4 | `theorem` | [extDerivWithin_add](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-add--0a06101d5f8b166b4f0f3033.md) | 106 | `result-track:0a06101d5f8b166b4f0f3033aaf19d9fcbeb72cdec118086ef5c6a527b0cb06a` |
| 5 | `theorem` | [extDerivWithin_fun_add](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-fun-add--1abf292efc35240f1a71f14b.md) | 111 | `result-track:1abf292efc35240f1a71f14b698f58a1b2b2a4f9f18dc15cceef1e10fc4cfdc7` |
| 6 | `theorem` | [extDeriv_add](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-add--2885326bfd3170bf5604e1b6.md) | 116 | `result-track:2885326bfd3170bf5604e1b604cccb4b20e03cdb3b2329d0d9fd95f3aea8b9d2` |
| 7 | `theorem` | [extDeriv_fun_add](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-fun-add--adb42d3b66b7dd9cd362a96c.md) | 120 | `result-track:adb42d3b66b7dd9cd362a96ccdd852c7ebfc01b7cb8a5987d5454cf2c4a2bc29` |
| 8 | `theorem` | [extDerivWithin_smul](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-smul--591f7752ff05d87c5db36e75.md) | 124 | `result-track:591f7752ff05d87c5db36e7545fe732de690f7a7250ea6aa71a6a84de9f2203c` |
| 9 | `theorem` | [extDerivWithin_fun_smul](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-fun-smul--1fb54a15a4d52032cad80388.md) | 128 | `result-track:1fb54a15a4d52032cad803887c736c145035e5f88e306a6c82d14bb64c1f2445` |
| 10 | `theorem` | [extDeriv_smul](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-smul--5fa791349b5a8cdb399e406f.md) | 133 | `result-track:5fa791349b5a8cdb399e406f5b51a8d867bcc1cf3df1704d059bd310422be6e0` |
| 11 | `theorem` | [extDeriv_fun_smul](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-fun-smul--141e5d6842a4778497c529ad.md) | 137 | `result-track:141e5d6842a4778497c529adb6494372fe406a39d94732d5ef33436cd8dd5ec6` |
| 12 | `theorem` | [extDerivWithin_constOfIsEmpty](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-constofisempty--b26ce4e6cfcc293a574fa765.md) | 143 | `result-track:b26ce4e6cfcc293a574fa765a081f75aee24571c206400d847e575450dea10f6` |
| 13 | `theorem` | [extDeriv_constOfIsEmpty](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-constofisempty--cb6a62c5d27906880f2bbe36.md) | 152 | `result-track:cb6a62c5d27906880f2bbe3600ecf4b09c7643d1a88575b15e64333eaf2b8ffc` |
| 14 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin-eq--03eeeaab42db364bb85b9bf8.md) | 157 | `result-track:03eeeaab42db364bb85b9bf871c7c22906182b4d37dc7e338a5d1c96356c9a41` |
| 15 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_mem](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-mem--673d42d167be84173a9c13de.md) | 161 | `result-track:673d42d167be84173a9c13de33b369cd151c137d1225826fc2e1a1215b89a988` |
| 16 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_insert](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-insert--c1d5cea37954b8a7aff4a679.md) | 165 | `result-track:c1d5cea37954b8a7aff4a6794abe9c692da05a9de7e1700ac9ea7be9d0a1202b` |
| 17 | `theorem` | [Filter.EventuallyEq.extDerivWithin'](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin--4ad1c4f2b51a2b1830a03f7b.md) | 170 | `result-track:4ad1c4f2b51a2b1830a03f7bb813ec6c0d9ee17ecd23dd28760f36c9d4bffae1` |
| 18 | `theorem` | [Filter.EventuallyEq.extDerivWithin](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin--24b09b42cc130f3d90cbfe12.md) | 176 | `result-track:24b09b42cc130f3d90cbfe12d920dff4d74c2f1a86a1b31859f2d0afcd89a9b3` |
| 19 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_nhds](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderivwithin-eq-nhds--e038c7bbadbc1dba53f139ca.md) | 180 | `result-track:e038c7bbadbc1dba53f139caf8fb69147e589067d49d75b88ac1a14abf7b65f9` |
| 20 | `theorem` | [extDerivWithin_congr](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-congr--f5067e58bea17348263c7ac2.md) | 184 | `result-track:f5067e58bea17348263c7ac227fed570d56c8454694145e2c26ea3f15e63824f` |
| 21 | `theorem` | [extDerivWithin_congr'](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-congr--2c651b5460a20b21abb94af9.md) | 188 | `result-track:2c651b5460a20b21abb94af9852b877a1dbff0eea084e59985738b427d5e7d1f` |
| 22 | `theorem` | [Filter.EventuallyEq.extDeriv](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderiv--6fac88a53fd0b3e00dfe94e7.md) | 192 | `result-track:6fac88a53fd0b3e00dfe94e7007520a95db7961ab9e2c012f170628ed3b8f043` |
| 23 | `theorem` | [Filter.EventuallyEq.extDeriv_eq](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/filter-eventuallyeq-extderiv-eq--17153220296e6ae1b2301bc3.md) | 197 | `result-track:17153220296e6ae1b2301bc3e3ca2b55e23a157661b9c709af6065178a063ac6` |
| 24 | `theorem` | [extDerivWithin_apply](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-apply--7d5a4ba619ee175207bec24d.md) | 200 | `result-track:7d5a4ba619ee175207bec24dc4f6f3aeedeec5c53541a3f30179c67768c2f957` |
| 25 | `theorem` | [extDeriv_apply](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-apply--8de196c47bcd516a728ff7b1.md) | 207 | `result-track:8de196c47bcd516a728ff7b112064424f331776d7f0155c4f78de6375012433b` |
| 26 | `theorem` | [extDerivWithin_extDerivWithin_apply](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-extderivwithin-apply--48f13a283ffeee1058fa17a7.md) | 212 | `result-track:48f13a283ffeee1058fa17a7fb58dc8fdd7224494cda19764e95ace39bfabbc0` |
| 27 | `theorem` | [extDerivWithin_extDerivWithin_eqOn](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-extderivwithin-eqon--82324eb5a5f69e58849e2d44.md) | 230 | `result-track:82324eb5a5f69e58849e2d44c75336340e00657d3c4709153802efaedab391a3` |
| 28 | `theorem` | [extDeriv_extDeriv_apply](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-extderiv-apply--94b5ccb9d3a5c6d7e80cbded.md) | 237 | `result-track:94b5ccb9d3a5c6d7e80cbded3cd6d69d57f9c8b032031b8252140be3ae865cab` |
| 29 | `theorem` | [extDeriv_extDeriv](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-extderiv--abc61d87079c30689ef56e92.md) | 243 | `result-track:abc61d87079c30689ef56e92bb9eb82675679b78ccc46c369f39ff4df13a6063` |
| 30 | `theorem` | [extDerivWithin_pullback](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderivwithin-pullback--e34c83620326ef563e420bfc.md) | 248 | `result-track:e34c83620326ef563e420bfcefb6f47904f70704e6eb1b32d918c9257fc1893a` |
| 31 | `theorem` | [extDeriv_pullback](../../../../mathematics/Analysis/Basic/Variant66f3b3602098c6b0f01cd830e00cdd7298aa68eaf3d654c944c9efa12395a871.lean/declarations/extderiv-pullback--75eabf894b50fa174a61fd98.md) | 268 | `result-track:75eabf894b50fa174a61fd9893be097c88d59e097e80fd29d2e86b629f83aa42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
