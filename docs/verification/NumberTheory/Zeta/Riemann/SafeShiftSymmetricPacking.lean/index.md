# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftSymmetricPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42d3ac46d128548c1137cd00353110ff01b89866",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42d3ac46d128548c1137cd00353110ff01b89866`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeEvenPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenprimepowerterm--d19cc97ea5d7b9664f6e3cdf.md) | 44 | `declaration-track:d19cc97ea5d7b9664f6e3cdfd8b389c1ad2bc2ee02f88f65650c860286de61f1` |
| 2 | `def` | [safeOddPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeoddprimepowerterm--25001b917904fa9ec6f4b794.md) | 49 | `declaration-track:25001b917904fa9ec6f4b794d4a13926521891b19abccd7f51def5ff10cce7ab` |
| 3 | `def` | [criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/criticalreflectedzero--c7821ec978bdaed5680aeb33.md) | 54 | `declaration-track:c7821ec978bdaed5680aeb335a3856209413197727e43c834232265d2cd3fff3` |
| 4 | `theorem` | [criticalReflectedZero_val](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/criticalreflectedzero-val--8b73857edcf3007e2fb33963.md) | 58 | `result-track:8b73857edcf3007e2fb339631fb679bfee7cc415a8baee6578aa00ff88efd2a6` |
| 5 | `theorem` | [safePlusPrimePowerTerm_criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeplusprimepowerterm-criticalreflectedzero--a81015885c66acd9545daaa3.md) | 63 | `result-track:a81015885c66acd9545daaa388885d9764321dedbc6f50ec8e11f1518a0168e8` |
| 6 | `theorem` | [safeMinusPrimePowerTerm_criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeminusprimepowerterm-criticalreflectedzero--4b61964147a9db4eae0d0467.md) | 70 | `result-track:4b61964147a9db4eae0d0467aaf98308ece9a1df44add2a48c7d3be65dffecd6` |
| 7 | `theorem` | [safeEvenPrimePowerTerm_criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenprimepowerterm-criticalreflectedzero--940c92ed3cd0b3ff20094c38.md) | 78 | `result-track:940c92ed3cd0b3ff20094c3829acdc91a48321f49baa93181c26fdcf61389d87` |
| 8 | `theorem` | [safeOddPrimePowerTerm_criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeoddprimepowerterm-criticalreflectedzero--7165248586b1db2fe0d06521.md) | 89 | `result-track:7165248586b1db2fe0d065216a740a3030ab5be8434f577d03f60102e6b4dc4a` |
| 9 | `theorem` | [safeShiftPlus_eq_safeShiftMinus_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeshiftplus-eq-safeshiftminus-of-zerodefect--bddfb0d4a939597ea21303ec.md) | 100 | `result-track:bddfb0d4a939597ea21303ecbd8d4f64dbdc936582de75f7eb7cd867a8a775f1` |
| 10 | `theorem` | [safeOddPrimePowerTerm_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeoddprimepowerterm-eq-zero-of-zerodefect--89fc2b5e37cafa3c469e3006.md) | 107 | `result-track:89fc2b5e37cafa3c469e300654566fecb56d84250295a34acb9e299c416066bb` |
| 11 | `def` | [safeEvenOddRealPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpoint--5999e13fee9eaf41498a3fef.md) | 116 | `declaration-track:5999e13fee9eaf41498a3fef5ef3a918d67aa53682c624c6c5a26b6b87b79d0a` |
| 12 | `def` | [reflectY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/reflecty--05686e53bae182717fb1a189.md) | 124 | `declaration-track:05686e53bae182717fb1a18904689dc23a1eada6869b7843df34833f8d1ea146` |
| 13 | `theorem` | [reflectY_x](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/reflecty-x--83729e0ad140ec303f0802e9.md) | 127 | `result-track:83729e0ad140ec303f0802e9cd57e498cf27c01082468b0821d50158c1f2bca8` |
| 14 | `theorem` | [reflectY_y](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/reflecty-y--b23396b31af820ed52ef27eb.md) | 128 | `result-track:b23396b31af820ed52ef27ebe1b084c2986032bd82d719ed7779dc7c3a030c93` |
| 15 | `theorem` | [safeEvenOddRealPoint_criticalReflectedZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpoint-criticalreflectedzero--f2a20361f8072f2cd7ead73c.md) | 134 | `result-track:f2a20361f8072f2cd7ead73c7d6c9caf976f1367e4e11bbda6fcb63632d36381` |
| 16 | `def` | [reflectY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/reflecty--39c87a36c66219251dc3555d.md) | 147 | `declaration-track:39c87a36c66219251dc3555d2d390ccd294192e2309c8efe1c36d0094bc83137` |
| 17 | `theorem` | [orientedVolume_reflectY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/orientedvolume-reflecty--9f46fa79e12979c094709f52.md) | 151 | `result-track:9f46fa79e12979c094709f52e276216d2112756b1c313a6fd9f79f073c2123f4` |
| 18 | `theorem` | [gramVolume_reflectY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/gramvolume-reflecty--db98489b527ed7af63e8e9d7.md) | 157 | `result-track:db98489b527ed7af63e8e9d7a8d292ccf939ec671fd85493b73b63ee1526df3b` |
| 19 | `theorem` | [gramVolume_eq_zero_of_y_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/gramvolume-eq-zero-of-y-zero--55948bd23d9325a69bcf57c7.md) | 162 | `result-track:55948bd23d9325a69bcf57c719ce1f567ad269c55ebfbd6393ac5962f9ab54dd` |
| 20 | `def` | [safeEvenOddRealPointFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpointfamily--e165eb9552c8f56430c0a8b3.md) | 175 | `declaration-track:e165eb9552c8f56430c0a8b3f69c9f99cd7f82ffd19e1e6859c761f5c9c855a6` |
| 21 | `def` | [safeEvenOddRealPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpackingsequence--e6db524ca7716460ae454360.md) | 184 | `declaration-track:e6db524ca7716460ae45436013dc5518b1b5b901b663aa55967b0f9bca81c3e1` |
| 22 | `theorem` | [safeEvenOddRealPackingSequence_valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpackingsequence-valueat-nonnegative--fb0e8d3c4c9da67c43b1740a.md) | 189 | `result-track:fb0e8d3c4c9da67c43b1740a58a9dbd53c1b6f6c30da05cf411912378bfad795` |
| 23 | `theorem` | [safeEvenOddRealPoint_y_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpoint-y-eq-zero-of-zerodefect--a7d6ed5b597396576c56d748.md) | 195 | `result-track:a7d6ed5b597396576c56d74861e401c36125b781ddd90b53138c17ed1d24e24d` |
| 24 | `theorem` | [safeEvenOddRealPackingSequence_valueAt_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/declarations/safeevenoddrealpackingsequence-valueat-eq-zero-of-zerodefect--1d35c160593eff8be295bafe.md) | 203 | `result-track:1d35c160593eff8be295bafe024ebae627621f662880b83abb86fb2a37d14ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
