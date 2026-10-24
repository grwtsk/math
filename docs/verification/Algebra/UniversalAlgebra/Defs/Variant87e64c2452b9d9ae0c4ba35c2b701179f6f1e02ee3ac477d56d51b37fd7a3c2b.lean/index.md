# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8304a8009ba8086645107d3a0ac404e8a2b62eaa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8304a8009ba8086645107d3a0ac404e8a2b62eaa`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/isorderedaddmonoid--0a2dfeb2ab11e4caeb5a3611.md) | 23 | `declaration-track:0a2dfeb2ab11e4caeb5a3611e0f4b6e97b0f4cde1a25fd1d8b1b9fe4a1c9c157` |
| 2 | `class` | [IsOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/isorderedmonoid--b87e0807f92ba47c5442e896.md) | 30 | `declaration-track:b87e0807f92ba47c5442e896d5640006eac107acd9f97b704ddfd6d0ef4df756` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/instance--3c757835cc75f119338ea6b8.md) | 39 | `declaration-track:3c757835cc75f119338ea6b866673b537826ba6c23889c3c8d074df317b62fe9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/instance--7cc07147a83aeb36113bb8dd.md) | 43 | `declaration-track:7cc07147a83aeb36113bb8dd3de74115b1c436be3c4fcf839a7fcabe894b95b0` |
| 5 | `class` | [IsOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/isorderedcanceladdmonoid--09e0eb207e4c4a189b94c4ae.md) | 50 | `declaration-track:09e0eb207e4c4a189b94c4ae47cf2a39ae4917872f1cb3c00dcf2b3193727bfd` |
| 6 | `class` | [IsOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/isorderedcancelmonoid--9062e39f7bc049a1cd1f60da.md) | 59 | `declaration-track:9062e39f7bc049a1cd1f60daa36b0e9dd270b1eace93cbf78e7495e8521e6a8c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/instance--4342d75f4c761c54fd4460e1.md) | 70 | `declaration-track:4342d75f4c761c54fd4460e18e7e5712700de16cbca92448598a26e3248f60f4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/instance--b3afefe2eaa91df7436caf18.md) | 75 | `declaration-track:b3afefe2eaa91df7436caf18dccf66f806b4807d28ae0f946690a7a4874e8da4` |
| 9 | `theorem` | [IsOrderedCancelMonoid.toMulRightReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/isorderedcancelmonoid-tomulrightreflectlt--90a994b77c6f27a5c1e1e0ee.md) | 80 | `result-track:90a994b77c6f27a5c1e1e0ee69c7a6c9bc8aa576d0db617017b8123413bd2ce5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/instance--8214958c150ac4a2c4188c19.md) | 86 | `declaration-track:8214958c150ac4a2c4188c19dfe0955af9efdaec495b552f145ad4522d3cf933` |
| 11 | `structure` | [OrderedAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/orderedaddcommmonoid--093519c3b7b410103983b9f8.md) | 98 | `declaration-track:093519c3b7b410103983b9f8e780e254a0e24dd441bbc96cb1cb73e2c05a0ee6` |
| 12 | `structure` | [OrderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/orderedcommmonoid--52d9587a8883886b7f26c28d.md) | 107 | `declaration-track:52d9587a8883886b7f26c28d4a8c37d4973164558cbe10c6c339f16ca8ed72af` |
| 13 | `structure` | [OrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/orderedcanceladdcommmonoid--7123a0d528391221c583a96a.md) | 115 | `declaration-track:7123a0d528391221c583a96a7a2ec54c56fcefd4e0a3115f83e14225a7b19a0c` |
| 14 | `structure` | [OrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/orderedcancelcommmonoid--f6bf8a8c7e48d2a089d0fb65.md) | 125 | `declaration-track:f6bf8a8c7e48d2a089d0fb65e4a0d785d20e198e436db0030b5ef7652a21ee95` |
| 15 | `structure` | [LinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/linearorderedaddcommmonoid--2886f1466f1c403b89ff02f7.md) | 132 | `declaration-track:2886f1466f1c403b89ff02f71e176dfa86127af3812787b8e6c930d66216a2fa` |
| 16 | `structure` | [LinearOrderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/linearorderedcommmonoid--ab5f0fa5a57a8b39d86b3a62.md) | 140 | `declaration-track:ab5f0fa5a57a8b39d86b3a62ddc6e5892e28634a71b501b9f1609ae61921a775` |
| 17 | `structure` | [LinearOrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/linearorderedcanceladdcommmonoid--28e293e9210cec7e70d0691d.md) | 147 | `declaration-track:28e293e9210cec7e70d0691da3f24a0fb5ddb7c084f837d2e8b4fb9b81f2a35f` |
| 18 | `structure` | [LinearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/linearorderedcancelcommmonoid--bd0a25c4a3893ec74b2a4a28.md) | 157 | `declaration-track:bd0a25c4a3893ec74b2a4a28d28a9489f2a081c8b48d74cf59eeebd841fa1f55` |
| 19 | `theorem` | [one_le_mul_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/one-le-mul-self-iff--8e9adfe44ecb0fcf81b5767a.md) | 169 | `result-track:8e9adfe44ecb0fcf81b5767aa451438b2e52e28196b13128987c4544904d65c2` |
| 20 | `theorem` | [one_lt_mul_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/one-lt-mul-self-iff--efa410680e9586684c930b70.md) | 173 | `result-track:efa410680e9586684c930b7089cb022e57ab9b729ebc82f7ca6ffb486fa6ea43` |
| 21 | `theorem` | [mul_self_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/mul-self-le-one-iff--46cf54611f83e28590d2c6a9.md) | 177 | `result-track:46cf54611f83e28590d2c6a92594192c3d8ca85504ee1a22e91f9887f55f2df7` |
| 22 | `theorem` | [mul_self_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant87e64c2452b9d9ae0c4ba35c2b701179f6f1e02ee3ac477d56d51b37fd7a3c2b.lean/declarations/mul-self-lt-one-iff--3aa719a1ba9a535210ea3eb0.md) | 180 | `result-track:3aa719a1ba9a535210ea3eb003684cbcf70fc887968df3305d59ddf261c6b35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
