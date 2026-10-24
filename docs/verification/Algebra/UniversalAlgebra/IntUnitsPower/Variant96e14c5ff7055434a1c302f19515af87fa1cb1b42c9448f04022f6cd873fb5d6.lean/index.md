# Verification target: GRWTSK.Algebra.UniversalAlgebra.IntUnitsPower.Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f9036696f401df644f068a768496c6362f4fdaf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f9036696f401df644f068a768496c6362f4fdaf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/instance--34a08de1ad0427218ec50ba7.md) | 36 | `declaration-track:34a08de1ad0427218ec50ba729f72bc54022d20cbd47a9791e5ea31b96057cc8` |
| 2 | `lemma` | [ZMod.smul_units_def](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/zmod-smul-units-def--b5a72dc318b7774f44c1b0b0.md) | 39 | `result-track:b5a72dc318b7774f44c1b0b020922b8a4da1b50c6caaa88043210018ded3e4f8` |
| 3 | `lemma` | [ZMod.natCast_smul_units](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/zmod-natcast-smul-units--c23dfeebd218fc03c94a5048.md) | 42 | `result-track:c23dfeebd218fc03c94a5048865bf372073925ba9b9c0956899e1706dece554a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/instance--f2fac118cb900881d18b8504.md) | 46 | `declaration-track:f2fac118cb900881d18b850425bd72df97f11d69f155762a1bafacf130c094dd` |
| 5 | `instance` | [Int.instUnitsPow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/int-instunitspow--813cdad1c9e205f39dcf0547.md) | 67 | `declaration-track:813cdad1c9e205f39dcf0547ed1354111d1ee89a9f6e787b6f921f07cfe2efb5` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/example--d06330b0d5268d04b4e7558e.md) | 72 | `declaration-track:d06330b0d5268d04b4e7558ec5423c26e85839d659167a0733e12d195aeb4910` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/example--6b314b65dcfc4c95c5fb851f.md) | 73 | `declaration-track:6b314b65dcfc4c95c5fb851f61df011012bdd245417da1ab5c4ea62dac59970e` |
| 8 | `lemma` | [ofMul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/ofmul-uzpow--83c330081de856622f314068.md) | 75 | `result-track:83c330081de856622f314068f6c69cf2c7803acdf2e55e0003f99fafbc5a54c1` |
| 9 | `lemma` | [toMul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/tomul-uzpow--5aa44d735c34d00956d14bad.md) | 77 | `result-track:5aa44d735c34d00956d14bad2b19f18d6523d74944ec9bc6c33f2f54709e6241` |
| 10 | `lemma` | [uzpow_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-natcast--bfa7bbba2996801dd4656723.md) | 80 | `result-track:bfa7bbba2996801dd4656723afc143ec61bbd368c8aad5161f530dd50d1a916b` |
| 11 | `lemma` | [uzpow_coe_nat](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-coe-nat--129c32d33b1d012e8153a744.md) | 84 | `result-track:129c32d33b1d012e8153a7448a51f6143cb8f1aa8e8a84a2402bc387b96d0323` |
| 12 | `lemma` | [one_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/one-uzpow--f4f19d3b09e16439a4c7854d.md) | 88 | `result-track:f4f19d3b09e16439a4c7854d537b4aa0422e4a643f4f95dacb52fd0ea1945946` |
| 13 | `lemma` | [mul_uzpow](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/mul-uzpow--352560f8684e940444939d84.md) | 91 | `result-track:352560f8684e940444939d84c944ce6563e3861a201417c41f28ed7f7fa13326` |
| 14 | `lemma` | [uzpow_zero](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-zero--e85fdab642ff1c6f09001251.md) | 94 | `result-track:e85fdab642ff1c6f09001251468fe017cddc8c37fd4d0332c4d9c207b2341229` |
| 15 | `lemma` | [uzpow_one](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-one--ee64f42e488f6998f300fba6.md) | 97 | `result-track:ee64f42e488f6998f300fba6ba50d44f3141a76b22ad1b12eaa09e2f83e60ca9` |
| 16 | `lemma` | [uzpow_mul](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-mul--c021d13057ac478344701a71.md) | 100 | `result-track:c021d13057ac478344701a71bc7ebd1d8a5dc22163ef683191d66c9853f9d68d` |
| 17 | `lemma` | [uzpow_add](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-add--67438f1319fcb70738747985.md) | 103 | `result-track:67438f1319fcb70738747985e1cc2fea5e173803e43d01ccb2e35fc0763de15a` |
| 18 | `lemma` | [uzpow_sub](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-sub--b6648d1adfa9efca0491c86c.md) | 111 | `result-track:b6648d1adfa9efca0491c86ccf3c0be618981b756ebbbe9d058a0fd674e08bd4` |
| 19 | `lemma` | [uzpow_neg](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-neg--4da9bdf2ece1daaa062674ee.md) | 114 | `result-track:4da9bdf2ece1daaa062674eecd7502166e649d234a9c5b6e280ab67ae81d7e99` |
| 20 | `lemma` | [uzpow_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/IntUnitsPower/Variant96e14c5ff7055434a1c302f19515af87fa1cb1b42c9448f04022f6cd873fb5d6.lean/declarations/uzpow-intcast--21e8dde5e0e18595ccc9cde4.md) | 117 | `result-track:21e8dde5e0e18595ccc9cde43a865cc7d1fcf2f59bb47635d0e2b49769e01ed1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
