# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Address.Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9a25d329aa299ef17c16ebccf0755e4702c68c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9a25d329aa299ef17c16ebccf0755e4702c68c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SequentialPrimeSpecification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/sequentialprimespecification--417596345f6092993dc36c04.md) | 17 | `declaration-track:417596345f6092993dc36c04b2d6a84ce773c4ee69c96406acb1d588485e0a7a` |
| 2 | `def` | [rank](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/rank--0ba2ed8eace517f073dc6d64.md) | 26 | `declaration-track:0ba2ed8eace517f073dc6d64d958d5dc922ccade2fcce0cf5485c4ca14abceac` |
| 3 | `structure` | [PrimeEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/primeenumeration--f141b482bfce7b21597070c8.md) | 30 | `declaration-track:f141b482bfce7b21597070c8e4bf05cffc6be6ac7669b515edf399b992c6a534` |
| 4 | `def` | [cantorPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/cantorpair--f85df8fbec2e886a22079f4c.md) | 38 | `declaration-track:f85df8fbec2e886a22079f4cdff2b2c3b36f873ea62822c7874d5616299119ef` |
| 5 | `def` | [finiteSequenceCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/finitesequencecode--bbe290c2dff2a89964fd3c1e.md) | 42 | `declaration-track:bbe290c2dff2a89964fd3c1e3679d45fae2ff7024d3f90d8e3e52bc4724bc00a` |
| 6 | `def` | [specificationCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/specificationcode--463c225661814dcd04e5b6a7.md) | 47 | `declaration-track:463c225661814dcd04e5b6a79eae6cbd22adbb7201677847ca5f57048a0ad8d2` |
| 7 | `structure` | [FiberCoordinate](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/fibercoordinate--7253d26c932ed85c37642a0b.md) | 52 | `declaration-track:7253d26c932ed85c37642a0b87b3b26729ca537e0b32335d8fb536e252decc6b` |
| 8 | `def` | [mixedRadixValues](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/mixedradixvalues--afa0d0879c2caaef00e1c6d2.md) | 60 | `declaration-track:afa0d0879c2caaef00e1c6d2ac6b30c3a9dedfbc13adf9a4261af0ad1f942192` |
| 9 | `def` | [FiberCoordinate.mixedRadix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/fibercoordinate-mixedradix--7e3ec4e46931715424a6a55a.md) | 67 | `declaration-track:7e3ec4e46931715424a6a55a8a358c503a2f851d31757c66c58f1f7b518285cf` |
| 10 | `structure` | [MixedRadixEquivalence](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/mixedradixequivalence--30776549f9f35d2541748f60.md) | 75 | `declaration-track:30776549f9f35d2541748f6069dfa03bcb650c46bc669247e786ef6c454a5e60` |
| 11 | `structure` | [RawCarrierAddress](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/rawcarrieraddress--e800efcedac2ddccf9fc9f72.md) | 84 | `declaration-track:e800efcedac2ddccf9fc9f7228a6f8ab3645092d480810172a30db71e64513f1` |
| 12 | `def` | [rawAddressCode](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/rawaddresscode--873058a50ec7dc7c639381d6.md) | 91 | `declaration-track:873058a50ec7dc7c639381d6e8e7f08f26a0490454d14b70fe8726a60b74e799` |
| 13 | `structure` | [AddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/addressenumeration--2ad0308cf295faef5787bd7c.md) | 100 | `declaration-track:2ad0308cf295faef5787bd7c9e91fb6170dcf7139ac0e1ab7e8d3779128cd138` |
| 14 | `def` | [rawAddressEquivNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/rawaddressequivnat--e0dd1ef76b01f183ae933903.md) | 108 | `declaration-track:e0dd1ef76b01f183ae933903c0ac9ad6214fcfd77179af45631dd35b864f71ae` |
| 15 | `def` | [rawAddressEnumeration](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Address/Variant41446b876ededa0333a5d78c915bb2839ee2eceb62dff636649d3cf6a62d5a53.lean/declarations/rawaddressenumeration--658d1d5b7937329c1164b3ce.md) | 124 | `declaration-track:658d1d5b7937329c1164b3ce925ee7b9888bed8605de37eb3bba195076631fef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
