# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b3c3365e871bff3bc474b387ad735b916df19ec",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b3c3365e871bff3bc474b387ad735b916df19ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SplitIfs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulZeroClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mulzeroclass--2b64b704417c9d926f622351.md) | 41 | `declaration-track:2b64b704417c9d926f62235156b502cd668d44a458278f15f1ecd1b66a6c4234` |
| 2 | `class` | [IsLeftCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isleftcancelmulzero--0dee6cbe98be391abdf7373f.md) | 48 | `declaration-track:0dee6cbe98be391abdf7373f747ce9cf8a577b08b374b86b3c414a43b646c459` |
| 3 | `theorem` | [mul_left_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-left-cancel--713dad4e61b9640a8a0822e5.md) | 56 | `result-track:713dad4e61b9640a8a0822e5a082cf6efcc36a9f6dab69581ddd13ddc701a878` |
| 4 | `theorem` | [mul_right_injective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-right-injective--dfc49f8d96c4ff6741f69cbb.md) | 59 | `result-track:dfc49f8d96c4ff6741f69cbb95f434cb3e16f0cb5d7acec2abe806f0fcd46802` |
| 5 | `class` | [IsRightCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isrightcancelmulzero--9a3e731c9337a7a4c393d407.md) | 65 | `declaration-track:9a3e731c9337a7a4c393d4071ce823132d61d00a0fe4fe1a431b4215c19f3fe2` |
| 6 | `theorem` | [mul_right_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-right-cancel--9f24847f4a7bd546e8c23f44.md) | 73 | `result-track:9f24847f4a7bd546e8c23f4472123707275af7b507ef2c380368ac85d09bf199` |
| 7 | `theorem` | [mul_left_injective₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-left-injective--759a9090fda4c5961102eb05.md) | 76 | `result-track:759a9090fda4c5961102eb0577b1d5230f7a8f7e48ee1f1faf1e091e6f58025a` |
| 8 | `class` | [IsCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/iscancelmulzero--54c3ef4bb231deb6755758a9.md) | 82 | `declaration-track:54c3ef4bb231deb6755758a90db7104368734bb5a36cefcd382539dbc6cf5d7a` |
| 9 | `class` | [NoZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/nozerodivisors--33001880661560eafc7b8252.md) | 90 | `declaration-track:33001880661560eafc7b8252c9e80c5f6464b9ae9d74da462aff176696b2f6cc` |
| 10 | `class` | [SemigroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/semigroupwithzero--4d26f62ef18bcb23c04a53b1.md) | 97 | `declaration-track:4d26f62ef18bcb23c04a53b1a13de3dcc9df1dd131332764b0c23848cfd42ce7` |
| 11 | `class` | [MulZeroOneClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mulzerooneclass--cac7ba1a02ab1e40bcec396f.md) | 100 | `declaration-track:cac7ba1a02ab1e40bcec396f3eb779f5b2b02bed469f04d965bd3bca11690a8d` |
| 12 | `class` | [MonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/monoidwithzero--975df5eae98a55e0dc6f4ddc.md) | 104 | `declaration-track:975df5eae98a55e0dc6f4ddc6af57a268a36337a153e399c81f2bf90261d39ea` |
| 13 | `theorem` | [pow_mul_apply_eq_pow_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/pow-mul-apply-eq-pow-mul--38a87cd1d76737560c9477a6.md) | 111 | `result-track:38a87cd1d76737560c9477a672a7329420718107dc79f629e9acfb7fbb9f343a` |
| 14 | `class` | [CancelMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/cancelmonoidwithzero--6a75643f5dbee27f09592871.md) | 122 | `declaration-track:6a75643f5dbee27f0959287114d971890079c058c623a6c5743657cc954d3bbf` |
| 15 | `class` | [CommMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/commmonoidwithzero--ee7f7e1d3137fb8465b5c0e6.md) | 126 | `declaration-track:ee7f7e1d3137fb8465b5c0e6ae0970390edf2911cbc3082ae9a952bb67916fa6` |
| 16 | `theorem` | [mul_left_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-left-inj--227ecbeb50f260c9efd1b538.md) | 132 | `result-track:227ecbeb50f260c9efd1b538e0b1a4f05d8231381fb23511d99ef4b1cf7c4b93` |
| 17 | `theorem` | [mul_right_inj'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-right-inj--fe8a194b533cf1b43f5878ed.md) | 135 | `result-track:fe8a194b533cf1b43f5878edc770ecdefac168512e9767c68bda5e11924f4a1c` |
| 18 | `lemma` | [IsLeftCancelMulZero.to_isRightCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isleftcancelmulzero-to-isrightcancelmulzero--279d7e4aa47b122aba4b363e.md) | 144 | `result-track:279d7e4aa47b122aba4b363e4f614ded2df4281bcddd6c990fe97bb616c7724e` |
| 19 | `lemma` | [IsRightCancelMulZero.to_isLeftCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isrightcancelmulzero-to-isleftcancelmulzero--645dda110f7d886545cbe35d.md) | 149 | `result-track:645dda110f7d886545cbe35db4940a581387bf3fa8cbd6c18995177fb4e68a65` |
| 20 | `lemma` | [IsLeftCancelMulZero.to_isCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isleftcancelmulzero-to-iscancelmulzero--6caf90589df42fc5095a3fbc.md) | 154 | `result-track:6caf90589df42fc5095a3fbc718795e2415073064c3851e60e8151225e48fba1` |
| 21 | `lemma` | [IsRightCancelMulZero.to_isCancelMulZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/isrightcancelmulzero-to-iscancelmulzero--b321b1c16533f83568394718.md) | 158 | `result-track:b321b1c16533f8356839471823c9957a50995f3da768d7a8403a61e22e3835a0` |
| 22 | `class` | [CancelCommMonoidWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/cancelcommmonoidwithzero--9a3b220cb71dfc5cc6791a97.md) | 167 | `declaration-track:9a3b220cb71dfc5cc6791a970265088b973f8052784f2a6b5f452d38e1c98660` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/instance--244f4e3d09b4b267763e14ac.md) | 172 | `declaration-track:244f4e3d09b4b267763e14ac2f384a006b2c5774d3c6e2c85ac3f869863ae747` |
| 24 | `class` | [MulDivCancelClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/muldivcancelclass--0c1661ad72e2074db134006f.md) | 180 | `declaration-track:0c1661ad72e2074db134006fba683072a7936463b98c3c1e84ec6f84b1f4c8ad` |
| 25 | `lemma` | [mul_div_cancel_right₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-div-cancel-right--8f42905850877a3eeb24bd96.md) | 186 | `result-track:8f42905850877a3eeb24bd96bedf6616e5e52d38edd4920f112ac7c3ff3ff808` |
| 26 | `lemma` | [mul_div_cancel_left₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-div-cancel-left--5b982be306b81f88ebe76c29.md) | 194 | `result-track:5b982be306b81f88ebe76c29b962f4c07f1b5e3f0c2464325450ab17685b2dfc` |
| 27 | `class` | [GroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/groupwithzero--6f836bba0f30657bf1b9ef6d.md) | 205 | `declaration-track:6f836bba0f30657bf1b9ef6d43772128a271421a7dfda13b9d1485ec3d05b3d0` |
| 28 | `lemma` | [inv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/inv-zero--6db31c0cdc9d430b1f18d93b.md) | 214 | `result-track:6db31c0cdc9d430b1f18d93b1226da8646b1c1cb021a2119b649d250b2a961fc` |
| 29 | `lemma` | [mul_inv_cancel₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-inv-cancel--b7ffc01f63e1c1e87378f71c.md) | 217 | `result-track:b7ffc01f63e1c1e87378f71cdfc9406f39c538342f7d3aaff4a1ced9752fc754` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/instance--bc4628657e5d78b929a3e730.md) | 220 | `declaration-track:bc4628657e5d78b929a3e7300616e3f90a2d85f16f263ebf42b3e67b63e2196b` |
| 31 | `class` | [CommGroupWithZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/commgroupwithzero--797314c9619958eff8fa796c.md) | 229 | `declaration-track:797314c9619958eff8fa796cf1b7039d8f755b5309d52c98363ca12f991c57ef` |
| 32 | `lemma` | [eq_zero_or_one_of_sq_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/eq-zero-or-one-of-sq-eq-self--9ed133b1829ba921c51cccc9.md) | 234 | `result-track:9ed133b1829ba921c51cccc99a7d632e0463e391f73c25bc627f83df85172fdb` |
| 33 | `theorem` | [mul_inv_cancel_right₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-inv-cancel-right--9a62ff7dc9a483437bb396e5.md) | 244 | `result-track:9a62ff7dc9a483437bb396e518cdea0daa3efa78a4d1804ba9f0d2bc54eaf49d` |
| 34 | `theorem` | [mul_inv_cancel_left₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-inv-cancel-left--add59be0149f8c97df02e9fa.md) | 250 | `result-track:add59be0149f8c97df02e9fa3e1dbe524c0e3796bcb8d0045ca52e94d9dcb546` |
| 35 | `theorem` | [mul_eq_zero_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero-of-left--7713008bcde780d52296c02b.md) | 261 | `result-track:7713008bcde780d52296c02b85d7a0317f304f2099936b704b365d47cfadf5be` |
| 36 | `theorem` | [mul_eq_zero_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero-of-right--90171be067d8dd1aa88c34fa.md) | 263 | `result-track:90171be067d8dd1aa88c34fa2b191e02c5247e68e9b87cde5f8bc1230278a3eb` |
| 37 | `theorem` | [mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero--bd538098e9bfa02e7b87ce83.md) | 270 | `result-track:bd538098e9bfa02e7b87ce83bda1df14ad42dd766d172ed44ca77d6260480166` |
| 38 | `theorem` | [zero_eq_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/zero-eq-mul--ed28cf293a0ca58eb5ba97a1.md) | 277 | `result-track:ed28cf293a0ca58eb5ba97a1eb25572fdf607b46e410843d287ec7b596e342c8` |
| 39 | `theorem` | [mul_ne_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-ne-zero-iff--674331702e2eb309e31f0f45.md) | 281 | `result-track:674331702e2eb309e31f0f45b63c203c52aa69b55c2eed5b320bda1f9b6d08a0` |
| 40 | `theorem` | [mul_eq_zero_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero-comm--8cf73887d6627dd907fb3ac5.md) | 285 | `result-track:8cf73887d6627dd907fb3ac5d5641dea9cb345f695b9c638a8933455bd256616` |
| 41 | `theorem` | [mul_ne_zero_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-ne-zero-comm--90c9a5fc71f0165316a1a03b.md) | 290 | `result-track:90c9a5fc71f0165316a1a03bd6c55a22329044ec349e629577135d2fdac6b2e4` |
| 42 | `theorem` | [mul_self_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-self-eq-zero--c392972c3ded037f60d45bb9.md) | 292 | `result-track:c392972c3ded037f60d45bb98baae9d8fee5da1feb02b006b481efd85964b0e3` |
| 43 | `theorem` | [zero_eq_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/zero-eq-mul-self--6789a1255611b34792923c8d.md) | 294 | `result-track:6789a1255611b34792923c8d610151aa63ee9465c6fff0baf1cc3863a7003aff` |
| 44 | `theorem` | [mul_self_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-self-ne-zero--839e7da87feb16c2bc5a0e7d.md) | 296 | `result-track:839e7da87feb16c2bc5a0e7d372ec621e0b2e3ead095ad7bc3964ca5bc13c95d` |
| 45 | `theorem` | [zero_ne_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/zero-ne-mul-self--d0bfa16b9a070fc106a1a4bf.md) | 298 | `result-track:d0bfa16b9a070fc106a1a4bfa2b92ad262fcba84f9db8b010b0afbf4b0392c25` |
| 46 | `theorem` | [mul_eq_zero_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero-iff-left--a986bf3375032a2c2af8c82b.md) | 300 | `result-track:a986bf3375032a2c2af8c82b449890dd7c6a6ee2550ca8c5b76d816119674021` |
| 47 | `theorem` | [mul_eq_zero_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-eq-zero-iff-right--43b99b04935fe22bc4ae4338.md) | 302 | `result-track:43b99b04935fe22bc4ae4338c583608d0b00193bd2e429b4b0072feb98fffe31` |
| 48 | `theorem` | [mul_ne_zero_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-ne-zero-iff-left--bf1ecc40bac24eb46b2a9243.md) | 304 | `result-track:bf1ecc40bac24eb46b2a92438b533069ee0511cdc51bdd73b5b66b054e5265e1` |
| 49 | `theorem` | [mul_ne_zero_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant709c45b130e954d526a70c07209e28b35f285fb089fad77586bbcfaacf9b4de9.lean/declarations/mul-ne-zero-iff-right--6cc43c2cc0e98ddac14a6294.md) | 306 | `result-track:6cc43c2cc0e98ddac14a6294655e174ad21fc68e80553eb27b8a66762b864303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
