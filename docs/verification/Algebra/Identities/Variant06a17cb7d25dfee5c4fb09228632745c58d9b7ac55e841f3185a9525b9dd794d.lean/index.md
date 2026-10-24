# Verification target: GRWTSK.Algebra.Identities.Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40d17b27a46cf054d5cd6bef1f6e204ac0d441e2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40d17b27a46cf054d5cd6bef1f6e204ac0d441e2`.

Source path: `GRWTSK/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Frobenius` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Verschiebung` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.MulP` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [frobenius_verschiebung](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/frobenius-verschiebung--febdde1fe2f24ca283af4d31.md) | 48 | `result-track:febdde1fe2f24ca283af4d31b6a0c57847f0ce3598a7d2b9251af28528b509d1` |
| 2 | `theorem` | [verschiebung_zmod](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/verschiebung-zmod--20cf18f300a11b2200e7ff20.md) | 56 | `result-track:20cf18f300a11b2200e7ff20652941ccffd80774fa5904995f1961009ad9b9ce` |
| 3 | `theorem` | [coeff_p_pow](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/coeff-p-pow--7687c50d20f7bb02a7a89252.md) | 61 | `result-track:7687c50d20f7bb02a7a89252310e89b7e33a20812835ae6981353b2bfa6440f8` |
| 4 | `theorem` | [coeff_p_pow_eq_zero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/coeff-p-pow-eq-zero--366fc13694b6942762dcb0e0.md) | 67 | `result-track:366fc13694b6942762dcb0e0f4ad12f8131979850a74cc12b9dc8f0bf4ebbe4c` |
| 5 | `theorem` | [coeff_p](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/coeff-p--83a0b0dbe5f02564e881f332.md) | 76 | `result-track:83a0b0dbe5f02564e881f332acf088783f1960f88e97e93f979325cddb90a68a` |
| 6 | `theorem` | [coeff_p_zero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/coeff-p-zero--ce4dfe22d766aa729a6eb9b5.md) | 82 | `result-track:ce4dfe22d766aa729a6eb9b597925372b37caceaf5533f7100e6085b19a06e3f` |
| 7 | `theorem` | [coeff_p_one](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/coeff-p-one--7a73407f30001f884d07d2a7.md) | 87 | `result-track:7a73407f30001f884d07d2a7efcef4024cb30f23c426419c58fd64b0430e2771` |
| 8 | `theorem` | [p_nonzero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/p-nonzero--d07906cef25b279fa6dab16a.md) | 89 | `result-track:d07906cef25b279fa6dab16a340d98f4bebb164958f8fa0cdbc526e54a924fc3` |
| 9 | `theorem` | [FractionRing.p_nonzero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/fractionring-p-nonzero--42730b0ee39597f4116d9d3d.md) | 93 | `result-track:42730b0ee39597f4116d9d3dd3ccb1fe44adeb4ceffa14be8443d1817014db01` |
| 10 | `theorem` | [verschiebung_mul_frobenius](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/verschiebung-mul-frobenius--5eb9c64090cbf5845110891e.md) | 100 | `result-track:5eb9c64090cbf5845110891e7c2772f9ce00ec98202fe32124b5038d9fd194a6` |
| 11 | `theorem` | [mul_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/mul-charp-coeff-zero--01cd7df7b7e4d3eca18c8bec.md) | 110 | `result-track:01cd7df7b7e4d3eca18c8bec872e120d8e0349a6c2704210283b07aa367512d6` |
| 12 | `theorem` | [mul_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/mul-charp-coeff-succ--97109afb9a3f2389b305a8c0.md) | 114 | `result-track:97109afb9a3f2389b305a8c067440ac8cf2d98dd389ab7cf7953e9b0c04b01c6` |
| 13 | `theorem` | [mul_pow_charP_coeff_zero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/mul-pow-charp-coeff-zero--c982be321abbcb3fd6215974.md) | 118 | `result-track:c982be321abbcb3fd62159742a6f8583dc4c5de9603d61bb55c4dec0366810fa` |
| 14 | `theorem` | [mul_pow_charP_coeff_succ](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/mul-pow-charp-coeff-succ--ed603000c11a25d6fb9c3592.md) | 129 | `result-track:ed603000c11a25d6fb9c3592720c5a89ce4fddc8892f4e5b8df14cba70cc616f` |
| 15 | `theorem` | [verschiebung_frobenius](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/verschiebung-frobenius--9a2bdd512269d1e5d398c575.md) | 137 | `result-track:9a2bdd512269d1e5d398c5759c043ba70460ddf7b4f0bdc3d6e5d9f9d7c5debd` |
| 16 | `theorem` | [verschiebung_frobenius_comm](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/verschiebung-frobenius-comm--f24e87e4f029bfb5d2464704.md) | 142 | `result-track:f24e87e4f029bfb5d24647044df097f41cad27d31e1e35bdf95d727a5d745d18` |
| 17 | `theorem` | [iterate_verschiebung_coeff_eq_zero](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-coeff-eq-zero--6ee7da853f456e7d64bb9344.md) | 153 | `result-track:6ee7da853f456e7d64bb9344b1ec7c9b5da700c7fa0d851aff9fcd4c7cc6122e` |
| 18 | `theorem` | [iterate_verschiebung_coeff](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-coeff--c5e8b4418e81f6c2c422fd00.md) | 164 | `result-track:c5e8b4418e81f6c2c422fd00db849b662e1907914fdc365559ee8ff6d3b7369a` |
| 19 | `theorem` | [iterate_verschiebung_mul_left](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-mul-left--5a669075a491cf8eea35cdb7.md) | 171 | `result-track:5a669075a491cf8eea35cdb722092650816de2cab625f627e0f3c5a6f10b9ccb` |
| 20 | `theorem` | [iterate_verschiebung_mul](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-mul--e35c1d98dc9915c056adf904.md) | 181 | `result-track:e35c1d98dc9915c056adf9044d618a62e003c8fc51827bc45e82db9f2cf58dd3` |
| 21 | `theorem` | [iterate_frobenius_coeff](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-frobenius-coeff--3725237458e1dc24c64090c9.md) | 199 | `result-track:3725237458e1dc24c64090c98e47fa38137de99742112db5f29c7381cc35cbd9` |
| 22 | `theorem` | [iterate_verschiebung_mul_coeff](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-mul-coeff--5658f0d55a3aa828de745ae8.md) | 207 | `result-track:5658f0d55a3aa828de745ae89dfe92ba0ff354ef685ffdea66564e9653cd35f6` |
| 23 | `theorem` | [iterate_verschiebung_iterate_frobenius](../../../../mathematics/Algebra/Identities/Variant06a17cb7d25dfee5c4fb09228632745c58d9b7ac55e841f3185a9525b9dd794d.lean/declarations/iterate-verschiebung-iterate-frobenius--e1af746698234bd30c6a3dce.md) | 221 | `result-track:e1af746698234bd30c6a3dceec67b07d06a570a8c78745f9709ab6444e43c9cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
