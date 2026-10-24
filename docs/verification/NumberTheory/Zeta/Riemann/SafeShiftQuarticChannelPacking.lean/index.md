# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76dd7e0b9ed14c0c013859a12283af757677df68",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76dd7e0b9ed14c0c013859a12283af757677df68`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftSymmetricPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeShiftCenter](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeshiftcenter--48b152e7f574b110b9bbe63a.md) | 38 | `declaration-track:48b152e7f574b110b9bbe63a688529392bc65598ac001b4436f556b9e0ad5beb` |
| 2 | `theorem` | [safeShiftCenter_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeshiftcenter-re--b7370d8d608d56fea63f4c3d.md) | 42 | `result-track:b7370d8d608d56fea63f4c3d5441c5ac6cc2edfc4402960b59e9f61ebc66d693` |
| 3 | `theorem` | [safeShiftCenter_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeshiftcenter-im--c8da51fc5b4e412081654bdc.md) | 47 | `result-track:c8da51fc5b4e412081654bdc980cf0fcf1e28ccbae7ce0b33a3b5ba8d305f87c` |
| 4 | `def` | [safeCenterPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safecenterprimepowerterm--6c706fd19d726030cdc35561.md) | 52 | `declaration-track:6c706fd19d726030cdc355610e2d14137707fdb02fa5971e07639a84a5046eec` |
| 5 | `def` | [safeEvenDefectPrimePowerTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeevendefectprimepowerterm--d885f7fa2703b0c77cfa32fb.md) | 57 | `declaration-track:d885f7fa2703b0c77cfa32fbbbf5296bdb8088b58417c44e99635e60d119856f` |
| 6 | `theorem` | [safeShiftPlus_eq_center_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeshiftplus-eq-center-of-zerodefect--ff7ffb42c78f2df3f410293a.md) | 62 | `result-track:ff7ffb42c78f2df3f410293a42a49226f11e0b15efb970b2cd426112356ce0f2` |
| 7 | `theorem` | [safeShiftMinus_eq_center_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeshiftminus-eq-center-of-zerodefect--0027baec4e6441b423a3099c.md) | 68 | `result-track:0027baec4e6441b423a3099c25004b25bda74ca647ccd05d635c37de3e5dd4df` |
| 8 | `theorem` | [safeEvenDefectPrimePowerTerm_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeevendefectprimepowerterm-eq-zero-of-zerodefect--de945b33b998a641dc6d48e9.md) | 75 | `result-track:de945b33b998a641dc6d48e963335320214a27641f95df385a44e7e438fe8fa3` |
| 9 | `theorem` | [natValue_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/natvalue-pos--3e08388850daa29831aa811e.md) | 88 | `result-track:3e08388850daa29831aa811e93415a6d7399b0bcfdf230e13abae8d148053ba3` |
| 10 | `theorem` | [natValue_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/natvalue-ne-zero--b71cb1bea1bc330cdf00dd9c.md) | 93 | `result-track:b71cb1bea1bc330cdf00dd9c6f76ae75c54d1cb5d5093a39e6165db99ff192a0` |
| 11 | `theorem` | [vonMangoldtDirichletTerm_im_eq_zero_of_real](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/vonmangoldtdirichletterm-im-eq-zero-of-real--79eae011ff5fe43e7a652aa7.md) | 101 | `result-track:79eae011ff5fe43e7a652aa7c225c67511a7914eb7fc9353724d4835ab86a73d` |
| 12 | `theorem` | [safePlusPrimePowerTerm_im_eq_zero_of_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeplusprimepowerterm-im-eq-zero-of-im-zero--8267a204f3922372f7edf37e.md) | 111 | `result-track:8267a204f3922372f7edf37e85c62a94f1184621a80e457d26f0bd8e8347d250` |
| 13 | `theorem` | [safeMinusPrimePowerTerm_im_eq_zero_of_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeminusprimepowerterm-im-eq-zero-of-im-zero--09ec02790ff7e26e451987b4.md) | 126 | `result-track:09ec02790ff7e26e451987b43718962946723b5182d9efd33f4c0719959f19d3` |
| 14 | `theorem` | [safeOddPrimePowerTerm_im_eq_zero_of_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeoddprimepowerterm-im-eq-zero-of-im-zero--7135d07170f151d611976019.md) | 141 | `result-track:7135d07170f151d611976019462af40138714e197bd870101a32c356fd57dd18` |
| 15 | `def` | [safeAxialPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeaxialpoint--8e653dc42b4b4529bfe2069e.md) | 152 | `declaration-track:8e653dc42b4b4529bfe2069e9fb4ef3adc03a587db8ab25e90fd8149c003ee20` |
| 16 | `def` | [safeTransversePoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepoint--b2c131256641002bb893a7cb.md) | 159 | `declaration-track:b2c131256641002bb893a7cbc2d70a53641353d97ef5452f2f302f25e20ff226` |
| 17 | `def` | [safeAxialPointFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeaxialpointfamily--f3c04874489494398204e08c.md) | 164 | `declaration-track:f3c04874489494398204e08cf29587a6ac90680857987caacd8fce1cfb6c503a` |
| 18 | `def` | [safeTransversePointFamily](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepointfamily--a442c7375bd1a175cbdf5f50.md) | 172 | `declaration-track:a442c7375bd1a175cbdf5f50f061a2e24da173e907430c03569284a84590ea2f` |
| 19 | `def` | [safeAxialPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeaxialpackingsequence--d216942e8dc08bb65a175b83.md) | 180 | `declaration-track:d216942e8dc08bb65a175b83c79b18c654a4d34328bd058df8d48438baf2e343` |
| 20 | `def` | [safeTransversePackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepackingsequence--9099ca8cde6e0a6696db0700.md) | 184 | `declaration-track:9099ca8cde6e0a6696db07009c3527c3692b558093cc70a99c10005b1e26b348` |
| 21 | `theorem` | [safeAxialPacking_valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeaxialpacking-valueat-nonnegative--ad92c89b104db7e977facb6a.md) | 188 | `result-track:ad92c89b104db7e977facb6aed28ec0be93d816f6b37139ac644bc629edc3b2b` |
| 22 | `theorem` | [safeTransversePacking_valueAt_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepacking-valueat-nonnegative--8f16747dcb68a7960d57dde4.md) | 193 | `result-track:8f16747dcb68a7960d57dde46eccaed3914a0b8441023eec075d29fc85059803` |
| 23 | `theorem` | [safeAxialPacking_valueAt_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safeaxialpacking-valueat-eq-zero-of-zerodefect--3871199caf12d06adbddf501.md) | 199 | `result-track:3871199caf12d06adbddf5012002d7aa0b0683e829a67f64ef932425e7bf711f` |
| 24 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepacking-valueat-eq-zero-of-zerodefect--962d40d9fb2208383a9ab71c.md) | 213 | `result-track:962d40d9fb2208383a9ab71ca95449a17f79c1ddf5396ec7fe2e5a3ec9cf6db6` |
| 25 | `theorem` | [safeTransversePacking_valueAt_eq_zero_of_im_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safetransversepacking-valueat-eq-zero-of-im-zero--8b00b0d900d64c36471260d8.md) | 230 | `result-track:8b00b0d900d64c36471260d838d9242d03ea882dc6610410a0bc0857becb6c14` |
| 26 | `def` | [safeQuarticStructuredPackingValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safequarticstructuredpackingvalue--ee4e6a31a7b9d7f06fb64ebe.md) | 247 | `declaration-track:ee4e6a31a7b9d7f06fb64ebe86c800e6b86bfb1352a3d2c808b3e19af14b7358` |
| 27 | `theorem` | [safeQuarticStructuredPackingValue_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safequarticstructuredpackingvalue-nonnegative--39dce44e31e78f7ece0dcfdc.md) | 252 | `result-track:39dce44e31e78f7ece0dcfdc3693ead82b04a5d443177d596255ad24bac891f4` |
| 28 | `theorem` | [safeQuarticStructuredPackingValue_eq_zero_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safequarticstructuredpackingvalue-eq-zero-of-zerodefect--cc4cd12fb829fecc6b3d4510.md) | 259 | `result-track:cc4cd12fb829fecc6b3d451095b8d9bf1b657986872e626e5854b23257794739` |
| 29 | `theorem` | [safeQuarticStructuredPackingValue_zero_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/declarations/safequarticstructuredpackingvalue-zero-height--060bef22750275c45984a5a6.md) | 270 | `result-track:060bef22750275c45984a5a69bdb0f3c5ac5cac78023b4239333d05c850057a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
