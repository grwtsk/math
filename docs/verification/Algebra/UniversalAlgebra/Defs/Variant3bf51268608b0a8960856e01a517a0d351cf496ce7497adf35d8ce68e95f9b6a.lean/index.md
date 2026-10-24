# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e76df72ddf85eded6632af981be37826277815e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e76df72ddf85eded6632af981be37826277815e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/isorderedaddmonoid--15d1f5222f74078cbb0b137d.md) | 31 | `declaration-track:15d1f5222f74078cbb0b137dd46837a806b99f1e9faa968f92e07d79c9821a1b` |
| 2 | `class` | [IsOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/isorderedmonoid--49f24134a1f7e0cf89a3213f.md) | 38 | `declaration-track:49f24134a1f7e0cf89a3213fe51e802f06005defb561be942480403127dbe486` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/instance--0c704494f47871de138025b7.md) | 47 | `declaration-track:0c704494f47871de138025b77aebed308b1330649b6a15b77f4dcd18d3648c04` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/instance--d55c3e69eb7e2adad9a15e2c.md) | 51 | `declaration-track:d55c3e69eb7e2adad9a15e2cdf3f2758bd598ffe1f4fbe8a092390554bfafe0a` |
| 5 | `class` | [IsOrderedCancelAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/isorderedcanceladdmonoid--f3ae10cc97205f65fdce5b1f.md) | 58 | `declaration-track:f3ae10cc97205f65fdce5b1f948475ce5176b546b36d677057cd1127a5eaea5a` |
| 6 | `class` | [IsOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/isorderedcancelmonoid--5b895f0a2ea4cf7af9b9bba8.md) | 67 | `declaration-track:5b895f0a2ea4cf7af9b9bba86398f09437645347a268a64b0410ef5cf2b5dcb8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/instance--27b052af6b2e4c52e4842c2a.md) | 78 | `declaration-track:27b052af6b2e4c52e4842c2ad7ddfdb0f2edd24d7a521eb6be151bcd231b36e4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/instance--ffda60b6f949fe0098d03830.md) | 83 | `declaration-track:ffda60b6f949fe0098d038305a4aa8c7c2e31668a0b4948f2a68e22d152ef72e` |
| 9 | `theorem` | [IsOrderedCancelMonoid.toMulRightReflectLT](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/isorderedcancelmonoid-tomulrightreflectlt--c493618ed7b8fcbf6202c369.md) | 88 | `result-track:c493618ed7b8fcbf6202c36997fa895ef1305fa67346543c341678464d92b4e2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/instance--08ca84b05982bd3d3f485a15.md) | 94 | `declaration-track:08ca84b05982bd3d3f485a151193205e7f8f7c5c71214e0704f1307dddd10881` |
| 11 | `structure` | [OrderedAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/orderedaddcommmonoid--bd6293b5843505e964470bfd.md) | 106 | `declaration-track:bd6293b5843505e964470bfd10dfa58fe7b0251ce820f36098edaee3419bc064` |
| 12 | `structure` | [OrderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/orderedcommmonoid--177e316ea341aa2940a8f895.md) | 115 | `declaration-track:177e316ea341aa2940a8f895a10342b2eaba21a0a609017ca1172064dd20d74a` |
| 13 | `structure` | [OrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/orderedcanceladdcommmonoid--90f9fc4c93744217de393fcf.md) | 123 | `declaration-track:90f9fc4c93744217de393fcfe616d7175509b98a526cbd53dbdfe308baa42753` |
| 14 | `structure` | [OrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/orderedcancelcommmonoid--9930b026ac110028b47ea4d0.md) | 133 | `declaration-track:9930b026ac110028b47ea4d06642d7c73a387c0de07c38a309a2a4232cafd626` |
| 15 | `structure` | [LinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/linearorderedaddcommmonoid--119b24fa444b0819799efd5b.md) | 140 | `declaration-track:119b24fa444b0819799efd5b0ac943f877378433f1c917211789cd550a391d50` |
| 16 | `structure` | [LinearOrderedCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/linearorderedcommmonoid--66ce52563017455366c69f29.md) | 148 | `declaration-track:66ce52563017455366c69f292ec2a3a3723326de0cc7b6b9b66ff670924f7768` |
| 17 | `structure` | [LinearOrderedCancelAddCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/linearorderedcanceladdcommmonoid--90d9c74d043a9315b434bf1e.md) | 155 | `declaration-track:90d9c74d043a9315b434bf1e61faa50e13cef723c54ff0ab263387c41c737784` |
| 18 | `structure` | [LinearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/linearorderedcancelcommmonoid--0a567f182be3338429a62a81.md) | 165 | `declaration-track:0a567f182be3338429a62a8168b5ef3a64045ac93d9e935511c13c4bc1c8f179` |
| 19 | `theorem` | [one_le_mul_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/one-le-mul-self-iff--4ac6cfcb5794b7d7a1e3699d.md) | 177 | `result-track:4ac6cfcb5794b7d7a1e3699d1aea52404c30fc8f56f2ad41b0ec0d4266e0b544` |
| 20 | `theorem` | [one_lt_mul_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/one-lt-mul-self-iff--1c50e7093aebb432e6554540.md) | 181 | `result-track:1c50e7093aebb432e65545403d8a4035fcec43ce6966369a30435c60d053a1b9` |
| 21 | `theorem` | [mul_self_le_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/mul-self-le-one-iff--371602591d450b7e355c2f21.md) | 185 | `result-track:371602591d450b7e355c2f21edf8368434796fa55b4719720cec3f4360780283` |
| 22 | `theorem` | [mul_self_lt_one_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant3bf51268608b0a8960856e01a517a0d351cf496ce7497adf35d8ce68e95f9b6a.lean/declarations/mul-self-lt-one-iff--19e47b5093a662b3b29aa9ff.md) | 188 | `result-track:19e47b5093a662b3b29aa9ff188897b2734c1f1e44af7425976153d1941e8d0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
