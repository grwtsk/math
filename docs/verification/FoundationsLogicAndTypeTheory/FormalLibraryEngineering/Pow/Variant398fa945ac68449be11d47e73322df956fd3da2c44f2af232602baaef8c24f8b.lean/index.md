# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pow.Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81fd4a51cbfd1ca3ed32889890fddabdfa5b6005",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81fd4a51cbfd1ca3ed32889890fddabdfa5b6005`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natCast_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/natcast-pow--40ccfa3a9b298994cb1157c5.md) | 22 | `result-track:40ccfa3a9b298994cb1157c5afae37c170caeaa75ed36bf523236ed451014cfb` |
| 2 | `theorem` | [negSucc_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/negsucc-pow--ed0123342a10adc65424f47d.md) | 24 | `result-track:ed0123342a10adc65424f47dcba5aa42f11953f213338aff78917a83b6c53c01` |
| 3 | `theorem` | [pow_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-zero--e81ede1da1c33c9480524600.md) | 26 | `result-track:e81ede1da1c33c94805246008b9c6440054376fe1ed6d4417b3039588b38d056` |
| 4 | `theorem` | [pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-succ--5568899a6ef7d2f0293be05f.md) | 28 | `result-track:5568899a6ef7d2f0293be05fd9d1954a154ec1c60769ae82b94842f4b67c4473` |
| 5 | `theorem` | [pow_succ'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-succ--ae2a416e145c394d22507fb3.md) | 35 | `result-track:ae2a416e145c394d22507fb35f2c1e6a577eec5782c8ad09d632ee8c1e9834a0` |
| 6 | `theorem` | [pow_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-add--2f140e5e1dfd6fb7b7681736.md) | 38 | `result-track:2f140e5e1dfd6fb7b7681736a4f3a04f6c4069101b27ded225e61ec31341ac89` |
| 7 | `theorem` | [zero_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/zero-pow--07a6cd92c002c44acd18e4e7.md) | 43 | `result-track:07a6cd92c002c44acd18e4e79f02167419da5bbf9516d3f2ad91914e2838cee8` |
| 8 | `theorem` | [one_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/one-pow--441365b88969de036a70b47e.md) | 47 | `result-track:441365b88969de036a70b47ef5b37755e7a2bddf39a7ddbc9e89616137cea51f` |
| 9 | `theorem` | [mul_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/mul-pow--da49c286d1036f13201adbed.md) | 50 | `result-track:da49c286d1036f13201adbedf3fbab78dc0364038618ca7986ce8045caedd7b2` |
| 10 | `theorem` | [pow_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-one--32d3cc518ef005bde24a64f9.md) | 57 | `result-track:32d3cc518ef005bde24a64f97e6c9c8a9def4282a4e455064a9c840471b4c167` |
| 11 | `theorem` | [pow_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-mul--5956214d6046e9a5221d2d5d.md) | 60 | `result-track:5956214d6046e9a5221d2d5ddc4f638bb709c2d24c0e4932d7b3795fd92bc891` |
| 12 | `theorem` | [pow_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-pos--3a4820b3699b9204bb34a7f6.md) | 66 | `result-track:3a4820b3699b9204bb34a7f6ffff751145239029aa298d7c14dc398583f4397c` |
| 13 | `theorem` | [pow_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-nonneg--3f65eedd853b3acce80983a7.md) | 73 | `result-track:3f65eedd853b3acce80983a78c057ff11e6eba395b30de3ecf1993ffa1b32c4b` |
| 14 | `theorem` | [pow_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-ne-zero--368193112b8e8f14cd0c947c.md) | 80 | `result-track:368193112b8e8f14cd0c947c26e38dc1cb7c99f51b08a95f63401c9d208703a3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/instance--8479772ba80c98c123e6ec1e.md) | 87 | `declaration-track:8479772ba80c98c123e6ec1e6a4437c10f697e13c250ea8431792cc987c3fb2c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/instance--8e177306ea4ad51c2fb1ba0e.md) | 89 | `declaration-track:8e177306ea4ad51c2fb1ba0e73729895cc2bfe8fa1d56b889ba9a036524c6e39` |
| 17 | `theorem` | [two_pow_pred_sub_two_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/two-pow-pred-sub-two-pow--4302e9f8f4cd31ba438fa206.md) | 92 | `result-track:4302e9f8f4cd31ba438fa2067f0d301f6e3918b957a38edd4187cfbd8260fd7c` |
| 18 | `theorem` | [two_pow_pred_sub_two_pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/two-pow-pred-sub-two-pow--3c2929997bb06fcc3e8a238f.md) | 98 | `result-track:3c2929997bb06fcc3e8a238fdc33aae872994fe60abe982d2e70430681f84112` |
| 19 | `theorem` | [pow_lt_pow_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-lt-pow-of-lt--a645841145aa50444831dd82.md) | 104 | `result-track:a645841145aa50444831dd820151e04efa01e0c9339b99770d69961554cab976` |
| 20 | `theorem` | [natAbs_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/natabs-pow--0ef697115d2259d53c450504.md) | 111 | `result-track:0ef697115d2259d53c45050429469dff4c874b71ece1aec050a36767b210c445` |
| 21 | `theorem` | [toNat_pow_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/tonat-pow-of-nonneg--83165a77342e249a4aab511e.md) | 115 | `result-track:83165a77342e249a4aab511ed80880e0cdf435e00cba32d0fa55bf42c3678917` |
| 22 | `theorem` | [sq_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/sq-nonneg--32ed853d34a5fcb027b7f36f.md) | 121 | `result-track:32ed853d34a5fcb027b7f36fb9dff776621c193d20082ae768057ed1bb0de416` |
| 23 | `theorem` | [sq_nonnneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/sq-nonnneg--f32dcc8dd44f7b94cf512a10.md) | 128 | `result-track:f32dcc8dd44f7b94cf512a10cd0c77ce6f494fd66a322e760162e4e3d5764251` |
| 24 | `theorem` | [pow_nonneg_of_even](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/pow-nonneg-of-even--39187b75d12eceaa29ed75cd.md) | 130 | `result-track:39187b75d12eceaa29ed75cdd4ea67df75be9e68bb13b2b1c56d3609d719e6fd` |
| 25 | `theorem` | [neg_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pow/Variant398fa945ac68449be11d47e73322df956fd3da2c44f2af232602baaef8c24f8b.lean/declarations/neg-pow--2631478d2caeab4e4a5c7005.md) | 135 | `result-track:2631478d2caeab4e4a5c70059489a42006e2d99eb565f9483df8e7289f73303b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
