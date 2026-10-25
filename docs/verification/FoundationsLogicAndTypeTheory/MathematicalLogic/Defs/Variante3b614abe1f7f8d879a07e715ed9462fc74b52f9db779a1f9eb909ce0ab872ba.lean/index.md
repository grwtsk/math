# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f96b5be8a232aefb8206c4e0fcfe83ac28dcd25",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f96b5be8a232aefb8206c4e0fcfe83ac28dcd25`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/countable--0d36fc84df05a127485965cc.md) | 44 | `declaration-track:0d36fc84df05a127485965ccafca2b5466e8f0f5f94e92b7eda2f92c23dd0ef1` |
| 2 | `lemma` | [Countable.exists_injective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/countable-exists-injective-nat--7a3f080bb094a15005fa4fd5.md) | 48 | `result-track:7a3f080bb094a15005fa4fd56fcc1c4867c7a73540be10579bfb814af383ed19` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--316e3cedf77ebd00055bb9ee.md) | 51 | `declaration-track:316e3cedf77ebd00055bb9eec1c22365a74e88dc32a72b6ee2c4a7929345866f` |
| 4 | `theorem` | [Function.Injective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/function-injective-countable--0199b4c145a560f73650ff50.md) | 56 | `result-track:0199b4c145a560f73650ff50dd874f62b64c471bc935205b326124861a8ad8ff` |
| 5 | `theorem` | [Function.Surjective.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/function-surjective-countable--ba16e8acb46cc1bc3980bdc1.md) | 61 | `result-track:ba16e8acb46cc1bc3980bdc1d5428af0f0ae3d4beea74ef37ad3632ad51e8c3a` |
| 6 | `theorem` | [exists_surjective_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/exists-surjective-nat--1757dd499238096a57ecc9d4.md) | 65 | `result-track:1757dd499238096a57ecc9d4c3eab96d27cc48ab15705dc8b0595e16ecb75a6c` |
| 7 | `theorem` | [countable_iff_exists_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/countable-iff-exists-surjective--9979574463562202f044dd91.md) | 69 | `result-track:9979574463562202f044dd911c2348aa48e27634f79cdd599450c88de47e54fb` |
| 8 | `theorem` | [Countable.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/countable-of-equiv--10845b41bde447c88310d545.md) | 72 | `result-track:10845b41bde447c88310d545b9454c1561d4b1c5252799531bb1f3effa883994` |
| 9 | `theorem` | [Equiv.countable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/equiv-countable-iff--7d62e90d7381cab1d33f6c7a.md) | 75 | `result-track:7d62e90d7381cab1d33f6c7a82c9825755dc5e775ad2a076ab6435236bbc0ff0` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--2a2d81455c00113dd11c566c.md) | 78 | `declaration-track:2a2d81455c00113dd11c566c436615bc5c4bfe9bb590710e1ab28104f884b741` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--59a01db64ef8f68491aa161c.md) | 86 | `declaration-track:59a01db64ef8f68491aa161ce80ed8396f3083acf2ab3089eedfe4ab90274c6d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--826eac07663a759e4d328cf0.md) | 89 | `declaration-track:826eac07663a759e4d328cf0587af086a5c8b3620a618f138494b11215e94797` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--c8a6d40cdd666883a4c0cb16.md) | 92 | `declaration-track:c8a6d40cdd666883a4c0cb167f67e1983e97711ef1763df867d9b4123d997326` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--86edde1acd86fef1802ecceb.md) | 96 | `declaration-track:86edde1acd86fef1802eccebb5a58b24deeb759789bbeab882d888f672a1167d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--8b88fd36c709c520d63ba7b7.md) | 99 | `declaration-track:8b88fd36c709c520d63ba7b7573fb13d5f85e7ae38459794cd7d7390d1899ae3` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--f81daed2262c0447324aad67.md) | 103 | `declaration-track:f81daed2262c0447324aad67438bbe05b85748bc82b15ab0c328bc9eda63d598` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--5997f0b4d7054cac7c76e247.md) | 106 | `declaration-track:5997f0b4d7054cac7c76e247986c8d0b7fcc358ac59b2396bc147dc389ee0d4d` |
| 18 | `instance` | [Bool.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/bool-countable--274b78b2c29d4d864ebc77e7.md) | 109 | `declaration-track:274b78b2c29d4d864ebc77e7bb7fab8365b0ddde6fa6c2315db8b7c881408131` |
| 19 | `instance` | [Prop.countable'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/prop-countable--3a56661282ef5077f00519c6.md) | 112 | `declaration-track:3a56661282ef5077f00519c61baaf759707b4fbeb096d13628fa6cc571399bd2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--a6ff1018d66a43797b4e295c.md) | 115 | `declaration-track:a6ff1018d66a43797b4e295c7977b81ebd0008b62b9f767039c52400635ddad2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--0e80b5ab1917737d5604de7f.md) | 119 | `declaration-track:0e80b5ab1917737d5604de7f15df47c9463fabc02c96b3d65f6e53ab965c29ea` |
| 22 | `class` | [Uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/uncountable--6b1da2b5e9e9b7a18f62c496.md) | 128 | `declaration-track:6b1da2b5e9e9b7a18f62c4969eacbfd63e347dc3a9d8f1317ff893b7dfaa1545` |
| 23 | `lemma` | [not_uncountable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-uncountable-iff--bef52ba38c3827152df3d503.md) | 132 | `result-track:bef52ba38c3827152df3d5035e60ecb0243c84ac2eebd89f5f4a022c13dae6d3` |
| 24 | `lemma` | [not_countable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-countable-iff--296e1b0dda3e8963275e728c.md) | 135 | `result-track:296e1b0dda3e8963275e728c642df2461adea5ad537638cb8260773a089723a8` |
| 25 | `lemma` | [not_uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-uncountable--b9ccd973b9d4ef6360a96345.md) | 138 | `result-track:b9ccd973b9d4ef6360a963456c26c155d3bb1e1fded422a6da433bd92fce1daa` |
| 26 | `lemma` | [not_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-countable--d56f641ad74cb829dcf56b56.md) | 141 | `result-track:d56f641ad74cb829dcf56b56f60cbef5659bf3ade85d4167752b63c4a835ef01` |
| 27 | `theorem` | [Function.Injective.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/function-injective-uncountable--69f280270c54528798b5849f.md) | 143 | `result-track:69f280270c54528798b5849fb49c259e72f9d3c2d74f0a6a1e870b946654070f` |
| 28 | `theorem` | [Function.Surjective.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/function-surjective-uncountable--076972c9b6724b29ca044cd3.md) | 147 | `result-track:076972c9b6724b29ca044cd39b62d132d971861f4c787f5b121481b50ef47804` |
| 29 | `lemma` | [not_injective_uncountable_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-injective-uncountable-countable--2ca30cf01ecd4c0060c7af6a.md) | 150 | `result-track:2ca30cf01ecd4c0060c7af6aa2d606c5d4480f1284f33c151dba561cfd80a1ab` |
| 30 | `lemma` | [not_surjective_countable_uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/not-surjective-countable-uncountable--6f379753a9802282d96062d0.md) | 153 | `result-track:6f379753a9802282d96062d0c0f27fa16e9aa50698bd1d330ae248608bf90d11` |
| 31 | `theorem` | [uncountable_iff_forall_not_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/uncountable-iff-forall-not-surjective--03bc46adef22ab262fdc6860.md) | 157 | `result-track:03bc46adef22ab262fdc686012a9b0634aa23480987cb0ef89d92e9f366d6efa` |
| 32 | `theorem` | [Uncountable.of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/uncountable-of-equiv--5571e7eedbb02bf3c0bb53ba.md) | 161 | `result-track:5571e7eedbb02bf3c0bb53ba154781d36d9774438cf232187a0773e0013f46a4` |
| 33 | `theorem` | [Equiv.uncountable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/equiv-uncountable-iff--462b1fcb00fe9f271abf08fb.md) | 164 | `result-track:462b1fcb00fe9f271abf08fbe79f3db78607f4cf9dd5e8a4aa6062e55b814e55` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--df98108b38a1cedf1c2b616a.md) | 167 | `declaration-track:df98108b38a1cedf1c2b616a68c4e0aa267691c31e48f90ec3f4c78fd350bf16` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--b890a2e5fb0ea53caddc534e.md) | 170 | `declaration-track:b890a2e5fb0ea53caddc534e70ff95fc411ef31c8911fded3d72a720bb9cd4fd` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variante3b614abe1f7f8d879a07e715ed9462fc74b52f9db779a1f9eb909ce0ab872ba.lean/declarations/instance--cdb9dd27a7d4989087b7c083.md) | 173 | `declaration-track:cdb9dd27a7d4989087b7c083c7c0a650488990e3d96fffd5ac8c2b497ad5513d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
