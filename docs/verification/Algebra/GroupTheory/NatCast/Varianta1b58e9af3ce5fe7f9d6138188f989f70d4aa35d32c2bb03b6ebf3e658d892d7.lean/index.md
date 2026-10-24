# Verification target: GRWTSK.Algebra.GroupTheory.NatCast.Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "750c4bc5519a8a57a41b75a020c07435b429b461",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `750c4bc5519a8a57a41b75a020c07435b429b461`.

Source path: `GRWTSK/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.ZeroLEOne` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lt_add_one](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/lt-add-one--921dd62978914fa75f3e88b3.md) | 28 | `result-track:921dd62978914fa75f3e88b32a04ac0b2a1cc1ceedf1764b9e1c62a3daa1166a` |
| 2 | `lemma` | [lt_one_add](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/lt-one-add--6ffc1cd654fd7d5be1ccff93.md) | 33 | `result-track:6ffc1cd654fd7d5be1ccff93fd8f50dc6d07af4972cd14d39d673b607c0474a9` |
| 3 | `lemma` | [zero_le_two](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-le-two--6ea66061e0e648b762c7e633.md) | 40 | `result-track:6ea66061e0e648b762c7e633959d64182824196f5d082bf1b79532a80d5c3a05` |
| 4 | `lemma` | [zero_le_three](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-le-three--62a2f382cc0d56f9ae2a870d.md) | 46 | `result-track:62a2f382cc0d56f9ae2a870d0f060a3ba1b517758be0bf8243c9aad5e577eab0` |
| 5 | `lemma` | [zero_le_four](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-le-four--a9a8f4610775a82581db19a4.md) | 52 | `result-track:a9a8f4610775a82581db19a4dcd7464fca73a33f018c5caeaed60651b653b625` |
| 6 | `lemma` | [one_le_two](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/one-le-two--137f309070ab37ded0c27c57.md) | 58 | `result-track:137f309070ab37ded0c27c579a9de91b014a965b5916d979ad64295d497421bc` |
| 7 | `lemma` | [one_le_two'](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/one-le-two--0b220a153ccb012667e60e70.md) | 65 | `result-track:0b220a153ccb012667e60e700c99175846a1a838e7bef0e39a9ac20a230f9732` |
| 8 | `lemma` | [zero_lt_two](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-two--3b54c9eb297990ca03acb5b8.md) | 79 | `result-track:3b54c9eb297990ca03acb5b8b17b1269b0108f62ce878b447361072ea5861cdc` |
| 9 | `lemma` | [zero_lt_three](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-three--f1cc4aaee688bc9f30a5718b.md) | 83 | `result-track:f1cc4aaee688bc9f30a5718b5ead98bec319adba1e843a20cbc7d462edc57a4d` |
| 10 | `lemma` | [zero_lt_four](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-four--718914c5f0d7b1312700d212.md) | 89 | `result-track:718914c5f0d7b1312700d21237c0f564c841016d7db8a89d034470fcf07cd9f1` |
| 11 | `lemma` | [zero_lt_two'](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-two--96468045413921af7313c6ca.md) | 97 | `result-track:96468045413921af7313c6ca74d50b25469700d1c5ccaef9ce3ac7b61a611a97` |
| 12 | `lemma` | [zero_lt_three'](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-three--8bb7067033c711791cbecdc0.md) | 101 | `result-track:8bb7067033c711791cbecdc0524f86d38f02aa5f6736a8c55cd6980055583333` |
| 13 | `lemma` | [zero_lt_four'](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zero-lt-four--9fcdcfa29f2b635e0467d885.md) | 105 | `result-track:9fcdcfa29f2b635e0467d88554be0a967777cb30d39c51e7152b0b596cd71022` |
| 14 | `instance` | [ZeroLEOneClass.neZero.two](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zeroleoneclass-nezero-two--d70e0f00809e42d019684ec8.md) | 108 | `declaration-track:d70e0f00809e42d019684ec8ca3e9f9552a2007e0b443995809435e9d9aaad58` |
| 15 | `instance` | [ZeroLEOneClass.neZero.three](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zeroleoneclass-nezero-three--917d68682244f26d1acf5a47.md) | 109 | `declaration-track:917d68682244f26d1acf5a47e4c50c009143fc11be3e24f8aabad864a396e489` |
| 16 | `instance` | [ZeroLEOneClass.neZero.four](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/zeroleoneclass-nezero-four--fb19e3f58d65266b38d7f73e.md) | 110 | `declaration-track:fb19e3f58d65266b38d7f73e3813ff70fc9e51d803a348a325780699b6f437ca` |
| 17 | `lemma` | [one_lt_two](../../../../../mathematics/Algebra/GroupTheory/NatCast/Varianta1b58e9af3ce5fe7f9d6138188f989f70d4aa35d32c2bb03b6ebf3e658d892d7.lean/declarations/one-lt-two--27794a8f4340bc7a6bcb6860.md) | 114 | `result-track:27794a8f4340bc7a6bcb68608ffb7e5ac009812730ef84143adf369a81e274fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
