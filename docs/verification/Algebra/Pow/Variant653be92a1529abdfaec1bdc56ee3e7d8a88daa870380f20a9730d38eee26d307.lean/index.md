# Verification target: GRWTSK.Algebra.Pow.Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52388851373574c7b4c1cf1a4cf3dfebd0ebb8a1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52388851373574c7b4c1cf1a4cf3dfebd0ebb8a1`.

Source path: `GRWTSK/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natPow_zero](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/natpow-zero--a2c7d67a5cea975cf8aa4b75.md) | 32 | `result-track:a2c7d67a5cea975cf8aa4b75195cd5f77195256c6573ae07e57de9d2dc89c336` |
| 2 | `theorem` | [natPow_one](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/natpow-one--e7b4f76a1530d5ad5e6387b4.md) | 33 | `result-track:e7b4f76a1530d5ad5e6387b4dd8b10e834f97113ef7232a35eb89594e639bfa7` |
| 3 | `theorem` | [zero_natPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/zero-natpow--e0c5ccb1606b43e347880a8e.md) | 34 | `result-track:e0c5ccb1606b43e347880a8e1ffd6ff456751823f65570f1677f7da492f30a51` |
| 4 | `theorem` | [one_natPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/one-natpow--b6c0add87a1798ec7d3316db.md) | 35 | `result-track:b6c0add87a1798ec7d3316db840a5f6441910c32f99c5e7e5ff3cc595b7413fa` |
| 5 | `structure` | [IsNatPowT](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnatpowt--33d6100565fc4f022934ec20.md) | 41 | `declaration-track:33d6100565fc4f022934ec20176a3d218933888c656a034e7175a5ba52310f84` |
| 6 | `theorem` | [IsNatPowT.run](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnatpowt-run--27377fff834101dc044516d5.md) | 45 | `result-track:27377fff834101dc044516d5c55f8ad55d7f77104e6c84a246cce57640c1ed5c` |
| 7 | `theorem` | [IsNatPowT.trans](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnatpowt-trans--c7fb178fc0c9994c585b7dfd.md) | 50 | `result-track:c7fb178fc0c9994c585b7dfd88179439bf751b67a68f4d6fe0668fa0b29f7b47` |
| 8 | `theorem` | [IsNatPowT.bit0](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnatpowt-bit0--6325a2e90efcd9cf3c8cef33.md) | 54 | `result-track:6325a2e90efcd9cf3c8cef335d73afa45c1f91d1ebe40490004f43548c455a55` |
| 9 | `theorem` | [IsNatPowT.bit1](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnatpowt-bit1--0d887e53e45d752c09c58434.md) | 56 | `result-track:0d887e53e45d752c09c5843437a7ef118aa652f1b2c5e75e84bda414fb52adda` |
| 10 | `def` | [evalNatPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/evalnatpow--7a94f3143c822d62af7aeb79.md) | 70 | `declaration-track:7a94f3143c822d62af7aeb79e79aa68048a76c0033180d149dd8fbf27777e59e` |
| 11 | `theorem` | [intPow_ofNat](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/intpow-ofnat--c9242fd6838370e7eb994948.md) | 113 | `result-track:c9242fd6838370e7eb99494814014cdf363717f2aedfe25bddafc3bc46d0e369` |
| 12 | `theorem` | [intPow_negOfNat_bit0](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/intpow-negofnat-bit0--d615abe9522b6383cb2c6726.md) | 116 | `result-track:d615abe9522b6383cb2c672650b45c68fa4a0c2a841ba5ac25e9768d325d608b` |
| 13 | `theorem` | [intPow_negOfNat_bit1](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/intpow-negofnat-bit1--aa46b46cd9783f88919e1654.md) | 123 | `result-track:aa46b46cd9783f88919e16542b8b3d445b9f9933266da8717b225c878f5a38aa` |
| 14 | `def` | [evalIntPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/evalintpow--855ef043b38cbe84468706c0.md) | 131 | `declaration-track:855ef043b38cbe84468706c0aa05026fd4bb42705c412dbed9c99111aedeb243` |
| 15 | `theorem` | [isNat_pow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnat-pow--4331fbafefbe645ec06882e2.md) | 155 | `result-track:4331fbafefbe645ec06882e26e27628b35228e845f04b91d7daafdd947370dde` |
| 16 | `theorem` | [isInt_pow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isint-pow--097d42fd53cfe0841ccb8930.md) | 160 | `result-track:097d42fd53cfe0841ccb8930bee4e9fda0a5524717a4a84e67f73cdb5af83b8b` |
| 17 | `theorem` | [isRat_pow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/israt-pow--ecd897c3fb11226579f3cc64.md) | 165 | `result-track:ecd897c3fb11226579f3cc649d5e9347190b60c6a133720e745b892cd6bf3ccc` |
| 18 | `def` | [evalPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/evalpow--44ae2e8e52d5aeb1d2567c1b.md) | 178 | `declaration-track:44ae2e8e52d5aeb1d2567c1b6b58b513c10fdb63e52421aea78856e1eb921adf` |
| 19 | `theorem` | [isNat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnat-zpow-pos--fffdd489f99d35b6ef32b1aa.md) | 208 | `result-track:fffdd489f99d35b6ef32b1aa521418cb082cd5a2c12103de92c5002726c13f90` |
| 20 | `theorem` | [isNat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isnat-zpow-neg--2dea06d0ffb7ec2bc80b7d48.md) | 213 | `result-track:2dea06d0ffb7ec2bc80b7d488b3b61d5f5c9b4ecbd06c3ac8141dfc0f87c717f` |
| 21 | `theorem` | [isInt_zpow_pos](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isint-zpow-pos--8138de5c349eeb2bfe772776.md) | 218 | `result-track:8138de5c349eeb2bfe7727766f679cb233d9fb75dbe056a9e84a4f5edbe36a0a` |
| 22 | `theorem` | [isInt_zpow_neg](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/isint-zpow-neg--e25222a830a02a3ddc1f40cf.md) | 223 | `result-track:e25222a830a02a3ddc1f40cfc3db403741bab6965f27a35498ce932ce35f6288` |
| 23 | `theorem` | [isRat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/israt-zpow-pos--57b25791cf46351b786b87dc.md) | 228 | `result-track:57b25791cf46351b786b87dce007e180bdcf6fc5de093b8f0de2b3e010e04531` |
| 24 | `theorem` | [isRat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/israt-zpow-neg--4810ad5235c5343513ea0c64.md) | 234 | `result-track:4810ad5235c5343513ea0c642938248693c23b791284a299fbabae8cc76ca5f4` |
| 25 | `def` | [evalZPow](../../../../mathematics/Algebra/Pow/Variant653be92a1529abdfaec1bdc56ee3e7d8a88daa870380f20a9730d38eee26d307.lean/declarations/evalzpow--28a86ab6af2628c83e258f17.md) | 251 | `declaration-track:28a86ab6af2628c83e258f1758e7c4837a56329102563c0a11245a26e11775e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
